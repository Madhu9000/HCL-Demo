package org.hcl.webapps.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

import org.apache.taglibs.standard.lang.jstl.NotEqualsOperator;
import org.hcl.webapps.beans.Customer;
import org.hcl.webapps.beans.CustomerMetadata;
import org.hcl.webapps.beans.Server;
import org.hcl.webapps.log.MyFilter;
import org.hcl.webapps.log.MyFormatter;
import org.hcl.webapps.log.MyHandler;
import org.omg.CosNaming.NamingContextPackage.NotEmpty;

import com.sun.org.apache.xpath.internal.operations.NotEquals;

public class Customerutil {
	//private static final LogManager logManager = LogManager.getLogManager();
	//private static final Logger logger = Logger.getLogger(Customerutil.class.getName());
	

	public static List<Customer> getUsers(Connection conn, String customername ) throws SQLException, SecurityException, FileNotFoundException, IOException {
		
		//Logger logger = Logger.getLogger(Customeruti);
		//LogManager.getLogManager().readConfiguration(new FileInputStream("C:\\Users\\sureshvu\\eclipse-workspace\\HelloWorldJSP\\src\\org\\hcl\\webapps\\servlets\\logging.properties"));
		
		// String name= customername;
		/*
		 * String sql =
		 * "SELECT NAME,ENV_TYPE,UNICA_VERSION,OS,APPSERVER,SYS_DB,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,REGION,OSVERSION FROM "
		 * + "CUSTOMERDATA1 WHERE LOWER(NAME) like '%" + customername + "%' ";
		 * 
		 * String sql = "SELECT
		 	NAME,SPOC,ENV_TYPE,UNICA_VERSION,OS_VERSION,APPSERVER,SYS_DB,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,REGION
			FROM "
			+ "CUSTOMERDATA1 WHERE NAME like ? ";
		 */
		
		String sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,\r\n" + 
				"HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE FROM \r\n" + 
				"CUSTOMERINFO WHERE LOWER(NAME) like '%" + customername + "%' ";
		
		//logger.setLevel(Level.FINE);
       // logger.addHandler(new ConsoleHandler());
        //adding custom handler
       // logger.addHandler(new MyHandler());
        
       // Handler fileHandler = new FileHandler("C:\\Users\\sureshvu\\Desktop\\code\\working\\Testing\\logger.log", true);
       // fileHandler.setFormatter(new MyFormatter());
        //setting custom filter for FileHandler
       // fileHandler.setFilter(new MyFilter());
      //  logger.addHandler(fileHandler);
        
		//logger.log(Level.INFO,"Query is...." +sql);
		//System.out.println("SQL Query is.... " +sql);
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		List<Customer> list = new ArrayList<Customer>();
		while (rs.next()) {
		//	System.out.println("Inside...while" +rs.next());
			String name = rs.getString("NAME");
		//	System.out.println("Inside...while: " +name);
			String env_type = rs.getString("ENV_TYPE");
		//	System.out.println("Inside...while: " +env_type);
			String os = rs.getString("OS");
		//	System.out.println("Inside...while: " +os);
			String osversion = rs.getString("OSVERSION");
	//		System.out.println("Inside...while: " +osversion);
			String unicaproducts = rs.getString("UNICAPRODUCTS");
	//		System.out.println("Inside...while: " +unicaproducts);
			String unica_version = rs.getString("UNICA_VERSION");
	//		System.out.println("Inside...while: " +unica_version);
			String appServer = rs.getString("APPSERVER");
	//		System.out.println("Inside...while: " +appServer);
			String appServerversion = rs.getString("APPSERVERVERSION");
	//		System.out.println("Inside...while: " +appServerversion);
			String sys_db = rs.getString("SYS_DB");
	//		System.out.println("Inside...while: " +sys_db);
			String sysdbversion = rs.getString("SYSDBVERSION");
	//		System.out.println("Inside...while: " +sysdbversion);
			String user_db = rs.getString("USER_DB");
	//	System.out.println("Inside...while: " +user_db);
			String hotfixes = rs.getString("HOTFIXES");
	//		System.out.println("Inside...while: " +hotfixes);
			String locale = rs.getString("LOCALE");
	//		System.out.println("Inside...while: " +locale);
			String integrations = rs.getString("INTEGRATIONS");
	//		System.out.println("Inside...while: " +integrations);
			String browsers = rs.getString("BROWSERS");
	//		System.out.println("Inside...while: " +browsers);
			String exceptionapproval = rs.getString("EXCEPTIONAPPROVAL");
	//		System.out.println("Inside...while: " +exceptionapproval);
			String supportext = rs.getString("SUPPORTEXT");
	//		System.out.println("Inside...while: " +supportext);
			String region = rs.getString("REGION");
	//		System.out.println("Inside...while: " +region);
			//String osversion = rs.getString("OSVERSION");
			Timestamp createdate = rs.getTimestamp("createdate"); 
			/*
			 * System.out.println(name); System.out.println(env_type);
			 * System.out.println(os); System.out.println(osversion);
			 * System.out.println(unicaproducts); System.out.println(unica_version);
			 * System.out.println(appServer); System.out.println(appServerversion);
			 * System.out.println(sys_db); System.out.println(sysdbversion);
			 * System.out.println(user_db); System.out.println(hotfixes);
			 * System.out.println(locale); System.out.println(integrations);
			 * System.out.println(browsers); System.out.println(exceptionapproval);
			 * System.out.println(supportext); System.out.println(region);
			 */
			Customer customer = new Customer();
			customer.setName(name);		
			customer.setEnv_type(env_type);
			customer.setOs(os);
			customer.setOsversion(osversion);
			customer.setUnicaproducts(unicaproducts);
			customer.setUnica_version(unica_version);
			
			customer.setAppServer(appServer);
			customer.setAppserverversion(appServerversion);
			customer.setSys_db(sys_db);
			customer.setSysdbversion(sysdbversion);
			customer.setUser_db(user_db);
			customer.setHotfixes(hotfixes);
			customer.setLocale(locale);
			customer.setIntegrations(integrations);
			customer.setBrowser(browsers);
			customer.setExceptionapproval(exceptionapproval);
			customer.setSupportext(supportext);
			customer.setRegion(region);
			customer.setCreatedate(createdate); 
			
			
				
			//System.out.println("Customer info is...." +customer);
			list.add(customer);
		}
		return list;
	}

