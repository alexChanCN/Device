package com.cs.rest.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;

import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.Product;
import com.cs.rest.bean.ShowDeviceStatus;
import com.cs.rest.dao.DeviceDao;
import com.cs.rest.dao.impl.DeviceDaoImpl;
import com.cs.rest.service.DeviceService;

public class DeviceServiceImpl implements DeviceService{

	private DeviceDao deviceDao = new DeviceDaoImpl();
	@Override
	public List<ShowDeviceStatus> getDeviceStatus() {
		List<DeviceFaultInfo> dfi =  deviceDao.getRecInfo();
		List<Product> products = deviceDao.getProductName();
		List<ShowDeviceStatus> statusList = new ArrayList<ShowDeviceStatus>();
		for(DeviceFaultInfo d : dfi){
			//System.out.println("id:" + d.getId() + " productId:" + d.getProductId() + " dataId:" + + d.getDataId());
			boolean flag = false;   //标记已存的statusList是否存在相同productId
			for(ShowDeviceStatus status : statusList){
				if(status.getProductId() == d.getProductId()){
				setDeviceName(status, d.getDataId());
				flag = true;
				}
			}
			
			if(!flag){
				ShowDeviceStatus temp = new ShowDeviceStatus();				
				int id = d.getProductId();
				for(Product p : products){
					if(p.getId() == id){
						temp.setProductId(id);
						temp.setProductName(p.getName());
						temp.setCarLiquid(true);
						statusList.add(temp);
						break;
					}					
				}			
			}
				
		}
		
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
		
		return statusList;
	}
	@Override
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
		else if(dataId >= 36 &&  dataId <= 38)
			status.setWeighFlow(true);
		else if(dataId >= 39 &&  dataId <= 42)
			status.setGasFlow2(true);
		else if(dataId == 43)
			status.setZBOX(true);	
		else 
			System.out.println("no device to dataId");
	}


}
