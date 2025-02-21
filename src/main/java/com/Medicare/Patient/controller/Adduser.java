package com.Medicare.Patient.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Medicare.DataBaseConnection;
import com.Medicare.Patient.Model.Patient;


@WebServlet("/Adduser")
public class Adduser extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username =request.getParameter("username");
		String email=request.getParameter("email");
		String phoneNumber=request.getParameter("phoneNumber");
		
		Patient p= new Patient();
		p.setUserName(username);
		p.setEmail(email);
		p.setPhoneNumber(phoneNumber);
		
		int result =DataBaseConnection.SavePatient(p);
		if (result>0) {
			response.sendRedirect("desplayUser");
		} else {
			PrintWriter out = response.getWriter();
			out.println("Data not add ");

		}
		
		
	}

}
