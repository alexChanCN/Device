package com.cs.rest.dao.impl;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;

import com.cs.rest.bean.Data2Device;
import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.ShowData;

public class DeviceDaoImplTest {

	DeviceDaoImpl dao = new DeviceDaoImpl();
	@Test
	public void test() {
		List<DeviceFaultInfo> dfi = dao.getRecInfo();
		for(DeviceFaultInfo d : dfi)
			System.out.println(d.getId());
	}
	
	@Test
	public void testGetDeviceInfo() {
		Data2Device device = dao.getDeviceInfo(2);
			System.out.println(device.getDataId() + "   " + device.getDataName() + " " 
		+ device.getDeviceId() + "   " + device.getDeviceName());
	}
	
	
	@Test
	public void testGetProductIdInfo() {
		List<DeviceFaultInfo> dfi = dao.getFaultInfo(1);
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
	public void testGetData() {
		String start = "2016-12-04 16:28:40";
		String limit = "2016-12-04 16:28:50";
		
		List<ShowData> data = dao.getData(1, 1, start, limit);
		for(ShowData d : data)
			System.out.println(d.getTime() + ":" + d.getData());
	}

}
