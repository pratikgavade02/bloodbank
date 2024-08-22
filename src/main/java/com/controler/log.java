package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.connection;
import com.entity.regentity;
import com.module.pro_module;

/**
 * Servlet implementation class log
 */
@WebServlet("/log")
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public log() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String uname= request.getParameter("email");
		String ps = request.getParameter("pass");
		
		System.out.println(uname+ps);
		regentity obj= new regentity();
		obj.setPass(ps);
		obj.setEmail(uname);
		try {
		pro_module obj1 = new pro_module(connection.getConnection());
		regentity login = obj1.login(obj);
		System.out.println(login.toString());
		if(login!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("login", login);
			response.sendRedirect("index.jsp");
			System.out.println("login");
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
