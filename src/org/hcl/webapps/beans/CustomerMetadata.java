package org.hcl.webapps.beans;


public class CustomerMetadata {
	//private Number ID;
	private String ostype;
	private String systemdb;
	private String appserver;
	private String envtype;
	private String region;
	
	public CustomerMetadata() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerMetadata(String ostype, String systemdb, String appserver, String envtype, String region) {
		super();
		this.ostype = ostype;
		this.systemdb = systemdb;
		this.appserver = appserver;
		this.envtype = envtype;
		this.region = region;
	}

	public String getOstype() {
		return ostype;
	}

	public void setOstype(String ostype) {
		this.ostype = ostype;
	}

	public String getSystemdb() {
		return systemdb;
	}

	public void setSystemdb(String systemdb) {
		this.systemdb = systemdb;
	}

	public String getAppserver() {
		return appserver;
	}

	public void setAppserver(String appserver) {
		this.appserver = appserver;
	}

	public String getEnvtype() {
		return envtype;
	}

	public void setEnvtype(String envtype) {
		this.envtype = envtype;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	@Override
	public String toString() {
		return "CustomerMetadata [ostype=" + ostype + ", systemdb=" + systemdb + ", appserver=" + appserver
				+ ", envtype=" + envtype + ", region=" + region + "]";
	}

	
	}
	
	
	