	public static List<Server> getServers(Connection conn, String OSName) throws SQLException {
		System.out.println("Inside CustomerUtils for getServers()");

		String sql = "SELECT OSTYPE,HOSTNAME,LOGININFO,UNICAVERSION,UNICAPATH,WASVERSION,WASPATH,UNICAURL,WASURL,OTHERINFO FROM Serverinfo "
				+ "WHERE OSTYPE like '%" + OSName + "%'";

		PreparedStatement pstm1 = conn.prepareStatement(sql);
		ResultSet rs1 = pstm1.executeQuery();
		List<Server> list1 = new ArrayList<Server>();
		while (rs1.next()) {
			String ostype = rs1.getString("ostype");
			String hostname = rs1.getString("hostname");
			String logininfo = rs1.getString("logininfo");
			String unicaversion = rs1.getString("unicaversion");
			String unicapath = rs1.getString("unicapath");
			String wasversion = rs1.getString("wasversion");
			String waspath = rs1.getString("waspath");
			String unicaurl = rs1.getString("unicaurl");
			String wasurl = rs1.getString("wasurl");
			String otherinfo = rs1.getString("otherinfo");

			Server server = new Server();

			server.setOstype(ostype);
			server.setHostname(hostname);
			server.setLogininfo(logininfo);
			server.setUnicaversion(unicaversion);
			server.setUnicapath(unicapath);
			server.setWasversion(wasversion);
			server.setWaspath(waspath);
			server.setUnicaurl(unicaurl);
			server.setWasurl(wasurl);
			server.setOtherinfo(otherinfo);

			list1.add(server);
		}
		return list1;
	}

