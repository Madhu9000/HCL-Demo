package org.hcl.webapps.servlets;

import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

import org.hcl.webapps.beans.Customer;
import org.hcl.webapps.beans.Server;
// Import Database Connection Class file 
import org.hcl.webapps.connection.OracleDBConnection;
import org.hcl.webapps.utils.Customerutil;

// Servlet Name 
@WebServlet("/selectCustomer") 
public class selectCustomer extends HttpServlet { 

	@Override
	public void init(ServletConfig config) throws ServletException {
	super.init(config);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
	{ 
		try { 

			// Initialize the database 
			String res=request.getParameter("user");
			System.out.println("Customer selected is is.." +res);
			String[] str = res.split("-");
			String Customer = str[0];
			String env1=str[1];
			System.out.println("Customer selected is is.." +Customer);
			System.out.println("Customer env  is is.." +env1);
		      Connection conn = OracleDBConnection.getOracleConnection();
		      List<Customer> list = Customerutil.getCustomer(conn, Customer, env1);
		      System.out.println("Out side FOR...");
		      for (Customer server : list) {
				System.out.println(server);
				System.out.println("In side FOR...");
			}
		      System.out.println("Out side FOR 1...");
		  		  		      
		      request.setAttribute("customer", list);
		      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/customeredit.jsp" );
		      dispatcher.forward( request, response ); 

				} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 
