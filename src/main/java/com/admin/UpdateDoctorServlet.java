package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateDoctorServlet
 */
@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String id =request.getParameter("DID");
		String nic = request.getParameter("NIC");
		String name = request.getParameter("Name");
		String address = request.getParameter("Address");
		String email = request.getParameter("Email");
		String password = request.getParameter("password1");
		String phone = request.getParameter("phone");
		String Specialization = request.getParameter("Specialization");
		
		boolean isTrue;
		
		isTrue= DoctorDBUtil.updateDoctor(id, nic, name, address, email, password, phone, Specialization);
		
		if(isTrue==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("ManageUsers.jsp");
			dis.forward(request, response);
		
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Account updating error!!')");
			
			out.println("</script>");
		}
		
		
	}

}
