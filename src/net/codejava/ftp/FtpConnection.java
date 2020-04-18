package net.codejava.ftp;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.jasper.tagplugins.jstl.core.Remove;

import com.sun.security.ntlm.Client;

/**
 * @author SureshVu It should require below mentioned jar 
 * 			commons-net-1.2.1.jar
 *          commons-net-3.3-ftp.jar 
 *          apache-commons-net.jar
 * 
 *         Argements need to pass with this java class is
 * 
 *         FTP Host 
 *         FTP Login 
 *         FTP Password 
 *         Directory path (i.e download)
 *         Log file path
 */

public class FtpConnection {

	public static void main(String args[]) {
		String FTPhost = args[0];
		String username = args[1];
		String password = args[2];
		String dir = args[3];
		// String logs= args[4];
		String logs = "C:\\Users\\sureshvu\\Desktop\\code\\";

		Logger logger = Logger.getLogger("MyLog");
		FileHandler fh;

		FTPClient client = new FTPClient();

		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(cal.getTime());

		try {

			// This block configure the logger with handler and formatter
			fh = new FileHandler(logs + "ftpClean.log", true);
			logger.addHandler(fh);
			SimpleFormatter formatter = new SimpleFormatter();
			fh.setFormatter(formatter);
			logger.info("*******************************************************************");
			logger.info("FTP server Cleaning--->  " + strDate);
			logger.info("*******************************************************************");
			logger.info("FTPhost...:" + FTPhost);
			logger.info("username...:" + username);
			// System.out.println("password...:" + password);
			logger.info("dir...:" + dir);
			logger.info("log path-->" + logs);

			client.connect("transfer0.silverpop.com");
			// client.connect(FTPhost);

			// Try to login and return the respective boolean value
			boolean login = client.login("schikte@in.ibm.com", "Jan@2018");
			// boolean login = client.login(username,password);

			// If login is true notify user

			if (login) {
				logger.info("Connection established...");
				// lists files and directories in the current working directory
				FTPFile[] files = client.listFiles("/download");
				// FTPFile[] files = client.listFiles(dir);

				printFileDetails(files);
				deleteFile(client, logger);

				// Try to logout and return the respective boolean value
				boolean logout = client.logout();

				// If logout is true notify user
				if (logout) {
					logger.info("*******************************************************************");
					logger.info("Connection close...");
					logger.info("*******************************************************************");
				}
				// Notify user for failure
			} else {
				logger.warning("Connection fail...");
			}

		} catch (IOException e) {

			e.printStackTrace();

		} finally {

			try {
				// close connection

				client.disconnect();

			} catch (IOException e) {

				e.printStackTrace();

			}

		}
	}

	private static void printFileDetails(FTPFile[] files) {
		DateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (FTPFile file : files) {
			String details = file.getName();
			if (file.isDirectory()) {
				details = "[" + details + "]";
			}
			details += "\t\t" + file.getSize();
			details += "\t\t" + dateFormater.format(file.getTimestamp().getTime());

			// System.out.println(details);
		}
	}

	private static void deleteFile(FTPClient client, Logger logger) {
		logger.info("log started in deleteFile");
		// DateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		FTPFile[] files;

		// iterates over the files and prints details for each
		DateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd");

		// To get the current system date in format yyyy-mm-dd
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(cal.getTime());
		System.out.println("Current date in String Format: " + strDate);
		// System.out.println("Current date is..." +sdf);

		Calendar calendar = Calendar.getInstance();
		logger.info("Current Date = " + calendar.getTime());

		// Decrementing days by 10days, we shold add this in arguements
		int days = 56;
		calendar.add(Calendar.DATE, -days);
		logger.info("Current date minus number of days old file--> " + calendar.getTime());
		try {
			files = client.listFiles("/download");

			for (FTPFile file : files) {
				String details = file.getName();
				if (file.isDirectory()) {
					details = "[" + details + "]";
				}
				details += "\t\t" + file.getSize();
				details += "\t\t" + dateFormater.format(file.getTimestamp().getTime());

				Date fileDate = file.getTimestamp().getTime();

				if (fileDate.before(calendar.getTime())) {
					// System.out.println("Zero files.." +file.getName() +"size is "
					// +file.getSize());
					logger.info(file.getName() + "is created on" + fileDate);
					if (file.getSize() == 0) {
						// System.out.println(file.getName() + "is created on " + fileDate);
						logger.info(file.getName() + " file size is ..." + file.getSize());
						String delfile = file.getName();

						logger.info("File to delete is...." + delfile);
						// System.out.println("Zero File name is........." + file.getName() + fileDate);
						// //
						// System.out.println(client.deleteFile("7089733.err"));
						// boolean exist = client.deleteFile("delfile");

						// Notify user for deletion
						/*
						 * if (exist) { System.out.println("File '"+ delfile + "' deleted..."); } //
						 * Notify user that file doesn't exist else { System.out.println("File '"+
						 * delfile + "' doesn't exist...");
						 * 
						 * }
						 */

					}
					// System.out.println(details);
				} // System.out.println(file.getName() + "file size is " +file.getSize());
			}
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}
}