package com.ub.order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionHelper {
	Connection conn;
	Statement st; 
	ResultSet rs;
	public ConnectionHelper() {
		try{
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		    String url = "jdbc:ucanaccess://C:/Users/abdib/Documents/Database6.accdb";
			String user= "";
			String password= "";
			conn = DriverManager.getConnection(url, user, password);
			st = conn.createStatement();
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		
	}
	public boolean auth(String email,String password){
		boolean display=false;
	     
		try{
			String sql = "Select * from user WHERE Email='"+email+"' AND password='"+password+"'";
			ResultSet rs=st.executeQuery(sql);
			
			 while(rs.next()){
				 display=true;
			}	
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	
		return display;
	}
	public String insert(String first,String ssn,String email){
	 try{ 
         st.executeUpdate("INSERT INTO Users(user_name,ssn,email_address) Values('"+first+"','"+ssn+"','"+email+"')"); 
     }catch(Exception se){
    	 System.out.println("sql error!");
     } 
     return "ok"; 
	}
	public void delete(int a){
		try{
			String sql = "DELETE FROM Users WHERE ID="+a;
			st.executeUpdate(sql);
			 
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	
	}
	public void closecon(){ 
		try{ 
		conn.close(); 
		}catch(Exception se){System.out.println("sql error!");} 
	}  
}
