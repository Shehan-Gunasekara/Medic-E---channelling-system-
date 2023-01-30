package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HospitalDBUtil {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertHospital(String HID ,String Name , String Location ,String Phone , String Email , String Password ,String LogoName ) {
		isSuccess=false;
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="insert into hospital values ('"+HID+"','"+Name+"','"+Location+"','"+Phone+"','"+Email+"','"+Password+"','"+LogoName+"')";
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
	public static List<hospital>getHospitalDetails(){
		ArrayList<hospital> hos = new ArrayList<>();
		try {
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from hospital"; 
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String ID = rs.getString(1);
				String Name = rs.getString(2);
				String Location =rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				String LogoName = rs.getString(7);
				
				hospital H = new hospital(Name,phone,email,password,ID,Location,LogoName);
				hos.add(H);
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return hos;
		
	}
	
	public static List<hospital>getHospitalDetails(String name){
		ArrayList<hospital> hos = new ArrayList<>();
		try {
			con =DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "select * from hospital where Name like '%"+name+"%'"; 
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String ID = rs.getString(1);
				String Name = rs.getString(2);
				String Location =rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				String LogoName = rs.getString(7);
				
				hospital H = new hospital(Name,phone,email,password,ID,Location,LogoName);
				hos.add(H);
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return hos;
		
	}
	public static boolean deleteHospital(String ID) {
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "delete from hospital where HID ='"+ID+"'";
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
	public static boolean updteHospital(String id , String name , String Location , String email , String password , String phone) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update hospital set Name = '"+name+"' , Location = '"+Location+"' , phone='"+phone+"',email = '"+email+"' , password = '"+password+"' where HID = '"+id+"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
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
	
	
}
