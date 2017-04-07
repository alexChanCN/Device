package com.cs.rest.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BeanUtil {
	private static ApplicationContext context;
	static {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
	}

	public static Object getBean(String name) {
		return context.getBean(name);
	}
}
