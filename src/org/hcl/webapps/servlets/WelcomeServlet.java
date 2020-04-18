package org.hcl.webapps.servlets;
 
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hcl.webapps.beans.Customer;
import org.hcl.webapps.connection.OracleDBConnection;
import org.hcl.webapps.log.MyFilter;
import org.hcl.webapps.log.MyFormatter;
import org.hcl.webapps.log.MyHandler;
import org.hcl.webapps.utils.Customerutil;

import oracle.jdbc.driver.OracleConnection;
  
public class WelcomeServlet extends HttpServlet {
  
@Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}
  
//private static final LogManager logManager = LogManager.getLogManager();
//private static final Logger logger = Logger.getLogger("confLogger");

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
			/*
			 * Logger logger = Logger.getLogger("MyLog");
			 * LogManager.getLogManager().readConfiguration(new FileInputStream(
			 * "C:\\Users\\sureshvu\\eclipse-workspace\\HelloWorldJSP\\src\\org\\hcl\\webapps\\servlets\\logging.properties"
			 * ));
			 * 
			 * logger.setLevel(Level.FINE); logger.addHandler(new ConsoleHandler());
			 * //adding custom handler logger.addHandler(new MyHandler());
			 * 
			 * Handler fileHandler = new FileHandler(
			 * "C:\\Users\\sureshvu\\Desktop\\code\\working\\Testing\\logger.log", true);
			 * fileHandler.setFormatter(new MyFormatter()); //setting custom filter for
			 * FileHandler fileHandler.setFilter(new MyFilter());
			 * logger.addHandler(fileHandler);
			 */
        
      String customer=request.getParameter("user");
      //logger.log(Level.INFO,"Customer selectedddasasasa is...." +customer);
      
      Connection con = OracleDBConnection.getOracleConnection();
      List<Customer> list = Customerutil.getUsers(con, customer);
      //logger.log(Level.INFO,"After getUser()");
      
      for (Customer customer2 : list) {
		System.out.println(customer2);
	}
      //logger.log(Level.CONFIG, "Config data");
      request.setAttribute("customerList", list);
      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/CustomerInfo.jsp" );
      dispatcher.forward( request, response ); 
	}catch(Exception e) {
		//e.printStackTrace();
		//logger.log(Level.SEVERE, "Error in loading configuration");
	
	}
}
 public void destroy() { 
}
} 