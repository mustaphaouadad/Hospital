package com.Medicare;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Medicare.Patient.Model.Patient;





public class DataBaseConnection {
	
public static int SavePatient(Patient p) {
		
		int result =0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital2","root","0000");
			PreparedStatement pst =con.prepareStatement("INSERT INTO hospital2.patient (idPatient,userName,email,phoneNumber) values(?,?,?,?) ");
			pst.setInt(1, p.getIdPatient());
			pst.setString(2,p.getUserName());
			pst.setString(3, p.getEmail());
			pst.setString(4, p.getPhoneNumber());
			
			result=pst.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return result;
	}


public static List<Patient> getAllPatient(){
	List<Patient> p=new ArrayList<Patient>();
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital2","root","0000");
		Statement smt =  con.createStatement();
		ResultSet rs=  smt.executeQuery("SELECT * from hospital2.MediCare ");
		while (rs.next()) {
			Patient patient = new Patient();
			patient.setIdPatient(rs.getInt("idPatient"));
			patient.setUserName(rs.getString("userName"));
			patient.setEmail(rs.getString("email"));
			patient.setPhoneNumber(rs.getString("phoneNumber"));
			p.add(patient);
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return p;
}
	
}
