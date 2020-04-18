package org.hcl.webapps.servlets;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hcl.webapps.beans.Customer;
import org.hcl.webapps.connection.OracleDBConnection;
import org.hcl.webapps.utils.Customerutil;

import oracle.jdbc.driver.OracleConnection;

@WebServlet("/AppServerReports")
public class AppServerReports extends HttpServlet {
  
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
public void init(ServletConfig config) throws ServletException {
super.init(config);
}
  
  
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
	
		//This is for OS Reports
      String APPSERVER=request.getParameter("APPSERVER");
      //String systemdb= request.getParameter("systemdb");
      //String appserver = request.getParameter("appserver");
      
     System.out.println("APPSERVER selected is...." +APPSERVER);
     // System.out.println("SystemDB selected is...." +systemdb);
     // System.out.println("AppServer selected is...." +appserver);
      
      Connection conn = OracleDBConnection.getOracleConnection();
     List<Customer> list = Customerutil.getAppServerReports(conn, APPSERVER);
     //List<Customer> list = Customerutil.getDBReports(conn, systemdb);
     // List<Customer> list2 = Customerutil.getOSReports(conn, ostype);
      
     // List<Customer> list = Customerutil.getReports(conn, ostype, SYS_DB,appserver);
      
  	//This is for DB Reports
			/*
			 * String sys_db=request.getParameter("sys_db");
			 * System.out.println("DB selected is...." +sys_db); 
			 * Connection conn =OracleDBConnection.getOracleConnection(); 
			 * List<Customer> list =Customerutil.getDBReports(conn, sys_db);
			 */
      
  	//This is for AppServer Reports
			/*
			 * String ostype=request.getParameter("ostype");
			 * System.out.println("AppServer selected is...." +ostype); 
			 * Connection conn =OracleDBConnection.getOracleConnection(); 
			 * List<Customer> list =Customerutil.getAppServerReports(conn, appserver);
			 */
      
			/*
			 * for (Customer customer2 : list) { //System.out.println(customer2); }
			 */
      request.setAttribute("customerList", list);
     // request.setAttribute("customerList", list1);
     // request.setAttribute("customerList", list2);
      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/ReportResults.jsp" );
      dispatcher.forward( request, response ); 
	}catch(Exception e) {
		e.printStackTrace();
	}
}
 public void destroy() { 
}
} 