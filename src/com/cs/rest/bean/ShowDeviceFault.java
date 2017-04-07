package com.cs.rest.bean;

import java.util.Date;

public class ShowDeviceFault {

	private int productId;					//产品ID
	private String productName;   			//产品名称
	private int dataId;               	//t_sensordata 数据id
	private Date beginTime;				//开始时间
	private Date overTime;				//结束时间
	private int faultTybe;				//错误类型
	private String updateMan;			//修改人
	private Date updateTime;			//修改时间
	
	private boolean storageLiquid;          //储罐液位计
	private boolean storagePressure;        //储罐压力计
	private boolean gasifyPressure;			//气化后压力计
	private boolean gasifyTemperature;		//气化后温度计
	private boolean gasFlow1;				//气态流量计1
	private boolean GPS;					
	private boolean massFlow;				//质量流量计
	private boolean carLiquid;				//槽车液位计
	private boolean carPressure;			//槽车压力计
	private boolean weighFlow;				//称重流量计
	private boolean gasFlow2;				//气态流量计2
	private boolean ZBOX;
	
	

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	public int getDataId() {
		return dataId;
	}
	public void setDataId(int dataId) {
		this.dataId = dataId;
	}
	public Date getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	public Date getOverTime() {
		return overTime;
	}
	public void setOverTime(Date overTime) {
		this.overTime = overTime;
	}
	public int getFaultTybe() {
		return faultTybe;
	}
	public void setFaultTybe(int faultTybe) {
		this.faultTybe = faultTybe;
	}
	
	public String getUpdateMan() {
		return updateMan;
	}
	public void setUpdateMan(String updateMan) {
		this.updateMan = updateMan;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public boolean isStorageLiquid() {
		return storageLiquid;
	}
	public void setStorageLiquid(boolean storageLiquid) {
		this.storageLiquid = storageLiquid;
	}
	public boolean isStoragePressure() {
		return storagePressure;
	}
	public void setStoragePressure(boolean storagePressure) {
		this.storagePressure = storagePressure;
	}
	public boolean isGasifyPressure() {
		return gasifyPressure;
	}
	public void setGasifyPressure(boolean gasifyPressure) {
		this.gasifyPressure = gasifyPressure;
	}
	public boolean isGasifyTemperature() {
		return gasifyTemperature;
	}
	public void setGasifyTemperature(boolean gasifyTemperature) {
		this.gasifyTemperature = gasifyTemperature;
	}
	public boolean isGasFlow1() {
		return gasFlow1;
	}
	public void setGasFlow1(boolean gasFlow1) {
		this.gasFlow1 = gasFlow1;
	}
	public boolean isGPS() {
		return GPS;
	}
	public void setGPS(boolean gPS) {
		GPS = gPS;
	}
	public boolean isMassFlow() {
		return massFlow;
	}
	public void setMassFlow(boolean massFlow) {
		this.massFlow = massFlow;
	}
	public boolean isCarLiquid() {
		return carLiquid;
	}
	public void setCarLiquid(boolean carLiquid) {
		this.carLiquid = carLiquid;
	}
	public boolean isCarPressure() {
		return carPressure;
	}
	public void setCarPressure(boolean carPressure) {
		this.carPressure = carPressure;
	}
	public boolean isWeighFlow() {
		return weighFlow;
	}
	public void setWeighFlow(boolean weighFlow) {
		this.weighFlow = weighFlow;
	}
	public boolean isGasFlow2() {
		return gasFlow2;
	}
	public void setGasFlow2(boolean gasFlow2) {
		this.gasFlow2 = gasFlow2;
	}
	public boolean isZBOX() {
		return ZBOX;
	}
	public void setZBOX(boolean zBOX) {
		ZBOX = zBOX;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
}
