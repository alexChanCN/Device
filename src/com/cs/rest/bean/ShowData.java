package com.cs.rest.bean;

import java.util.Date;

public class ShowData {

	private Date time;
	private Object data;

	public ShowData(Date time, Object data) {
		super();
		this.time = time;
		this.data = data;
		
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	
	
	
	
	
	
	
}
