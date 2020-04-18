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
@WebServlet("/getServerInfo") 
public class getServerInfo extends HttpServlet { 

	@Override
	public void init(ServletConfig config) throws ServletException {
	super.init(config);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException 
	{ 
		try { 

			// Initialize the database 
			String OSName=request.getParameter("operatingSystem");
			System.out.println("OS type selected is.." +OSName);
		      Connection conn = OracleDBConnection.getOracleConnection();
		      List<Server> list = Customerutil.getServers(conn, OSName);
		      for (Server server : list) {
				System.out.println(server);
			}
		      request.setAttribute("osList", list);
		      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/AllServerInfo.jsp" );
		      dispatcher.forward( request, response ); 

				} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 
