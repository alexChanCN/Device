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

import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;
import com.cs.rest.dao.DeviceDao;
import com.cs.rest.util.HibernateUtil;

public class DeviceDaoImpl implements DeviceDao{

	@Override
	public List<DeviceFaultInfo> getRecInfo() {
		/*
		 * 设置设备故障状态,true,false表示
		 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, -7);//一周
		date = ca.getTime();
		
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();   
        Session s = null;  
        Transaction t = null;  
        List<DeviceFaultInfo> dfi = null;  
        try{  
         s = sessionFactory.openSession();  
         t = s.beginTransaction();  
         String hql = "from DeviceFaultInfo d where d.beginTime >='" + sdf.format(date) + "' ";    
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
	
	
}
