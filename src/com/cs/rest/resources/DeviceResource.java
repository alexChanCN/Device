package com.cs.rest.resources;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;

import com.cs.rest.bean.DeviceFaultInfo;
import com.cs.rest.bean.ShowDeviceStatus;
import com.cs.rest.service.DeviceService;
import com.cs.rest.service.impl.DeviceServiceImpl;

@Path("/device")
public class DeviceResource {
	private static final Logger LOGGER = Logger.getLogger(DeviceResource.class.getName());
    
    //@Autowired
    private DeviceService deviceService = new DeviceServiceImpl();
    
    public DeviceResource() {
        LOGGER.fine("DeviceResource()");
    }
    
    @GET
    @Path("/getAllErrorDevice")
    @Produces(MediaType.APPLICATION_JSON)
    public List<ShowDeviceStatus> getDeviceStatus(){
    	List<ShowDeviceStatus> status = new ArrayList<ShowDeviceStatus>();
    	status = deviceService.getDeviceStatus();	
    	return status;
    	
    }
    
    @GET
    @Path("getErrorDeviceInfo/{productId}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<DeviceFaultInfo> getErrorDeviceInfo(@PathParam("productId") int productId){
    	List<DeviceFaultInfo> status = new ArrayList<DeviceFaultInfo>();
    	status = deviceService.getFaultInfo(productId);	
    	return status;
    	
    }
    
    @GET
    @Path("getErrorDataInfo/{productId}/{dataId}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Object> getErrorDataInfo(@PathParam("productId") int productId, 
    		@PathParam("productId") int dataId, @QueryParam("start") String start, @QueryParam("limit") String limit){
    	List<Object> data = new ArrayList<Object>();
    	data = deviceService.getData(productId, dataId, start, limit);	
    	return data;
    	
    }
}
