package org.hcl.webapps.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hcl.webapps.connection.OracleDBConnection;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Connection con3 = OracleDBConnection.getOracleConnection();
			System.out.println("in Insertdata.....");
			//PreparedStatement stmt = con3.prepareStatement("insert into user_account values(?, ?, ?, ?,?)");

			//System.out.println("in Insertdata after PS....." + stmt);

			// TODO Auto-generated method stub
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String address = request.getParameter("address");
			// String contact = request.getParameter("contact");

			System.out.println(first_name);

			/*
			 * String sql =
			 * "SELECT NAME,SPOC,ENV_TYPE,UNICA_VERSION,OS_VERSION,APPSERVER,SYS_DB,USER_DB,HOTFIXES,LOCALE,INTEGRATIONS,REGION FROM "
			 * + "CUSTOMERDATA1 WHERE NAME like '%" + customername + "%'";
			 * 
			 * String
			 * insertsql="insert into members(first_name, last_name, username, password, address) values "
			 * ('" + first_name + "','" + last_name + "','" + username + "',
			 * '" + password + "','" + address ")"; // ResultSet rset = stmt.executeQuery();
			 * 
			 *
			 */
			String sql = "insert into user_account(first_name, last_name, username, password, address) " + "values ('"
					+ first_name + "','" + last_name + "','" + username + "','" + password + "','" + address + "')";

			final DateFormat sdf = new SimpleDateFormat("dd-mm-yy");
			Date date = new Date();
			System.out.println(sdf.format(date));
			// System.out.println(java.time.LocalDate.now());

			/*
			 * stmt.
			 * executeUpdate("insert into user_account(first_name, last_name, username, password, address, regdate) "
			 * + "values ('" + first_name + "','" + last_name + "','" + username + "','" +
			 * password + "','" + address + "', sdf.format(date))");
			 */
			/*
			 * stmt.
			 * executeUpdate("insert into user_account(first_name, last_name, username, password, address) "
			 * + "values ('" + first_name + "','" + last_name + "','" + username + "','" +
			 * password + "','" + address + "')");
			 */
			//System.out.println("after executequery");
			PreparedStatement stmt = con3 
					.prepareStatement(sql); 
				System.out.println("in Insertdata after PS....." +stmt);

			if (first_name.isEmpty() || last_name.isEmpty() || username.isEmpty() || password.isEmpty()
					|| address.isEmpty()) {
				System.out.println("User details not added");
				RequestDispatcher req = request.getRequestDispatcher("Register.jsp");
				req.include(request, response);
			} else {
				System.out.println(first_name);

				System.out.println("User Registered...." + stmt.executeQuery());
				stmt.executeUpdate(sql);
				// st.executeQuery();
				System.out.println("After executeQuery......");
				RequestDispatcher req = request.getRequestDispatcher("helloWorld.jsp");
				req.forward(request, response);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}