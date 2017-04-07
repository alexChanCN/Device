package com.cs.rest.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;

public class DeviceServiceImplTest {

	private DeviceServiceImpl dsi = new DeviceServiceImpl();
	@Test
	public void test() {
		dsi.getDeviceStatus();
	}

}
