package com.cs.rest.bean;

import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class DeviceTest {

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
	public void testQueryDevice(){
		int dataId = 3;
		String deviceName;
		Session session = sf.openSession();
		session.beginTransaction();
		Query q = session.createQuery("from Device d");
		List<Device> devices = (List<Device>)q.list();
		for(Device device : devices){
			if(device.getDataId() == dataId)
				deviceName = device.getDeviceName();
		}			
		//String name = devices.get(0).getDeviceName();
		//System.out.println(name);		
		/*for(Device d : devices) {
			System.out.println(d.getDeviceName());
		}*/
		session.getTransaction().commit();
		session.close();
	}
	
	
	
		/*	
		storagePressure;        
		gasifyPressure;			
		gasifyTemperature;		
		gasFlow1;				
		GPS;					
		massFlow;				
		carLiquid;				
		carPressure;			
		weighFlow;				
		gasFlow2;				
		ZBOX;*/
			
}
