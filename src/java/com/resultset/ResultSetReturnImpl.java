package com.resultset;

import java.sql.ResultSet;

import com.connection.DataBaseImpl;

public class ResultSetReturnImpl implements ResultSetReturn {
 static ResultSet rs=null;
 DataBaseImpl db=new DataBaseImpl();
 
	@Override
	public ResultSet getExecuteQuery(String sql) {
	try {
		rs=db.getConnection().createStatement().executeQuery(sql);
	}catch(Exception e) {
		System.out.println(e);
	}
		return rs;
	}

}