	public static List<CustomerMetadata> getOS(Connection conn, String OSName) throws SQLException {
		System.out.println("Inside CustomerUtils for getOS()");

		String sql = "SELECT OSTYPE,SYSTEMDB,APPSERVER,ENVTYPE,REGION FROM CUSTOMER_METADATA ";

		PreparedStatement pstm2 = conn.prepareStatement(sql);
		ResultSet rs2 = pstm2.executeQuery();
		List<CustomerMetadata> list2 = new ArrayList<CustomerMetadata>();
		while (rs2.next()) {
			String ostype = rs2.getString("ostype");
			String systemdb =rs2.getString("systemdb");
			String appserver = rs2.getString("appserver");
			String envtype = rs2.getString("envtype");
			String region = rs2.getString("region");
			System.out.println("Os Name is...." +ostype);
			
			//Server server = new Server();
			CustomerMetadata custmetadata=new CustomerMetadata();

			custmetadata.setOstype(ostype);
			custmetadata.setSystemdb(systemdb);
			custmetadata.setAppserver(appserver);
			custmetadata.setEnvtype(envtype);
			custmetadata.setRegion(region);
			
			
			list2.add(custmetadata);
		}
		return list2;
	}

	public static List<Customer> getOSReports(Connection conn, String ostype) throws SQLException {

		
		String sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,SYS_DB,SYSDBVERSION,APPSERVER,APPSERVERVERSION FROM \r\n" + 
				"CUSTOMERINFO WHERE OS like '%" + ostype + "%' ";
		
		System.out.println("OS Seleted is... is.... " +ostype);
		System.out.println("Query for OS... is.... " +sql);
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		
		List<Customer> list = new ArrayList<Customer>();
		
		while (rs.next()) {
				//System.out.println("Inside...while1" +rs.next());
				String name = rs.getString("NAME");
			//	System.out.println("Inside...name: " +name);
				String env_type = rs.getString("ENV_TYPE");
				//System.out.println("Inside...envtype: " +env_type);
				String os = rs.getString("OS");
				//System.out.println("Inside...os: " +os);
				String osversion = rs.getString("OSVERSION");
				//System.out.println("Inside...osversion: " +osversion);
				String unicaproducts = rs.getString("UNICAPRODUCTS");
				//System.out.println("Inside...unica products: " +unicaproducts);
				String unica_version = rs.getString("unica_version");
				String sys_db = rs.getString("sys_db");
				String sysdbversion = rs.getString("SYSDBVERSION");
				String appServer = rs.getString("appserver");
				String appserverversion = rs.getString("APPSERVERVERSION");
				
				Customer customer = new Customer();
				customer.setName(name);		
				customer.setEnv_type(env_type);
				customer.setOs(os);
				customer.setOsversion(osversion);
				customer.setUnicaproducts(unicaproducts);	
				customer.setUnica_version(unica_version);
				customer.setSys_db(sys_db);
				customer.setSysdbversion(sysdbversion);
				customer.setAppServer(appServer);
				customer.setAppserverversion(appserverversion);
							
				//System.out.println("Customer info is...." +customer);
				list.add(customer);
			} 
			//System.out.println();
				
		return list;
	}

