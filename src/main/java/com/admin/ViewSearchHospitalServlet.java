package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewSearchHospitalServlet
 */
@WebServlet("/ViewSearchHospitalServlet")
public class ViewSearchHospitalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSearchHospitalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String name = request.getParameter("search");
		
		List<hospital>hosDetails = HospitalDBUtil.getHospitalDetails(name);
		request.setAttribute("hosDetails", hosDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("ViewHospitalList.jsp");
		dis.forward(request, response);
	}

}
