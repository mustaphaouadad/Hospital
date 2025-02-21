package com.Medicare.Patient.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Medicare.DataBaseConnection;
import com.Medicare.Patient.Model.Patient;




@WebServlet("/desplayUser")
public class desplayUser extends HttpServlet {
	
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Patient> p =DataBaseConnection.getAllPatient();
		RequestDispatcher dispatcher = request.getRequestDispatcher("list-rvs-patient.jsp");
		request.setAttribute("data", p);
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
