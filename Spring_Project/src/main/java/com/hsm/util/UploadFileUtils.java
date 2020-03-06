package com.hsm.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	public static String uploadFile(String uploadPath,
									 String originalName,
									 byte[] fileData) throws Exception{
		UUID uid=UUID.randomUUID();
		String savedName=uid.toString()+"_"+originalName;
		String savedPath=calcPath(uploadPath);
		File target = new File(uploadPath + savedPath,savedName);
		FileCopyUtils.copy(fileData, target);
		
		String formatName=originalName.substring(originalName.lastIndexOf(".")+1);
		
		String uploadedFileName=null;
		if(MimeMediaUtil.getMediaType(formatName)!=null) {
			uploadedFileName = makeThumbnail(uploadPath,savedPath,savedName);
		}else {
			uploadedFileName=makeIcon(uploadPath,savedPath,savedName);
		}
		return uploadedFileName;
		
	}//uploadFile
	private static String calcPath(String uploadPath) {
		Calendar cal=Calendar.getInstance();
		System.out.println("cal="+cal);
	
		String yearPath=File.separator+cal.get(Calendar.YEAR); //2020 , seperator가 /이다.
		String monthPath=yearPath+File.separator+new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		//2020/01.(MonthPath)..month는 0부터 시작한다 따라서 플러스 1이다. 1월은 0, 2월은 1....
		String datePath=monthPath+File.separator+new DecimalFormat("00").format(cal.get(Calendar.DATE));
		//2020/01/07(datePath)
		makeDir(uploadPath,yearPath,monthPath,datePath);
		System.out.println(datePath);
		return datePath;
}
	private static void makeDir(String uploadPath,String ...paths) {
		if(new File(paths[paths.length-1]).exists()) {
			return;
		}
		for(String path:paths) {
			File dirPath = new File(uploadPath +path);
		if(! dirPath.exists()) {
			dirPath.mkdir();
		}
		}
		}//makeDir
	
	private static String makeThumbnail(String uploadPath,
										String path,
										String fileName) throws Exception{
	
		//bufferedImage: 원본이미지 -> 썸네일이미지(앞에 s붙어있음)
	BufferedImage sourceImg= ImageIO.read(new File(uploadPath+path,fileName));
	BufferedImage destImg=Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,100);	
	//썸네일이미지(앞에 s_붙어있음)
	String thumbnailName = uploadPath + path + File.separator +"s_"+fileName;
	File newFile= new File(thumbnailName);
	String formatName= fileName.substring(fileName.lastIndexOf(".")+1);
	ImageIO.write(destImg, formatName.toUpperCase(),newFile);
	return thumbnailName.substring(uploadPath.length()).replace(File.separator, "/");	
	}
	
	private static String makeIcon(String uploadPath,
									String path,
									String fileName) throws Exception{
		String iconName = uploadPath + path +File.separator+fileName;
		return iconName.substring(uploadPath.length()).replace(File.separatorChar,'/'
				);
		
		
	}
	
	
	
	
	}