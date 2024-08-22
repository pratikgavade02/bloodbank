package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.donate;
import com.module.pro_module;

/**
 * Servlet implementation class donate
 */
@WebServlet("/donate")
public class donateE extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donateE() {
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
		String name= request.getParameter("uname");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String bg = request.getParameter("bg");
		String age = request.getParameter("age");
		
		if(name.isEmpty()  || email.isEmpty() || city.isEmpty() || bg.isEmpty()||age.isEmpty()) {
			response.sendRedirect("donate.jsp");
			System.out.println("all filds are requared");
		}
		
		
		System.out.println(name+email+city+bg+age);
		donate obj = new donate();
		obj.setName(name);
		obj.setEmail(email);
		obj.setCity(city);
		obj.setBg(bg);
		obj.setAge(age);
		
		try {
		pro_module obj1= new pro_module(connection.getConnection());
		boolean b = obj1.donateinsert(obj);
		if(b) {
			response.sendRedirect("donate.jsp");
		}
		else {
			response.sendRedirect("donate.jsp");
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
