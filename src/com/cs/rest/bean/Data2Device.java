package com.cs.rest.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Data2Device{

	private int id;
	private int deviceId;
	private int dataId;
	private String dataName;
	private String deviceName;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getDeviceId() {
		return deviceId;
	}
	public void setDeviceId(int deviceId) {
		this.deviceId = deviceId;
	}
	public int getDataId() {
		return dataId;
	}
	public void setDataId(int dataId) {
		this.dataId = dataId;
	}
	public String getDataName() {
		return dataName;
	}
	public void setDataName(String dataName) {
		this.dataName = dataName;
	}
	public String getDeviceName() {
		return deviceName;
	}
	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}
	
	
	
	/*private int storageLiquid;          //储罐液位计
	private int storagePressure;        //储罐压力计
	private int gasifyPressure;			//气化后压力计
	private int gasifyTemperature;		//气化后温度计
	private int gasFlow1;				//气态流量计1
	private int GPS;					
	private int massFlow;				//质量流量计
	private int carLiquid;				//槽车液位计
	private int carPressure;			//槽车压力计
	private int weighFlow;				//称重流量计
	private int gasFlow2;				//气态流量计2
	private int ZBOX;*/
	
	
	
}
