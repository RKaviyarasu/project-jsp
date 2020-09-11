<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String mobileNumber = request.getParameter("mobile-number");
	String password=request.getParameter("password");
	String location=request.getParameter("location");
	String pincode=request.getParameter("pin-code");
	String dob = request.getParameter("dob");
	String marriage = request.getParameter("marital");
	String address = request.getParameter("address");
	String blood = request.getParameter("blood");
	String nid = request.getParameter("nid");
	String education = request.getParameter("edu");
	String passport = request.getParameter("passport");
	String family = request.getParameter("family");
	String eContact = request.getParameter("e-contact");
	String gender = request.getParameter("gender");
	String name = fname +" "+ lname;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "");
		Statement st = conn.createStatement();
		int i = st.executeUpdate("insert into userdata(Name,Mobile_number,Location,Pin_code,Password,Email,DOB,Marital_status,Address,Blood,N_id,education,Passport,Father_name,Emergency_contact,Gender)values('"+name+"','"+mobileNumber+"','"+location+"','"+pincode+"','"+password+"','"+email+"','"+dob+"','"+marriage+"','"+address+"','"+blood+"','"+nid+"','"+education+"','"+passport+"','"+family+"','"+eContact+"','"+gender+"')");
		if(i > 0){
			response.sendRedirect("signIn.html");
		} else{
			response.sendRedirect("signUp.html");
		}
	} catch(Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>