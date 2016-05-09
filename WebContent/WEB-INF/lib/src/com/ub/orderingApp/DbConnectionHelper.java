package com.ub.orderingApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class DbConnectionHelper {

	
	Connection conn;
	Statement st; 
	ResultSet rs;
	public DbConnectionHelper() {
		try{
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		    String url = "jdbc:ucanaccess://C:/Users/linyu/Desktop/Database1.accdb";
			String user = "";
			String password= "";
			conn = DriverManager.getConnection(url, user, password);
			st = conn.createStatement();
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		
	}
	
	public String display(){
		String display="";
	     
		try{
			String sql = "Select * from Table1";
			ResultSet rs= st.executeQuery(sql);
			 while(rs.next()){
			    	display+="<tr><td>"+rs.getString("user_name")+"</td><td>"+rs.getString("ssn")+"</td><td>"+rs.getString("email_address")+"</td><td><button onclick='del(this.id)' id="+rs.getString("ID")+" class='btn btn-sm btn-danger del'>Delete</button></td></tr>";
			}	
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	
		return display;
	}
}
