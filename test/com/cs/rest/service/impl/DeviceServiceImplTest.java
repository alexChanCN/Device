package com.cs.rest.service.impl;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.ShowDeviceStatus;

public class DeviceServiceImplTest {

	private DeviceServiceImpl dsi = new DeviceServiceImpl();
	@Test
	public void test() {
		List<ShowDeviceStatus> statusList = dsi.getDeviceStatus();
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
	public void test2() {
		List<DeviceFaultInfo> dfi =	dsi.getFaultInfo(1);
		for(DeviceFaultInfo d : dfi){	
			System.out.println("----------------------------");
			System.out.println(d.getId());
			System.out.println(d.getDataId());
			System.out.println(d.getProductId());
			System.out.println(d.getFaultTybe());
			System.out.println(d.getBeginTime());
			System.out.println(d.getOverTime());
			System.out.println(d.getUpdateMan());
			System.out.println(d.getUpdateTime());
		}
	}
	
	@Test
	public void test3() {
		String name = dsi.getDataName(2);
		
			System.out.println(name);
			
		
	}

	@Test
	public void test4(){
		
		String start = "2016-12-03";
		String limit = "2016-12-05";
			
		List<Object> data = dsi.getData(1, 1, start, limit);
		for(Object d : data)
			System.out.println(d);
		
	}
}
