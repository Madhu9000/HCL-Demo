package org.hcl.webapps.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleDBConnection {

	public static Connection getOracleConnection() throws SQLException {
		System.out.println("In OracleDBConnection......");
		String hostName = "emm912and10.in.ibm.com";
		String dbName = "orcl131";
		String userName = "demo";
		String password = "demo";
		String connectionURL = "jdbc:oracle:thin:@emm912and10.in.ibm.com:1539:orcl131";
		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}

	/*
	 * create trigger customer_name before update or insert on CUSTOMERINFO for each
	 * row begin convert character values to upper case :new.name := upper(
	 * :new.name ); dbms_output.put_line('trigger fired'); end;
	 */
	public static void closeQuietly(Connection conn) {
		try {
			conn.close();
		} catch (Exception e) {
		}
	}

	public static void rollbackQuietly(Connection conn) {
		try {
			conn.rollback();
		} catch (Exception e) {
		}
	}
}
