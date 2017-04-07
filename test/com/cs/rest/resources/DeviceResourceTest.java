package com.cs.rest.resources;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cs.rest.service.DeviceService;
import com.cs.rest.service.impl.DeviceServiceImpl;

public class DeviceResourceTest {

	DeviceService ds = new DeviceServiceImpl();
	@Test
	public void test() {
		System.out.println(ds.getDeviceStatus());
	}

}
