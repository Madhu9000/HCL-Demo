package org.hcl.webapps.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hcl.webapps.connection.OracleDBConnection;


/**
 * Servlet implementation class getServers
 */
@WebServlet("/getServers")
public class getServers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try { 

			// Initialize the database 
			Connection con = OracleDBConnection.getOracleConnection(); 

			// Create a SQL query to insert data into demo table 
			// demo table consists of two columns, so two '?' is used 
			System.out.println("in Qurying.....");
			PreparedStatement st = con 
				.prepareStatement("select * from player where name = ?"); 
			System.out.println("in Insertdata after PS....." +st);

			// For the first parameter, 
			// get the data using request object 
			// sets the data to st pointer 
			st.setInt(1, Integer.valueOf(request.getParameter("id"))); 

			// Same for second parameter 
			st.setString(2, request.getParameter("string")); 
			st.setString(3, request.getParameter("age"));
			st.setString(4, request.getParameter("matches"));
			
			//st.setInt(3, Integer.valueOf(request.getParameter("Age"))); 
			//st.setInt(4, Integer.valueOf(request.getParameter("Matches"))); 
			
			System.out.println("in Insertdata....." +st);

			// Execute the insert command using executeUpdate() 
			// to make changes in database 
			st.executeUpdate(); 

			// Close all the connections 
			st.close(); 
			con.close(); 

			// Get a writer pointer 
			// to display the successful result 
			PrintWriter out = response.getWriter(); 
			out.println("<html><body><b>Successfully Inserted"
						+ "</b>"
						+ ""
						+ "<br><br> <a href=helloWorld.jsp target=''> <font size=\"+2\"\r\n" + 
						"								color=\"green\">Back to Home</font></a></body></html>"); 
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	}

}
