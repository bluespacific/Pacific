package com.concourse.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
	
	@RequestMapping("/helloworldconcourse")
	public String getHelloWorldMessage(){
		System.out.println("Hi, This is Sample Application illustrating Concourse");
		return "Hi, This is Sample Application illustrating Concourse";
		
	}

}
