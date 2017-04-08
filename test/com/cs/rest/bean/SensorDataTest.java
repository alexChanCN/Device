package com.cs.rest.bean;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class SensorDataTest {

	private static SessionFactory sf;
	
	@BeforeClass
	public static void beforeClass() {
			sf = new AnnotationConfiguration().configure().buildSessionFactory();
	}
	@AfterClass
	public static void afterClass() {
		sf.close();
	}
	
	@Test
	public void test(){

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String dateTime = sdf.format(date);
		System.out.println(dateTime);
	
	}

	@Test
	public void testAdd(){

		SensorData sd = new SensorData();
		sd.setFireDetector("111");
		Session s = sf.getCurrentSession();
		s.beginTransaction();	
		s.save(sd);
		s.getTransaction().commit();
			
	}
	@Test
	public void testGet(){

	
		Session s = sf.getCurrentSession();
		s.beginTransaction();	
		Query q = s.createQuery("from SensorData s");
		List<SensorData> ss = q.list();
		for(SensorData sd : ss)
		{
			System.out.println(sd.getId());
		}
		s.getTransaction().commit();
			
	}
	
	@Test
	public void testGet2(){

		int productId = 1;
		String dataName = "outValve1";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String starttime = "2016-12-03";
		String limittime = "2017-12-04";
		Session s = sf.getCurrentSession();
		s.beginTransaction();

		Query q = s.createQuery("SELECT s." + dataName +" FROM SensorData s WHERE s.date >= '" + starttime + "' AND s.date <= '" 
				+ limittime + "' AND s.productId = '" + productId + "' ORDER BY s.date ASC");	
		
		List<Object> ss = q.list();
		for(Object sd : ss)
		{
			System.out.println(sd);
		}
		s.getTransaction().commit();
			
	}
	//
}
