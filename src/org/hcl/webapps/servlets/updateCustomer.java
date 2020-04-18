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
@WebServlet("/updateCustomer")
public class updateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			// Initialize the database
			Connection con = OracleDBConnection.getOracleConnection();

			// Create a SQL query to insert data into demo table
			// demo table consists of two columns, so two '?' is used
			System.out.println("in Update tdata.....");

			/*
			 * String name=request.getParameter("name"); String
			 * env_type=request.getParameter("env_type"); String
			 * os=request.getParameter("os"); String
			 * osversion=request.getParameter("osversion"); String
			 * unica_version=request.getParameter("unica_version"); String
			 * appserver=request.getParameter("appServer"); String
			 * appserverversion=request.getParameter("appserverversion"); String
			 * sys_db=request.getParameter("sys_db"); String
			 * sysdbversion=request.getParameter("sysdbversion"); String
			 * user_db=request.getParameter("user_db"); String
			 * hotfixes=request.getParameter("hotfixes"); String
			 * locale=request.getParameter("locale"); String
			 * integrations=request.getParameter("integrations"); String
			 * browsers=request.getParameter("browsers"); String
			 * exceptionapproval=request.getParameter("exceptionapproval"); String
			 * supportext=request.getParameter("supportext"); String
			 * region=request.getParameter("region"); String
			 * unicaproducts=request.getParameter("unica");
			 */
			String name1=request.getParameter("name");
			String 	env_type1=request.getParameter("env_type");
			// response.setContentType("text/html");
			// PrintWriter out=response.getWriter();

			/*
			 * String sql =
			 * "update CUSTOMERINFO set name=?,env_type=?, os=?, osversion=?, unica_version=?, appserver=?, appserverversion=?, "
			 * +
			 * "sys_db=?,sysdbversion=?,user_db=?,	hotfixes=?,locale=?,integrations=?,browsers=?,exceptionapproval=?,supportext=?,"
			 * + "region=?,unicaproducts=?, CREATEDATE=? where NAME like '%" + name1 +
			 * "%' AND " + "ENV_TYPE like '%" + env_type1 + "%' ";
			 */
			String sql = "update CUSTOMERINFO set  os=?, osversion=?, unica_version=?, appserver=?, appserverversion=?, "
					+ "sys_db=?,sysdbversion=?,user_db=?,	hotfixes=?,locale=?,integrations=?,browsers=?,exceptionapproval=?,supportext=?,"
					+ "region=?,unicaproducts=?, CREATEDATE=? where NAME like '%" + name1 + "%' AND " + "ENV_TYPE like '%" + env_type1
					+ "%' ";
			PreparedStatement st = con.prepareStatement(sql);
			System.out.println("in Update data after PS....." + sql);

			// For the first parameter,
			// get the data using request object
			// sets the data to st pointer

			/*
			 * st.setString(1, request.getParameter("name"));
			 * 
			 * st.setString(2, request.getParameter("envtype"));
			 */

			st.setString(1, request.getParameter("os"));
			st.setString(2, request.getParameter("osversion"));

			// st.setString(5, request.getParameter("unicaproducts"));
			st.setString(3, request.getParameter("unica_version"));

			st.setString(4, request.getParameter("appServer"));
			st.setString(5, request.getParameter("appserverversion"));

			st.setString(6, request.getParameter("sys_db"));
			st.setString(7, request.getParameter("sysdbversion"));

			st.setString(8, request.getParameter("user_db"));

			st.setString(9, request.getParameter("hotfixes"));

			st.setString(10, request.getParameter("locale"));
			st.setString(11, request.getParameter("integrations"));

			st.setString(12, request.getParameter("browsers"));
			st.setString(13, request.getParameter("exceptionapproval"));
			st.setString(14, request.getParameter("supportext"));

			st.setString(15, request.getParameter("region"));
			st.setString(16, request.getParameter("unica"));

			st.setTimestamp(17, new java.sql.Timestamp(System.currentTimeMillis()));

			/*
			 * To Get multiple check boxes values in single column String unica = ""; String
			 * a[]=request.getParameterValues("unica"); for(int i=0;i<a.length;i++) {
			 * voucher+=a[i]+","; if (i == a.length-1) { unica+=a[i];
			 * System.out.println("unica is...." +voucher); }else { unica+=a[i]+",";
			 * 
			 * System.out.println("unica is...." +voucher); } } st.setString(19, unica);
			 */

			/*
			 * st.setString(1, "name"); st.setString(2, "env_type"); st.setString(3, "os");
			 * st.setString(4, "osversion"); //st.setString(5, "unica"); st.setString(5,
			 * "unica_version"); st.setString(6, "appServer"); st.setString(7,
			 * "appserverversion"); st.setString(8, "sys_db"); st.setString(9,
			 * "sysdbversion"); st.setString(10, "user_db"); st.setString(11, "hotfixes");
			 * st.setString(12, "locale"); st.setString(13, "integrations");
			 * st.setString(14, "browser"); st.setString(15, "exceptionapproval");
			 * st.setString(16, "supportext"); st.setString(17, "region"); st.setString(18,
			 * "unica");
			 */

			// st.setTimestamp(19, new java.sql.Timestamp(System.currentTimeMillis()));
			// st.setString(19, "unica");

			/*
			 * To Get multiple check boxes values in single column String unica = ""; String
			 * a[]=request.getParameterValues("unica"); for(int i=0;i<a.length;i++) {
			 * voucher+=a[i]+","; if (i == a.length-1) { unica+=a[i];
			 * System.out.println("unica is...." +voucher); }else { unica+=a[i]+",";
			 * 
			 * System.out.println("unica is...." +voucher); } } st.setString(19, unica);
			 */

			System.out.println(request.getParameter("name"));
			System.out.println(request.getParameter("env_type"));
			System.out.println(request.getParameter("os"));
			System.out.println(request.getParameter("osversion"));
			System.out.println(request.getParameter("unica_version"));
			System.out.println(request.getParameter("appServer"));
			System.out.println(request.getParameter("appserverversion"));
			System.out.println(request.getParameter("sys_db"));
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

			// st.setInt(3, Integer.valueOf(request.getParameter("Age")));
			// st.setInt(4, Integer.valueOf(request.getParameter("Matches")));

			System.out.println("in Insertdata.....from insertdata.java" + st);

			// Execute the insert command using executeUpdate()
			// to make changes in database

			st.executeUpdate();

			// Close all the connections
			st.close();
			con.close();

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateSuccess.jsp");
			dispatcher.forward(request, response);
			// Get a writer pointer
			// to display the successful result
			/*
			 * PrintWriter out = response.getWriter();
			 * out.println("<html><body><b>Successfully Inserted" + "</b>" + "" +
			 * "<br><br> <a href=helloWorld.jsp target=''> <font size=\"+2\"\r\n" +
			 * "								color=\"green\">Back to Home</font></a></body></html>"
			 * );
			 */
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
