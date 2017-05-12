package com.application.concourse.concourse;

import junit.framework.Assert;
import org.junit.Test;
import com.concourse.controller.HelloWorldController;


/**
 * This is a test call for HelloWorldController
 * @author Prashant Ranjan
 */
public class HelloWorldControllerTest  {

	@Test
	public void testHelloWorldController(){
		String expectedMessage = "Hi, This is Sample Application illustrating Concourse";
		HelloWorldController controller = new HelloWorldController();
		String acutalMessage = controller.getHelloWorldMessage();
		Assert.assertEquals(expectedMessage, acutalMessage);
	}
}