	public static List<Customer> getDBReports(Connection conn, String SYSTEMDB) throws SQLException {

		
		String sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,SYS_DB,SYSDBVERSION,APPSERVER,APPSERVERVERSION FROM \r\n" + 
				"CUSTOMERINFO WHERE SYS_DB like '%" + SYSTEMDB + "%' ";
		
		
		
		System.out.println("DB Seleted is... is.... " +SYSTEMDB);
		System.out.println("DB Seleted is... is.... " +sql);
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		
		List<Customer> list = new ArrayList<Customer>();
		
		while (rs.next()) {
				//System.out.println("Inside...while1" +rs.next());
				String name = rs.getString("NAME");
				//System.out.println("Inside...name: " +name);
				String env_type = rs.getString("ENV_TYPE");
				//System.out.println("Inside...envtype: " +env_type);
				String os = rs.getString("OS");
				//System.out.println("Inside...os: " +os);
				String osversion = rs.getString("OSVERSION");
				//System.out.println("Inside...osversion: " +osversion);
				String unicaproducts = rs.getString("UNICAPRODUCTS");
				//System.out.println("Inside...unica products: " +unicaproducts);
				String unica_version = rs.getString("unica_version");
				String sys_Db = rs.getString("sys_db");
				String sysdbversion = rs.getString("SYSDBVERSION");
				String appServer = rs.getString("appserver");
				String appserverversion = rs.getString("APPSERVERVERSION");
				
				Customer customer = new Customer();
				customer.setName(name);		
				customer.setEnv_type(env_type);
				customer.setOs(os);
				customer.setOsversion(osversion);
				customer.setUnicaproducts(unicaproducts);	
				customer.setUnica_version(unica_version);
				customer.setSys_db(sys_Db);
				customer.setSysdbversion(sysdbversion);
				customer.setAppServer(appServer);
				customer.setAppserverversion(appserverversion);
							
				//System.out.println("Customer info is...." +customer);
				list.add(customer);
			} 
			//System.out.println();
				
		return list;
	}

	public static List<Customer> getAppServerReports(Connection conn, String APPSERVER) throws SQLException {

		/*
		 * String sql =
		 * "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,\r\n"
		 * +
		 * "HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE FROM \r\n"
		 * + "CUSTOMERINFO WHERE LOWER(NAME) like '%" + customername + "%' ";
		 */
	
	String sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,SYS_DB,SYSDBVERSION,APPSERVER,APPSERVERVERSION FROM \r\n" + 
			"CUSTOMERINFO WHERE APPSERVER like '%" + APPSERVER + "%' ";

	
	System.out.println("APPSERVER Seleted is... is.... " +APPSERVER);
	System.out.println("APPSERVER Seleted is... is.... " +sql);
	PreparedStatement pstm = conn.prepareStatement(sql);
	ResultSet rs = pstm.executeQuery();
	
	List<Customer> list = new ArrayList<Customer>();

	while (rs.next()) {
			//System.out.println("Inside...while1" +rs.next());
			String name = rs.getString("NAME");
			//System.out.println("Inside...name: " +name);
			String env_type = rs.getString("ENV_TYPE");
			//System.out.println("Inside...envtype: " +env_type);
			String os = rs.getString("OS");
			//System.out.println("Inside...os: " +os);
			String osversion = rs.getString("OSVERSION");
			//System.out.println("Inside...osversion: " +osversion);
			String unicaproducts = rs.getString("UNICAPRODUCTS");
			//System.out.println("Inside...unica products: " +unicaproducts);
			String unica_version = rs.getString("unica_version");
			String sys_db = rs.getString("sys_db");
			String sysdbversion = rs.getString("SYSDBVERSION");
			String appServer = rs.getString("appserver");
			String appserverversion = rs.getString("APPSERVERVERSION");
			
			
			//System.out.println(sb.toString());
			
			Customer customer = new Customer();
			customer.setName(name);		
			customer.setEnv_type(env_type);
			customer.setOs(os);
			customer.setOsversion(osversion);
			customer.setUnicaproducts(unicaproducts);	
			customer.setUnica_version(unica_version);
			customer.setSys_db(sys_db);
			customer.setSysdbversion(sysdbversion);
			customer.setAppServer(appServer);
			customer.setAppserverversion(appserverversion);
						
			//System.out.println("Customer info is...." +customer);
			list.add(customer);
		} 
		//System.out.println();
			
	return list;
}

