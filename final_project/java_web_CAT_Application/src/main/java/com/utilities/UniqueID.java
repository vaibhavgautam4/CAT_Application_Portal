package com.utilities;

//import java.sql.Connection;
//import java.sql.*;
////import java.sql.PreparedStatement;
//import java.sql.ResultSet;
////import java.sql.Statement;
//
//import com.Connection.dbConnection;

public class UniqueID {
	private int candidateid;
	

	
	public UniqueID() {
		
	}

	public void setUniqueID(int candidateid) {
		this.candidateid = candidateid;
	}
	
	public int uniqueID() {
		return candidateid;
	}
}
