package com.cs.rest.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.cs.rest.bean.Data2Device;
import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;
import com.cs.rest.bean.ShowData;
import com.cs.rest.dao.DeviceDao;
import com.cs.rest.service.DeviceService;
import com.cs.rest.service.impl.DeviceServiceImpl;
import com.cs.rest.util.HibernateUtil;
import com.cs.rest.util.DateUtil;

public class DeviceDaoImpl implements DeviceDao{

	
	@Override
	public List<DeviceFaultInfo> getRecInfo() {
		/*
		 * 设置设备故障状态,true,false表示
		 */
		/*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, -7);//一周
		date = ca.getTime();*/
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        List<DeviceFaultInfo> dfi = null;
        String date = DateUtil.getPreDay();
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "from DeviceFaultInfo d where d.beginTime >='" + date + "' ";    
         Query query = s.createQuery(hql);    
         query.setCacheable(true); // 设置缓存    
         dfi = query.list();    
         t.commit();  
        }catch(Exception err){  
        t.rollback();  
        err.printStackTrace();  
        }finally{  
        s.close();  
        }  
        return dfi; 
        
	}

	@Override
	public List<Product> getProductName() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        List<Product> products = null;  
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "from Product p";    
         Query query = s.createQuery(hql);    
         query.setCacheable(true); // 设置缓存    
         products = query.list();    
         t.commit();  
        }catch(Exception err){  
        t.rollback();  
        err.printStackTrace();  
        }finally{  
        s.close();  
        }  
        return products;
	}

	@Override
	public Data2Device getDeviceInfo(int dataId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        Data2Device deviceInfo = null;  
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "FROM Data2Device d WHERE d.dataId = '" + dataId + "'";
         Query query = s.createQuery(hql);    
         query.setCacheable(true); // 设置缓存    
         deviceInfo = (Data2Device) query.uniqueResult();    
         t.commit();  
        }catch(Exception err){  
        t.rollback();  
        err.printStackTrace();  
        }finally{  
        s.close();  
        }  
        return deviceInfo;
	}
	
	@Override
	public List<Data2Device> getDeviceInfo() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        List<Data2Device> deviceInfo = null;  
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "FROM Data2Device d";
         Query query = s.createQuery(hql);    
         query.setCacheable(true); // 设置缓存    
         deviceInfo = query.list();    
         t.commit();  
        }catch(Exception err){  
        t.rollback();  
        err.printStackTrace();  
        }finally{  
        s.close();  
        }  
        return deviceInfo;
	}

	@Override
	public List<DeviceFaultInfo> getFaultInfo(int productId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        List<DeviceFaultInfo> dfi = null;  
        String date = DateUtil.getPreDay();
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "from DeviceFaultInfo d where d.productId = '" + productId + "' and d.beginTime >='" + date + "'";    
         Query query = s.createQuery(hql);    
         query.setCacheable(true); // 设置缓存    
         dfi = query.list();    
         t.commit();  
        }catch(Exception err){  
        t.rollback();  
        err.printStackTrace();  
        }finally{  
        s.close();  
        }  
        return dfi;
	}

	@Override
	public List<ShowData> getData(int productId, int dataId, String start, String limit) {
	
		/*DeviceService ds = new DeviceServiceImpl();
		String dataName = ds.getDataName(dataId);*/
		String dataName = getDeviceInfo(dataId).getDataName();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        List<ShowData> data = null;  
        String date = DateUtil.getPreDay();
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "SELECT new com.cs.rest.bean.ShowData(s.date, s." + dataName + ") FROM SensorData s WHERE s.date >= '" + start + "' AND s.date <= '" 
 				+ limit + "' AND s.productId = '" + productId + "' ORDER BY s.date ASC"; 
         Query query = s.createQuery(hql);    
         query.setCacheable(true); // 设置缓存    
         data = query.list();    
         t.commit();  
        }catch(Exception err){  
        t.rollback();  
        err.printStackTrace();  
        }finally{  
        s.close();  
        }  
        return data;
	}
	
	
}
