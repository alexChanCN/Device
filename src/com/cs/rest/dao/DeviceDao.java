package com.cs.rest.dao;

import java.util.List;

import com.cs.rest.bean.Data2Device;
import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;
import com.cs.rest.bean.ShowData;

public interface DeviceDao {

	public List<DeviceFaultInfo> getRecInfo();  					//获取一周内设备故障信息
	public List<Product> getProductName();  						//获取产品名称
	
	public Data2Device getDeviceInfo(int dataId); 					//获取数据ID.对应设备Id,Name等
	public List<Data2Device> getDeviceInfo(); 						//获取data2device表，缓存到table中。避免重复查询数据库
	
	public List<DeviceFaultInfo> getFaultInfo(int productId); 		//获取对应ProductId的故障记录
	public List<ShowData> getData(int productId, int dataId, String start, String limit); //获取对应时间内，一个产品的对应数据集
}