	public static List<Customer> getCustomer(Connection conn, String customername, String env1) throws SQLException {
		// String name= customername;
				/*
				 * String sql =
				 * "SELECT NAME,ENV_TYPE,UNICA_VERSION,OS,APPSERVER,SYS_DB,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,REGION,OSVERSION FROM "
				 * + "CUSTOMERDATA1 WHERE LOWER(NAME) like '%" + customername + "%' ";
				 * 
				 * String sql = "SELECT
				 	NAME,SPOC,ENV_TYPE,UNICA_VERSION,OS_VERSION,APPSERVER,SYS_DB,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,REGION
					FROM "
					+ "CUSTOMERDATA1 WHERE NAME like ? ";
				 */
				
				String sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,\r\n" + 
						"HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE FROM \r\n" + 
						"CUSTOMERINFO WHERE NAME like '%" + customername + "%' AND "
								      + "ENV_TYPE like '%" + env1 + "%' ";
				
				System.out.println("SQL Query is.... " +sql);
				PreparedStatement pstm = conn.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				List<Customer> list = new ArrayList<Customer>();
				while (rs.next()) {
				//	System.out.println("Inside...while" +rs.next());
					String name = rs.getString("NAME");
				//	System.out.println("Inside...while: " +name);
					String env_type = rs.getString("ENV_TYPE");
				//	System.out.println("Inside...while: " +env_type);
					String os = rs.getString("OS");
				//	System.out.println("Inside...while: " +os);
					String osversion = rs.getString("OSVERSION");
			//		System.out.println("Inside...while: " +osversion);
					String unicaproducts = rs.getString("UNICAPRODUCTS");
			//		System.out.println("Inside...while: " +unicaproducts);
					String unica_version = rs.getString("UNICA_VERSION");
			//		System.out.println("Inside...while: " +unica_version);
					String appServer = rs.getString("APPSERVER");
					System.out.println("Inside...while: " +appServer);
					String appServerversion = rs.getString("APPSERVERVERSION");
			//		System.out.println("Inside...while: " +appServerversion);
					String sys_db = rs.getString("SYS_DB");
					System.out.println("Inside...while: " +sys_db);
					String sysdbversion = rs.getString("SYSDBVERSION");
			//		System.out.println("Inside...while: " +sysdbversion);
					String user_db = rs.getString("USER_DB");
			//	System.out.println("Inside...while: " +user_db);
					String hotfixes = rs.getString("HOTFIXES");
			//		System.out.println("Inside...while: " +hotfixes);
					String locale = rs.getString("LOCALE");
			//		System.out.println("Inside...while: " +locale);
					String integrations = rs.getString("INTEGRATIONS");
			//		System.out.println("Inside...while: " +integrations);
					String browsers = rs.getString("BROWSERS");
			//		System.out.println("Inside...while: " +browsers);
					String exceptionapproval = rs.getString("EXCEPTIONAPPROVAL");
			//		System.out.println("Inside...while: " +exceptionapproval);
					String supportext = rs.getString("SUPPORTEXT");
			//		System.out.println("Inside...while: " +supportext);
					String region = rs.getString("REGION");
			//		System.out.println("Inside...while: " +region);
					//String osversion = rs.getString("OSVERSION");
					Timestamp createdate = rs.getTimestamp("createdate"); 
					/*
					 * System.out.println(name); System.out.println(env_type);
					 * System.out.println(os); System.out.println(osversion);
					 * System.out.println(unicaproducts); System.out.println(unica_version);
					 * System.out.println(appServer); System.out.println(appServerversion);
					 * System.out.println(sys_db); System.out.println(sysdbversion);
					 * System.out.println(user_db); System.out.println(hotfixes);
					 * System.out.println(locale); System.out.println(integrations);
					 * System.out.println(browsers); System.out.println(exceptionapproval);
					 * System.out.println(supportext); System.out.println(region);
					 */
					Customer customer = new Customer();
					customer.setName(name);		
					customer.setEnv_type(env_type);
					customer.setOs(os);
					customer.setOsversion(osversion);
					customer.setUnicaproducts(unicaproducts);
					customer.setUnica_version(unica_version);
					
					customer.setAppServer(appServer);
					customer.setAppserverversion(appServerversion);
					customer.setSys_db(sys_db);
					customer.setSysdbversion(sysdbversion);
					customer.setUser_db(user_db);
					customer.setHotfixes(hotfixes);
					customer.setLocale(locale);
					customer.setIntegrations(integrations);
					customer.setBrowser(browsers);
					customer.setExceptionapproval(exceptionapproval);
					customer.setSupportext(supportext);
					customer.setRegion(region);
					customer.setCreatedate(createdate); 
					
					
						
					//System.out.println("Customer info is...." +customer);
					list.add(customer);
				}
				return list;
	}


