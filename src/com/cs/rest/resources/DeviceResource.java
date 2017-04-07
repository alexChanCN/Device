package com.cs.rest.resources;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;

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
}
