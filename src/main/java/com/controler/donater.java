package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.bloodr;
import com.module.pro_module;

/**
 * Servlet implementation class donater
 */
@WebServlet("/donater")
public class donater extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donater() {
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String bg = request.getParameter("bg");
		
		
		if(name.isEmpty() || email.isEmpty() || city.isEmpty() || bg.isEmpty()) {
			response.sendRedirect("BloodR.jsp");
			System.out.println("all filds are requare");
		}
		
		bloodr obj = new bloodr();
		obj.setName(name);
		obj.setEmail(email);
		obj.setCity(city);
		obj.setBg(bg);
		try {
		pro_module obj1 = new pro_module(connection.getConnection());
		boolean b =obj1.bloodre(obj);
		if(b) {
			response.sendRedirect("BloodR.jsp");
		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
