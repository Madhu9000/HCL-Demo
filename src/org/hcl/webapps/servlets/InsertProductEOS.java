package org.hcl.webapps.servlets;

import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 

// Import Database Connection Class file 
import org.hcl.webapps.connection.OracleDBConnection;

// Servlet Name 
@WebServlet("/InsertProductEOS") 
public class InsertProductEOS extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 
		throws ServletException, IOException 
	{ 
		try { 

			// Initialize the database 
			Connection con = OracleDBConnection.getOracleConnection(); 

			// Create a SQL query to insert data into demo table 
			// demo table consists of two columns, so two '?' is used 
			System.out.println("in Insert Product EOS .....");
			PreparedStatement st = con 
				.prepareStatement("insert into PRODUCTEOS values(?,?,?)"); 
			System.out.println("in Insert Product EOS  after PS....." +st);

			// For the first parameter, 
			// get the data using request object 
			// sets the data to st pointer 
			
			st.setString(1, request.getParameter("Productname")); 
						
			st.setString(2, request.getParameter("version"));
			
			st.setString(3, request.getParameter("eos"));
			
			  
			System.out.println(request.getParameter("Productname"));
			System.out.println(request.getParameter("version"));
			System.out.println(request.getParameter("eos"));
		
			System.out.println("in Insert Product EOS data.....from insertdata.java" +st);

			// Execute the insert command using executeUpdate() 
			// to make changes in database
		
			st.executeUpdate(); 

			// Close all the connections 
			st.close(); 
			con.close(); 
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/ProductEOS.jsp" );
		      dispatcher.forward( request, response ); 
			// Get a writer pointer 
			// to display the successful result 
			/*
			 * PrintWriter out = response.getWriter();
			 * out.println("<html><body><b>Successfully Inserted" + "</b>" + "" +
			 * "<br><br> <a href=helloWorld.jsp target=''> <font size=\"+2\"\r\n" +
			 * "								color=\"green\">Back to Home</font></a></body></html>"
			 * );
			 */
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 
} 