	public static List<Customer> getReports(Connection conn, String appserver, String ostype, String SYS_DB) throws SQLException {
		/*
		 * String sql =
		 * "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,APPSERVER,APPSERVERVERSION,SYS_DB,SYSDBVERSION,USER_DB,\r\n"
		 * +
		 * "HOTFIXES,LOCALE,INTEGRATIONS,BROWSERS,EXCEPTIONAPPROVAL,SUPPORTEXT,REGION,CREATEDATE FROM \r\n"
		 * + "CUSTOMERINFO WHERE LOWER(NAME) like '%" + customername + "%' ";
		 */
		System.out.println("Inside getReports() method.........");
		System.out.println("systemDB Seleted is... is.... " +SYS_DB);
		System.out.println("OS Seleted is... is.... " +ostype);
		System.out.println("appserver Seleted is... is.... " +appserver);
	String sql = null;
	
	String database = SYS_DB;
		if  (SYS_DB != null) {
			System.out.println("11111111111111111111111" +database);
			 sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,SYS_DB,APPSERVER FROM \r\n" + 
					"CUSTOMERINFO WHERE SYS_DB like '%" + database + "%' ";
		} else if (ostype != null) {
			System.out.println("22222222222222222222222" +ostype);
			 sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,SYS_DB,APPSERVER FROM \r\n" + 
					"CUSTOMERINFO WHERE OS like '%" + ostype + "%' ";
		} else if(appserver != null){
			System.out.println("3333333333333333333333" +appserver);
			 sql = "SELECT NAME,ENV_TYPE,OS,OSVERSION,UNICAPRODUCTS,UNICA_VERSION,SYS_DB,APPSERVER FROM \r\n" + 
					"CUSTOMERINFO WHERE APPSERVER like '%" + appserver + "%' ";
		}

	

	System.out.println("Query prepared is.... " +sql);

	PreparedStatement pstm = conn.prepareStatement(sql);
	ResultSet rs = pstm.executeQuery();
	
	List<Customer> list = new ArrayList<Customer>();

	while (rs.next()) {
			//System.out.println("Inside...while1" +rs.next());
			String name = rs.getString("NAME");
			//System.out.println("Inside...name: " +name);
			String env_type = rs.getString("ENV_TYPE");
			//System.out.println("Inside...envtype: " +env_type);
			String os = rs.getString("OS");
			//System.out.println("Inside...os: " +os);
			String osversion = rs.getString("OSVERSION");
			//System.out.println("Inside...osversion: " +osversion);
			String unicaproducts = rs.getString("UNICAPRODUCTS");
			//System.out.println("Inside...unica products: " +unicaproducts);
			String unica_version = rs.getString("unica_version");
			String sys_db = rs.getString("sys_db");
			String appServer = rs.getString("appserver");
			
			
			//System.out.println(sb.toString());
			
			Customer customer = new Customer();
			customer.setName(name);		
			customer.setEnv_type(env_type);
			customer.setOs(os);
			customer.setOsversion(osversion);
			customer.setUnicaproducts(unicaproducts);	
			customer.setUnica_version(unica_version);
			customer.setSys_db(sys_db);
			customer.setAppServer(appServer);
						
			//System.out.println("Customer info is...." +customer);
			list.add(customer);
	}
	return list;
	}
}
