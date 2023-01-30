package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sign_up_Servlet
 */
@WebServlet("/sign_up_Servlet")
public class sign_up_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catch data from sign up form
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("birthday");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		if(!password.equals(repassword)){
			request.setAttribute("status", "mismatchpassandrepass");
			dispatcher = request.getRequestDispatcher("signup.jsp");
			dispatcher.forward(request, response);
		}
		
//		String encryptepass = md5(password);
		
//		PrintWriter out1 = response.getWriter();
//		out1.print(name);
//		out1.print(email);
//		out1.print(nic);
//		out1.print(password);
//		out1.print(gender);
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medic","root","20251218");
			
			PreparedStatement pst = con.prepareStatement("insert into patient(Name,Email,Password,Gender,NIC,DOB)values(?,?,?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, password);
			pst.setString(4, gender);
			pst.setString(5, nic);
			pst.setString(6, dob);
			
			
			
			int rowCount = pst.executeUpdate();  //execute query
			
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("home page.jsp");
				dispatcher.forward(request, response);
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
