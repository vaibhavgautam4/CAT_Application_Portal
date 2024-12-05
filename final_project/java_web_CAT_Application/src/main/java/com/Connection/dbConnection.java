package com.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {
	private static final String dbUrl = "jdbc:derby:D:\\Users\\2726879\\MyDB;create=true";
public Connection dbConnect() {
	Connection con = null;
	try {
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		con=DriverManager.getConnection(dbUrl);
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
}
}