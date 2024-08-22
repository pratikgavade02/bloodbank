package com.controler;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.connection;
import com.entity.addpro1;
import com.module.pro_module;

/**
 * Servlet implementation class addpro
 */
@WebServlet("/addpro")
@MultipartConfig
public class addpro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addpro() {
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
		String pname= request.getParameter("pname");
		String pd= request.getParameter("pd");
		String pp= request.getParameter("pp");
		InputStream inputStream=null;
		Part img = request.getPart("img");
		
		if(img!=null) {
			inputStream = img.getInputStream();
		}
		
		addpro1 obj = new addpro1();
		obj.setPname(pname);
		obj.setPd(pd);
		obj.setPrice(pp);
		byte[]b1= new byte [inputStream.available()];
		inputStream.read(b1);
		obj.setImage(b1);
		try {
		pro_module obj1 = new pro_module(connection.getConnection());
		boolean b;
		
			b = obj1.addproduct(obj);
			String name= "pratik";
			if(b) {
				response.sendRedirect("addpro.jsp");
				request.setAttribute("p1", name);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
	}

}
