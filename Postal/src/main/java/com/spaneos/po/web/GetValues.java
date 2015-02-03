package com.spaneos.po.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spaneos.po.pojo.Details;

/**
 * Servlet implementation class GetValues
 */
@WebServlet("*.do")
public class GetValues extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetValues() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		HttpSession session=request.getSession();
		
		Details details=new Details();
		details.setFname(request.getParameter("first_name"));
		details.setLname(request.getParameter("last_name"));
		details.setEmail(request.getParameter("email"));
		details.setPwd(request.getParameter("password"));
		details.setMobile(request.getParameter("mobile"));
		details.setDoorno(request.getParameter("door_no"));
		details.setStreet(request.getParameter("street"));
		details.setCity(request.getParameter("city"));
		details.setState(request.getParameter("state"));
		details.setPincode(request.getParameter("pincode"));
		
		session.setAttribute("details",details);
		response.sendRedirect("landing.jsp");
		
		
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
