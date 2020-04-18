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
@WebServlet("/InsertData1") 
public class InsertData1 extends HttpServlet { 
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
			System.out.println("in Insertdata.....");
			PreparedStatement st = con 
				.prepareStatement("insert into CUSTOMERINFO values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
			System.out.println("in Insertdata after PS....." +st);

			// For the first parameter, 
			// get the data using request object 
			// sets the data to st pointer 
			
			st.setString(1, request.getParameter("name")); 
						
			st.setString(2, request.getParameter("envtype"));
			
			st.setString(3, request.getParameter("ostype"));
			st.setString(4, request.getParameter("osversion"));
			
			//st.setString(5, request.getParameter("unicaproducts"));
			st.setString(5, request.getParameter("unica_version"));
			
			st.setString(6, request.getParameter("appserver")); 
			st.setString(7, request.getParameter("appserverversion")); 
			
			st.setString(8, request.getParameter("systemdb"));
			st.setString(9, request.getParameter("sysdbversion"));
			
			st.setString(10, request.getParameter("user_db"));
			
			st.setString(11, request.getParameter("hotfixes")); 
			
			st.setString(12, request.getParameter("locale")); 
			st.setString(13, request.getParameter("integrations"));
			
			st.setString(14, request.getParameter("browsers"));
			st.setString(15, request.getParameter("exceptionapproval"));
			st.setString(16, request.getParameter("supportext"));
			
			st.setString(17, request.getParameter("region"));
			
			st.setTimestamp(18, new java.sql.Timestamp(System.currentTimeMillis()));
			
			/* To Get multiple check boxes values in single column */
			  String unica = ""; 
			  String a[]=request.getParameterValues("unica");
			  for(int i=0;i<a.length;i++)
			  { 
			/*  voucher+=a[i]+","; */
			  if (i == a.length-1)
			  {
				  unica+=a[i];
					/* System.out.println("unica is...." +voucher); */
			  }else {
				  unica+=a[i]+","; 
					/*
					 * System.out.println("unica is...." +voucher);
					 */ }
			  }
			st.setString(19,  unica);
			  
			System.out.println(request.getParameter("name"));
			System.out.println(request.getParameter("envtype"));
			System.out.println(request.getParameter("ostype"));
			System.out.println(request.getParameter("osversion"));
			System.out.println(request.getParameter("unica_version"));
			System.out.println(request.getParameter("appserver"));
			System.out.println(request.getParameter("appserverversion"));
			System.out.println(request.getParameter("systemdb"));
			System.out.println(request.getParameter("sysdbversion"));
			System.out.println(request.getParameter("user_db"));
			System.out.println(request.getParameter("hotfixes"));
			System.out.println(request.getParameter("locale"));
			System.out.println(request.getParameter("integrations"));
			System.out.println(request.getParameter("browsers"));
			System.out.println(request.getParameter("exceptionapproval"));
			System.out.println(request.getParameter("supportext"));
			System.out.println(request.getParameter("region"));
			System.out.println(request.getParameter("unica"));
			
			
			 
			
			//st.setInt(3, Integer.valueOf(request.getParameter("Age"))); 
			//st.setInt(4, Integer.valueOf(request.getParameter("Matches"))); 
			
			System.out.println("in Insertdata.....from insertdata.java" +st);

			// Execute the insert command using executeUpdate() 
			// to make changes in database
		
			st.executeUpdate(); 

			// Close all the connections 
			st.close(); 
			con.close(); 
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher( "/insertSuccess.jsp" );
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
