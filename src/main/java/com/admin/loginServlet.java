package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con =null;
	private static Statement stmt = null;   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("select * from patient where Email = ? and Password = ?");
			pst.setString(1,email);
			pst.setString(2,password);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("email", rs.getString("Email"));
				session.setAttribute("name", rs.getString("Name"));
				session.setAttribute("dob", rs.getString("DOB"));
				session.setAttribute("password", rs.getString("Password"));
				session.setAttribute("gender", rs.getString("Gender"));
				session.setAttribute("nic", rs.getString("NIC"));
				session.setAttribute("pid", rs.getString("PID"));
				dispatcher = request.getRequestDispatcher("patient_home_page.jsp");
			}else {
				PreparedStatement pst1 = con.prepareStatement("select * from hospital where Email = ? and Password = ?");
				pst1.setString(1,email);
				pst1.setString(2,password);
				
				ResultSet rs1 = pst1.executeQuery();
				if(rs1.next()) {
					session.setAttribute("email", rs1.getString("Email"));
					session.setAttribute("name", rs1.getString("Name"));
					dispatcher = request.getRequestDispatcher("hospital log in.jsp");
				}else {
					
					PreparedStatement pst2 = con.prepareStatement("select * from administrator where Email = ? and Password = ?");
					pst2.setString(1,email);
					pst2.setString(2,password);
					
					ResultSet rs2 = pst2.executeQuery();
				    if(rs2.next()) {
						session.setAttribute("email", rs2.getString("Email"));
						session.setAttribute("name", rs2.getString("Name"));
						session.setAttribute("ID", rs2.getString("ADM_ID"));
						session.setAttribute("phone", rs2.getString("phone_number"));
						session.setAttribute("userName", rs2.getString("user_name"));
						session.setAttribute("password", rs2.getString("Password"));
						response.sendRedirect("AdminDashboard.jsp");
					
						
						
						dispatcher = request.getRequestDispatcher("AdminProfile.jsp");
					}else {
				
						PreparedStatement pst3 = con.prepareStatement("select * from doctor where Email = ? and Password = ?");
						pst3.setString(1,email);
						pst3.setString(2,password);
						
						ResultSet rs3 = pst3.executeQuery();
				        if(rs3.next()) {
							session.setAttribute("email", rs2.getString("Email"));
							session.setAttribute("name", rs2.getString("Name"));
							
							
							dispatcher = request.getRequestDispatcher("doctor.jsp");
				        }else {
				        	request.setAttribute("status","failed");
					        dispatcher = request.getRequestDispatcher("signin.jsp");
				        }
				}
			}	
				
			
			} dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
