package org.hcl.webapps.servlets;

import java.io.IOException;
import java.sql.Connection;
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

/**
 * Servlet implementation class InsertData
 */
@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	public void init(ServletConfig config) throws ServletException {
	super.init(config);
	}
	  
	  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		try {
			
			String customer=request.getParameter("user");
	      Connection conn = OracleDBConnection.getOracleConnection();
	      List<Customer> list = Customerutil.insertUser(conn, customer);
	      for (Customer customer2 : list) {
			System.out.println(customer2);
		}
	      request.setAttribute("customerList", list);
	      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/CustomerInfo.jsp" );
	      dispatcher.forward( request, response ); 
		}catch(Exception e) {
			e.printStackTrace();
		} */
	}
	 public void destroy() { 
	}
	} 
