package com.cs.rest.bean;

import static org.junit.Assert.*;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
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

		/*Query q = s.createQuery("SELECT s.date, s." + dataName +" FROM SensorData s WHERE s.date >= '" + starttime + "' AND s.date <= '" 
				+ limittime + "' AND s.productId = '" + productId + "' ORDER BY s.date ASC");*/
		Query q = s.createQuery("SELECT new com.cs.rest.bean.ShowData(s.date, s." + dataName + ") FROM SensorData s WHERE s.date >= '" + starttime + "' AND s.date <= '" 
				+ limittime + "' AND s.productId = '" + productId + "' ORDER BY s.date ASC");
		
		List<ShowData> sds = q.list();
		for(ShowData sd : sds)
		{
			System.out.println(sd.getTime());
			System.out.println(sd.getData());
			
		}
		s.getTransaction().commit();
			
	}
	@Test
	public void testMethod() throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException{
		SensorData s = new SensorData();
        List<String> list = new ArrayList<String>();

        list.add("getId");
        list.add("getDate");
 
        
        for (String str : list) {

            Method method = s.getClass().getMethod(str, new Class[0]);
            System.out.println(str + "():  Get Value is   " + method.invoke(s, new Object[0]));
        }
    }
	
		
	
	//
}
