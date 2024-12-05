package com.utilities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Connection.dbConnection;

public class fetchID {
	public int getInitialUniqueID() {
		int cid = 0;
		
		
		try {
			
			dbConnection dbcon = new dbConnection();
			  Connection conn = dbcon.dbConnect();
			  String query = "Select max(cid) from Registration";
			  PreparedStatement stmt = conn.prepareStatement(query);
			  ResultSet rs = stmt.executeQuery();
			  
			  if(rs.next()) {
				  System.out.println(rs.getInt(1));
				  cid = rs.getInt(1);
			  }else {
				  System.out.println("No candidate id found!");
			  }
			  conn.close();
			  
		}
		catch(Exception e ){
			e.printStackTrace();
		}
		
		
		return cid;
	}
}
