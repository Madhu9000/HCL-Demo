package net.codejava.ftp;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.jasper.tagplugins.jstl.core.Remove;

import com.sun.security.ntlm.Client;

//import it.sauronsoftware.ftp4j.connectors.HTTPTunnelConnector;

/**
 * @author SureshVu It should require below mentioned jar 
 * 			commons-net-1.2.1.jar
 *         commons-net-3.3-ftp.jar 
 *         apache-commons-net.jar
 * 
 *         Argements need to pass with this java class is
 * 
 *         FTP Host FTP Login FTP Password Directory path (i.e download)
 */

public class FtpConnection2 {

	public static void main(String args[]) {
		String FTPhost = args[0];
		String username = args[1];
		String password = args[2];
		String dir = args[3];
		//String remotePath = "/download";

		FTPClient ftp = new FTPClient();
		
		
		// iterates over the files and prints details for each
				DateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd");

				// To get the current system date in format yyyy-mm-dd
				Calendar cal = Calendar.getInstance();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String strDate = sdf.format(cal.getTime());
				System.out.println("Current date in String Format: " + strDate);
				// System.out.println("Current date is..." +sdf);
				
				Calendar calendar = Calendar.getInstance();
			    //  System.out.println("Current Date = " + calendar.getTime());
			      
			      // Decrementing days by 10days, we shold add this in arguements			      
			      int days = 10;
			      calendar.add(Calendar.DATE, -days);
			      System.out.println("Updated Date = " + calendar.getTime());
			      

		try {
			
			// transfer0.silverpop.com schikte@in.ibm.com Jan@2018 download
			//ftp.connect("transfer0.silverpop.com");
			//boolean login = ftp.login("schikte@in.ibm.com", "Jan@2018");
			
			ftp.connect(FTPhost);
			boolean login = ftp.login(username, password);
			if (login) {

				System.out.println("Connection established...");
				
				boolean success = ftp.changeWorkingDirectory(dir);
				
				FTPFile[] fs = ftp.listFiles();
				
				if (success) {
					String path = ftp.printWorkingDirectory();
					
					System.out.println("current working dir...." +path);
					
				for (FTPFile ff : fs) {
					//System.out.println(ff.getName());
					Date fileDate = ff.getTimestamp().getTime();
					
					if (fileDate.before(calendar.getTime()) ) {
						System.out.println("Age greaterthan 10days files...." +ff.getName() + ff.getSize());
						if(ff.getSize() == 0)
						{
						  System.out.println(ff.getName() +  "size is---> " +ff.getSize());
						  String delfile = path +"/"+ff.getName();
						  
						  System.out.println("File to delete is...." +delfile);
						  System.out.println("Zero File name is........." + ff.getName() + fileDate); //
						//System.out.println(client.deleteFile("7089733.err"));
								/*
								 * boolean exist = ftp.deleteFile(delfile);
								 * 
								 * 
								 * // Notify user for deletion if (exist) { System.out.println("File '"+ delfile
								 * + "' deleted..."); } // Notify user that file doesn't exist else {
								 * System.out.println("File '"+ delfile + "' doesn't exist...");
								 * 
								 * }
								 */
						 					 
					} else {
						//System.out.println("In side else...");
						System.out.println("Non-Zero files...." + ff.getName() +  fileDate);

					}
						
					}
				}
			}
				
						
				// Try to logout and return the respective boolean value
				boolean logout = ftp.logout();

				// If logout is true notify user
					if (logout) {
	
						System.out.println("Connection close...");
	
					}
					//  Notify user for failure  
					} else {
							System.out.println("Connection fail...");
					}

		} catch (IOException e) {

			e.printStackTrace();

		} finally {

			}
	}

	/*
	 * private static void deleteFile( FTPClient client) { //DateFormat dateFormater
	 * = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); FTPFile[] files;
	 * 
	 * // iterates over the files and prints details for each DateFormat
	 * dateFormater = new SimpleDateFormat("yyyy-MM-dd");
	 * 
	 * // To get the current system date in format yyyy-mm-dd Calendar cal =
	 * Calendar.getInstance(); SimpleDateFormat sdf = new
	 * SimpleDateFormat("yyyy-MM-dd"); String strDate = sdf.format(cal.getTime());
	 * System.out.println("Current date in String Format: " + strDate); //
	 * System.out.println("Current date is..." +sdf);
	 * 
	 * Calendar calendar = Calendar.getInstance();
	 * System.out.println("Current Date = " + calendar.getTime());
	 * 
	 * // Decrementing days by 10days, we shold add this in arguements int days =
	 * 50; calendar.add(Calendar.DATE, -days); System.out.println("Updated Date = "
	 * + calendar.getTime()); try { files = client.listFiles("/download");
	 * 
	 * for (FTPFile file : files) { String details = file.getName(); if
	 * (file.isDirectory()) { details = "[" + details + "]"; } details += "\t\t" +
	 * file.getSize(); details += "\t\t" +
	 * dateFormater.format(file.getTimestamp().getTime());
	 * 
	 * Date fileDate = file.getTimestamp().getTime();
	 * 
	 * if (file.getSize() == 0) { if(fileDate.before(calendar.getTime())) { //
	 * System.out.println(file.getName() + "is created on " + fileDate); String
	 * delfile = file.getName();
	 * 
	 * System.out.println("File to delete is...." +delfile);
	 * System.out.println("Zero File name is........." + file.getName() + fileDate);
	 * // //System.out.println(client.deleteFile("7089733.err")); boolean exist =
	 * client.deleteFile("delfile");
	 * 
	 * 
	 * // Notify user for deletion if (exist) { System.out.println("File '"+ delfile
	 * + "' deleted..."); } // Notify user that file doesn't exist else {
	 * System.out.println("File '"+ delfile + "' doesn't exist...");
	 * 
	 * }
	 * 
	 * } else { //System.out.println("In side else...");
	 * //System.out.println("Non-Zero files...." + file.getName() + fileDate);
	 * 
	 * }
	 * 
	 * // System.out.println(details); } } }catch (IOException e1) { // TODO
	 * Auto-generated catch block e1.printStackTrace(); }
	 * 
	 * }
	 */
}