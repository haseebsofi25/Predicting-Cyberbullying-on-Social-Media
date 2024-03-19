package com.update;

import java.sql.SQLException;

import com.connection.DataBaseImpl;

public class UpdatePerform {

	DataBaseImpl db=new DataBaseImpl();
	int i=0;
	
	public int getQuery(String sql) {
		try {
		i=db.getConnection().createStatement().executeUpdate(sql);
		}catch(Exception e) {
			System.out.println(e);
		}
		return i;
	}
}
