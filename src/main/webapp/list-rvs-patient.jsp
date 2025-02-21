

<%@page import="com.Medicare.Patient.Model.Patient"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="componenet/AllCss.jsp" %>
<title>Insert title here</title>
</head>
<body>
<%@ include file="componenet/navbar.jsp" %>
<h1>vidlist </h1>

<% List<Patient> p=(List<Patient>)request.getAttribute("data"); %>


    <% for(Patient temp:p) {%>
                <tr>
                <td><%= temp.getUserName() %></td>
                <td><%= temp.getEmail() %></td>
                <td><%= temp.getPhoneNumber() %></td>
              
              
                
                </tr>
                
                <%} %>



</body>
</html>