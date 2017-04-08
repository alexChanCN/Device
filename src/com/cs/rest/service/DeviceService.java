package com.cs.rest.service;

import java.util.Date;
import java.util.List;

import com.cs.rest.bean.Data2Device;
import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.ShowDeviceStatus;

public interface DeviceService {

	public List<ShowDeviceStatus> getDeviceStatus();  						//获取设备故障状态
	public void setDeviceName(ShowDeviceStatus status, int dataId);			//设置对应Device	
	public List<DeviceFaultInfo> getFaultInfo(int productId); 				//获取对应ProductId的故障记录
	public String getDataName(int dataId); 									//获取对应DataId的数据在数据库中的属性名
	public List<Object> getData(int productId, int dataId, String start, String limit); //获取对应时间内，一个产品的对应数据集
}
