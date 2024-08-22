package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.regentity;
import com.module.pro_module;

/**
 * Servlet implementation class reg
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
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
		
		String name= request.getParameter("name");
		String email=request.getParameter("email");
		String pass = request.getParameter("pass");
		String add= request.getParameter("add");
		String city = request.getParameter("city");
		
		System.out.println(name+email+pass+add+city);
		
		 if (name.trim().isEmpty() || email.trim().isEmpty()) {
	           response.sendRedirect("register.jsp");
	            System.out.println("Name and email are required fields.");
	            return;
	        }
		regentity obj = new regentity();
		obj.setName(name);
		obj.setEmail(email);
		obj.setPass(pass);
		obj.setAdd(add);
		obj.setCity(city);
		
		try {
			
			pro_module obj1 = new pro_module(connection.getConnection());
			boolean b = obj1.regrec(obj);
			if(b) {
				response.sendRedirect("login.jsp");
				System.out.println("record inserted");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		}
	}


