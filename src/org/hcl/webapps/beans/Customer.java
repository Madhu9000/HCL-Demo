package org.hcl.webapps.beans;

import java.sql.Timestamp;

public class Customer {
	private String name;
	private String env_type;
	private String unica_version;
	private String os;
	private String appServer;
	private String sys_db;
	private String user_db;
	private String hotfixes;
	private String locale;
	private String integrations;
	private String region;
	private String osversion;
	
	private	String	unicaproducts;
	private	String	appserverversion;
	private	String	sysdbversion;
	private	String	browser;
	private	String	exceptionapproval;
	private	String	supportext;
	
	private Timestamp createdate;

	public Timestamp getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Timestamp createdate) {
		this.createdate = createdate;
	}

	public Customer() {
		
	}
	
	public Customer(String name, String env_type, String unica_version, String os, String appServer, String sys_db,
			String user_db, String hotfixes, String locale, String integrations, String region, String osversion,
			String unicaproducts, String appserverversion, String sysdbversion, String browser,
			String exceptionapproval, String supportext, Timestamp createdate) {
		super();
		this.name = name;
		this.env_type = env_type;
		this.unica_version = unica_version;
		this.os = os;
		this.appServer = appServer;
		this.sys_db = sys_db;
		this.user_db = user_db;
		this.hotfixes = hotfixes;
		this.locale = locale;
		this.integrations = integrations;
		this.region = region;
		this.osversion = osversion;
		this.unicaproducts = unicaproducts;
		this.appserverversion = appserverversion;
		this.sysdbversion = sysdbversion;
		this.browser = browser;
		this.exceptionapproval = exceptionapproval;
		this.supportext = supportext;
		this.createdate = createdate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnv_type() {
		return env_type;
	}

	public void setEnv_type(String env_type) {
		this.env_type = env_type;
	}

	public String getUnica_version() {
		return unica_version;
	}

	public void setUnica_version(String unica_version) {
		this.unica_version = unica_version;
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public String getAppServer() {
		return appServer;
	}

	public void setAppServer(String appServer) {
		this.appServer = appServer;
	}

	public String getSys_db() {
		return sys_db;
	}

	public void setSys_db(String sys_db) {
		this.sys_db = sys_db;
	}

	public String getUser_db() {
		return user_db;
	}

	public void setUser_db(String user_db) {
		this.user_db = user_db;
	}

	public String getHotfixes() {
		return hotfixes;
	}

	public void setHotfixes(String hotfixes) {
		this.hotfixes = hotfixes;
	}

	public String getLocale() {
		return locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

	public String getIntegrations() {
		return integrations;
	}

	public void setIntegrations(String integrations) {
		this.integrations = integrations;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getOsversion() {
		return osversion;
	}

	public void setOsversion(String osversion) {
		this.osversion = osversion;
	}

	public String getUnicaproducts() {
		return unicaproducts;
	}

	public void setUnicaproducts(String unicaproducts) {
		this.unicaproducts = unicaproducts;
	}

	public String getAppserverversion() {
		return appserverversion;
	}

	public void setAppserverversion(String appserverversion) {
		this.appserverversion = appserverversion;
	}

	public String getSysdbversion() {
		return sysdbversion;
	}

	public void setSysdbversion(String sysdbversion) {
		this.sysdbversion = sysdbversion;
	}

	public String getBrowser() {
		return browser;
	}

	public void setBrowser(String browser) {
		this.browser = browser;
	}

	public String getExceptionapproval() {
		return exceptionapproval;
	}

	public void setExceptionapproval(String exceptionapproval) {
		this.exceptionapproval = exceptionapproval;
	}

	public String getSupportext() {
		return supportext;
	}

	public void setSupportext(String supportext) {
		this.supportext = supportext;
	}

	
}
