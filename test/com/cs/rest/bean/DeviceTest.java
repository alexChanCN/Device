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
	public void add(){
		Session session = sf.openSession();
		session.beginTransaction();
		Data2Device d = new Data2Device();
		d.setDataId(22);
		d.setDeviceId(111);
		session.save(d);
		session.getTransaction().commit();
		session.close();
	}
	@Test
	public void testQueryDevice(){
		int dataId = 3;
		int deviceId;
		Session session = sf.openSession();
		session.beginTransaction();
		List<Data2Device> devices = session.createQuery("from Data2Device d").list();
		for(Data2Device device : devices){
			System.out.println(device.getDataId() + "   " + device.getDeviceId());
			/*if(device.getDataId() == dataId)
				deviceId = device.getDeviceId();*/
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
