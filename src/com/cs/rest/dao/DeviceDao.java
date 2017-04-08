package com.cs.rest.dao;

import java.util.Date;
import java.util.List;

import com.cs.rest.bean.Data2Device;
import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;

public interface DeviceDao {

	public List<DeviceFaultInfo> getRecInfo();  					//获取一周内设备故障信息
	public List<Product> getProductName();  						//获取产品名称
	public List<Data2Device> getData2Device(); 						//获取数据对应设备的Id
	public List<DeviceFaultInfo> getFaultInfo(int productId); 		//获取对应ProductId的故障记录
	public List<Object> getData(int productId, int dataId, String start, String limit); //获取对应时间内，一个产品的对应数据集
}
