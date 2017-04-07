package com.cs.rest.dao;

import java.util.List;

import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;

public interface DeviceDao {

	public List<DeviceFaultInfo> getRecInfo();  	//获取一周内设备故障信息
	public List<Product> getProductName();  		//获取产品名称	
	
}
