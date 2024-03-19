package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseImpl implements DataBase {

	@Override
	public Connection getConnection() {
		Connection con=null;
		try {
			String url="jdbc:mysql://localhost:3306/cyber";
                        String username="root";
                        String password="root";
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,username,password);
                      
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return con;
	}

}
