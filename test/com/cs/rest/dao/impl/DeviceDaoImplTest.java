package com.cs.rest.dao.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.cs.rest.bean.DeviceFaultInfo;

public class DeviceDaoImplTest {

	DeviceDaoImpl dao = new DeviceDaoImpl();
	@Test
	public void test() {
		List<DeviceFaultInfo> dfi = dao.getRecInfo();
		for(DeviceFaultInfo d : dfi)
			System.out.println(d.getId());
	}

}
