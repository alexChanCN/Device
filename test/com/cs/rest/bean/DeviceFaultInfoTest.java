package com.cs.rest.bean;

import static org.junit.Assert.*;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class DeviceFaultInfoTest {

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
	public void testAdd(){
		DeviceFaultInfo dfi = new DeviceFaultInfo();
		
		for(int i = 1; i <= 2; i ++){
			
			dfi.setProductId(i);
			for(int j = 1; j <= 10; j ++){
			Session s = sf.getCurrentSession();
			s.beginTransaction();
			dfi.setDataId(j);
			dfi.setBeginTime(new Date());
			dfi.setOverTime(new Date());
			dfi.setFaultTybe(1);
			dfi.setUpdateMan("cs");
			dfi.setUpdateTime(null);
			s.save(dfi);
			s.getTransaction().commit();
			
			}
		}

	}
	
	@Test
	public void testGetPreDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c = Calendar.getInstance();  
		c.add(Calendar.DATE, - 7);  
		Date monday = c.getTime();
		String preMonday = sdf.format(monday);
		System.out.println(preMonday);
	}
	
	@Test
	public void testGet(){
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, -7);//一周
		date = ca.getTime();
		
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from DeviceFaultInfo d where d.beginTime >='" + sdf.format(date) +
				"' and d.beginTime <= current_date()");

		List<DeviceFaultInfo> dfi =  query.list();
		for(DeviceFaultInfo d : dfi){
			System.out.println(d.getProductId());		
			System.out.println(d.getDataId());
		}
		session.getTransaction().commit();		
		
	}
	
	@Test
	public void testSchemaExport() {
		new SchemaExport(new AnnotationConfiguration().configure()).create(false, true);
	}
	
	public static void main(String[] args) {
		beforeClass();
	}

}
