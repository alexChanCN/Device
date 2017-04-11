package com.cs.rest.service.impl;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.rest.bean.Data2Device;
import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;
import com.cs.rest.bean.ShowData;
import com.cs.rest.bean.ShowDeviceStatus;
import com.cs.rest.dao.DeviceDao;
import com.cs.rest.service.DeviceService;

@Service
public class DeviceServiceImpl implements DeviceService{

	@Autowired
	private DeviceDao deviceDao;
	

	
	@Override
	public List<ShowDeviceStatus> getDeviceStatus() {
		List<DeviceFaultInfo> dfi =  deviceDao.getRecInfo();
		List<Product> products = deviceDao.getProductName();
		List<ShowDeviceStatus> statusList = new ArrayList<ShowDeviceStatus>();
		for(DeviceFaultInfo d : dfi){							//遍历故障信息表(deviceFaultInfo),将1周内故障信息进行汇总
			boolean flag = false;   							//标记已存的statusList是否存在相同productId
			for(ShowDeviceStatus status : statusList){			//遍历当前设备状态列表
				if(status.getProductId() == d.getProductId()){	
				setDeviceStatus(status, d.getDataId());			//如果列表已存在该产品状态,设置当前产品其他设备状态
				flag = true;
				}
			}
			
			if(!flag){				//未遍历到
				ShowDeviceStatus temp = new ShowDeviceStatus();	//新建一个设备状态			
				int id = d.getProductId();
				for(Product p : products){
					if(p.getId() == id){
						temp.setProductId(id);
						temp.setProductName(p.getName());
						setDeviceStatus(temp, id);
						statusList.add(temp);
						break;
					}					
				}			
			}
				
		}
			
		return statusList;
	}
		/*	动态获得get方法
		    Method method = status.getClass().getMethod("getProductName", new Class[0]);
			System.out.println("getProductName(): Get Value is " + method.invoke(status, new Object[0]));
		*/
	@Override
	public void setDeviceStatus(ShowDeviceStatus status, int dataId){
		String deviceName = null;
		List<Data2Device> table = deviceDao.getDeviceInfo();
		deviceName = getDevice(table, dataId).getDeviceName();
		if(deviceName != null){
			PropertyDescriptor pd;
			Method setMethod;
			try {
				pd = new PropertyDescriptor(deviceName, status.getClass());
				setMethod = pd.getWriteMethod();
				setMethod.invoke(status, true);
			} catch (IntrospectionException e) {
				e.printStackTrace();
			} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
				e.printStackTrace();
			}
		}
				
	}
	/*@Override
	public void setDeviceName(ShowDeviceStatus status, int dataId) {
		if(dataId == 1)
			status.setStorageLiquid(true);
		else if(dataId == 2)
			status.setStoragePressure(true);
		else if(dataId == 3)
			status.setGasifyPressure(true);
		else if(dataId == 4)
			status.setGasifyTemperature(true);
		else if(dataId >= 5 &&  dataId <= 8)
			status.setGasFlow1(true);
		else if(dataId >= 22 &&  dataId <= 23)
			status.setGPS(true);
		else if(dataId >= 24 &&  dataId <= 33)
			status.setMassFlow(true);
		else if(dataId == 34)
			status.setCarLiquid(true);
		else if(dataId == 35)
			status.setCarPressure(true);
		else if(dataId == 43)
			status.setZBOX(true);	
		else 
			System.out.println("no device to dataId");
	}*/
	@Override
	public List<DeviceFaultInfo> getFaultInfo(int productId) {
		
		return deviceDao.getFaultInfo(productId);
	}

	@Override
	public List<ShowData> getData(int productId, int dataId, String start, String limit) {
		// TODO Auto-generated method stub
		return deviceDao.getData(productId, dataId, start, limit);
	}

	@Override
	public Data2Device getDevice(List<Data2Device> table, int dataId) {
		
		for(Data2Device d : table){
			if(d.getDataId() == dataId)
				return d;
		}
		return null;
		
	}




}
