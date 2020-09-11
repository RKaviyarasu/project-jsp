<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String phoneNumber=request.getParameter("usr");
	String password=request.getParameter("password");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","");
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select * from userdata where Mobile_number='"+phoneNumber+"' and Password='"+password+"'");
		if(rs.next()== false){
			response.sendRedirect("signIn.html");
		} else if(rs.getString("Password").equals(password)&&rs.getString("Mobile_number").equals(phoneNumber)) {
				session.setAttribute("user", phoneNumber);
				response.sendRedirect("details.jsp");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
