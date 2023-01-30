package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DoctorDBUtil {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertDoctor(String DID , String NIC , String Name , String address , String email , String password ,String gender , String phone , String specialization , String Picname ) {
		isSuccess=false;
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="insert into doctor values ('"+DID+"','"+NIC+"','"+Name+"','"+address+"','"+email+"','"+password+"','"+gender+"','"+phone+"','"+specialization+"','"+Picname+"')";
			int rs =stmt.executeUpdate(sql);
			
			if(rs> 0) {
				isSuccess = true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<doctor>getDoctorDetails(){
		ArrayList<doctor> doc = new ArrayList<>();
		
		try {
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from doctor"; 
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String ID = rs.getString(1);
				String NIC = rs.getString(2);
				String Name = rs.getString(3);
				String address =rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				String gender = rs.getString(7);
				String phone = rs.getString(8);
				String specialization = rs.getString(9);
				String Picname = rs.getString(10);
				
				doctor D = new doctor(Name,phone,email,password,ID,NIC,address,gender,specialization,Picname);
				doc.add(D);
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return doc;
		
	}
	public static List<doctor>getDoctorDetails(String name){
		ArrayList<doctor> doc = new ArrayList<>();
		
		try {
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from doctor where name like '%"+name+"%'"; 
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String ID = rs.getString(1);
				String NIC = rs.getString(2);
				String Name = rs.getString(3);
				String address =rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				String gender = rs.getString(7);
				String phone = rs.getString(8);
				String specialization = rs.getString(9);
				String Picname = rs.getString(10);
				
				doctor D = new doctor(Name,phone,email,password,ID,NIC,address,gender,specialization,Picname);
				doc.add(D);
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return doc;
		
	}
	
	public static boolean deleteDoctor(String id) {
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "delete from doctor where DID = '"+id+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	public static boolean updateDoctor(String id , String NIC , String name , String address , String email , String password , String phone ,String specialization ) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update doctor set name='"+name+"' , NIC = '"+NIC+"' ,address='"+address+"' , email = '"+email+"',phone='"+phone+"' ,password = '"+password+"' , specialization = '"+specialization+"' where DID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
			}
			else {
				isSuccess=false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	} 
	
	

}
