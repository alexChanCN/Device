package com.cs.rest.bean;

import static org.junit.Assert.*;

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
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class DeviceStatusTest {
	
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
	public void test() {
		Map<String,ArrayList<String>> m = new HashMap<String,ArrayList<String>>();
	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, -7);//一周
		date = ca.getTime();
		
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from DeviceFaultInfo d where d.beginTime >='" + sdf.format(date) +
				//"' and d.beginTime <= current_date()");
				"' ");
		List<DeviceFaultInfo> dfi =  query.list();
		for(DeviceFaultInfo d : dfi){
			System.out.println(d.getProductId());
			System.out.println(d.getDataId());
		}
		session.getTransaction().commit();		
		
		
		
	}
	
	@Test
	public void test2() {
		/*
		 * 设置设备故障状态,true,false表示
		 */
		List<ShowDeviceStatus> statusList = new ArrayList<ShowDeviceStatus>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, -7);//一周
		date = ca.getTime();
		
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from DeviceFaultInfo d where d.beginTime >='" + sdf.format(date) +
				"' ");
		List<DeviceFaultInfo> dfi =  query.list();
		session.getTransaction().commit();	
		
		for(DeviceFaultInfo d : dfi){
			//System.out.println("id:" + d.getId() + " productId:" + d.getProductId() + " dataId:" + + d.getDataId());
			int flag = 0;   //标记已存的statusList是否存在相同productId
			for(ShowDeviceStatus status : statusList){
				if(status.getProductId() == d.getProductId()){
					flag = 1;
					int dataId = d.getDataId();
					if(dataId == 1)
						status.setStorageLiquid(true);
					else if(dataId == 2)
						status.setStoragePressure(true);
					else if(dataId == 3)
						status.setGasifyPressure(true);
					else if(dataId == 4)
						status.setGasifyTemperature(true);
					else if(dataId >= 5 &&  dataId <= 8)
						status.setGasFlow1(true);
					else if(dataId >= 22 &&  dataId <= 23)
						status.setGPS(true);
					else if(dataId >= 24 &&  dataId <= 33)
						status.setMassFlow(true);
					else if(dataId == 34)
						status.setCarLiquid(true);
					else if(dataId == 35)
						status.setCarPressure(true);
					else if(dataId >= 36 &&  dataId <= 38)
						status.setWeighFlow(true);
					else if(dataId >= 39 &&  dataId <= 42)
						status.setGasFlow2(true);
					else if(dataId == 43)
						status.setZBOX(true);
				}
			}
			
			if(flag == 0){
				ShowDeviceStatus temp = new ShowDeviceStatus();
				
				int id = d.getProductId();
				Query query2 = session.createQuery("select p.name from Product p where p.id ='" + id + "' ");
				String name = (String) query2.uniqueResult();				
				//String name = names.get(0);	
				temp.setProductId(d.getProductId());
				temp.setProductName(name);
				temp.setCarLiquid(true);
				statusList.add(temp);
			}
				
		}
		
		for(ShowDeviceStatus status : statusList){	
			System.out.println("-------------------------------------");
			System.out.println("ProductId:  " + status.getProductId());
			System.out.println("ProductName:  " + status.getProductName());
			System.out.println("StorageLiquid:  " + status.isStorageLiquid());
			System.out.println("StoragePressure:  " + status.isStoragePressure());
			System.out.println("GasifyPressure:  " + status.isGasifyPressure());
			System.out.println("GasifyTemperature:  " + status.isGasifyTemperature());
			System.out.println("GPS:  " + status.isGPS());
			System.out.println("MassFlow:  " + status.isMassFlow());
			System.out.println("carLiquid:  " + status.isCarLiquid());
			System.out.println("CarPressure:  " + status.isCarPressure());
			System.out.println("WeighFlow:  " + status.isWeighFlow());
			System.out.println("GasFlow2:  " + status.isGasFlow2());
			System.out.println("ZBOX:  " + status.isZBOX());
		}
			
		
	}
	
	@Test
	public void test3() {
		int id = 1;
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("select p.name from Product p where p.id ='" + id + "' ");
		List<String> products = query.list();
		String name = products.get(0);
		System.out.println(name);
		session.getTransaction().commit();		
		
		
		
	}
	
	
}
