package org.hcl.webapps.beans;

import java.sql.Date;

public class Server {
	private String ostype;
	private String hostname;
	private String logininfo;
	private String unicaversion;
	private String unicapath;
	private String wasversion;
	private String waspath;
	private String unicaurl;
	private String wasurl;
	private String otherinfo;
	public Server() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Server(String ostype, String hostname, String logininfo, String unicaversion, String unicapath,
			String wasversion, String waspath, String unicaurl, String wasurl, String otherinfo) {
		super();
		this.ostype = ostype;
		this.hostname = hostname;
		this.logininfo = logininfo;
		this.unicaversion = unicaversion;
		this.unicapath = unicapath;
		this.wasversion = wasversion;
		this.waspath = waspath;
		this.unicaurl = unicaurl;
		this.wasurl = wasurl;
		this.otherinfo = otherinfo;
	}
	public String getOstype() {
		return ostype;
	}
	public void setOstype(String ostype) {
		this.ostype = ostype;
	}
	public String getHostname() {
		return hostname;
	}
	public void setHostname(String hostname) {
		this.hostname = hostname;
	}
	public String getLogininfo() {
		return logininfo;
	}
	public void setLogininfo(String logininfo) {
		this.logininfo = logininfo;
	}
	public String getUnicaversion() {
		return unicaversion;
	}
	public void setUnicaversion(String unicaversion) {
		this.unicaversion = unicaversion;
	}
	public String getUnicapath() {
		return unicapath;
	}
	public void setUnicapath(String unicapath) {
		this.unicapath = unicapath;
	}
	public String getWasversion() {
		return wasversion;
	}
	public void setWasversion(String wasversion) {
		this.wasversion = wasversion;
	}
	public String getWaspath() {
		return waspath;
	}
	public void setWaspath(String waspath) {
		this.waspath = waspath;
	}
	public String getUnicaurl() {
		return unicaurl;
	}
	public void setUnicaurl(String unicaurl) {
		this.unicaurl = unicaurl;
	}
	public String getWasurl() {
		return wasurl;
	}
	public void setWasurl(String wasurl) {
		this.wasurl = wasurl;
	}
	public String getOtherinfo() {
		return otherinfo;
	}
	public void setOtherinfo(String otherinfo) {
		this.otherinfo = otherinfo;
	}
	@Override
	public String toString() {
		return "Server [ostype=" + ostype + ", hostname=" + hostname + ", logininfo=" + logininfo + ", unicaversion="
				+ unicaversion + ", unicapath=" + unicapath + ", wasversion=" + wasversion + ", waspath=" + waspath
				+ ", unicaurl=" + unicaurl + ", wasurl=" + wasurl + ", otherinfo=" + otherinfo + "]";
	}
	}
	
	
	
