package com.cs.rest.service;

import java.util.List;

import com.cs.rest.bean.ShowDeviceStatus;

public interface DeviceService {

	public List<ShowDeviceStatus> getDeviceStatus();  	//获取设备故障状态
	public void setDeviceName(ShowDeviceStatus status, int dataId);				//设置对应Device		
}
