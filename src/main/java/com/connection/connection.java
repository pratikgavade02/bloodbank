package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection {
	public static Connection con;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
			
			
		
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return con;
}

}
