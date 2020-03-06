package com.hsm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/product1", method = RequestMethod.GET)
	public void product1() throws Exception {
		
	System.out.println("prodct  이동");
		
		
		
	}
	

	
}

































