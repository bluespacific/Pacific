package com.concourse.controller;

import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.opencsv.CSVReader;

@RestController
public class HelloWorldController {
	
	@RequestMapping("/helloworldconcourse")
	public String getHelloWorldMessage(){
		System.out.println("Hi, This is Sample Application illustrating Concourse");
		
		Map<String,String> map = new HashMap();
		
		try{
			ClassLoader classLoader = getClass().getClassLoader();
			File file = new File(classLoader.getResource("InputFile.csv").getFile());
			CSVReader inputLine = new CSVReader(new FileReader(file.getAbsolutePath()));
			String[] newLine = null;
			while(null != (newLine = inputLine.readNext())){
				System.out.println("NewLine:"+newLine[0]+":"+newLine[1]);
				map.put(newLine[0], newLine[1]);
				map.put(newLine[0], newLine[2]);
				map.put(newLine[0], newLine[3]);
				map.put(newLine[0], newLine[4]);
				System.out.println("Map:"+map.toString());
			}
				
		}catch(Exception ex){
			System.out.println("In Exception");
			ex.printStackTrace();
		}
		
		return "Hi, This is Sample Application illustrating Concourse";
		
	}

}
