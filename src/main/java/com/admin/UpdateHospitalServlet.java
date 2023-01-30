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
 * Servlet implementation class UpdateHospitalServlet
 */
@WebServlet("/UpdateHospitalServlet")
public class UpdateHospitalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHospitalServlet() {
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
		
		String Hid = request.getParameter("HID");
		String Name = request.getParameter("Name");
		String Location = request.getParameter("Location");
		String email = request.getParameter("Email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue = HospitalDBUtil.updteHospital(Hid, Name, Location, email, password, phone);
		
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
