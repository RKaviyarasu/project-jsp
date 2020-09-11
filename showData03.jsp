<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style.css">
</head>
<body>
	<sql:setDataSource var="database" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/company"
	user="root" password=""/>
	<sql:query dataSource="${database}" var="query">
		SELECT * FROM BOOKING;
	</sql:query>
	<table width="100%" style="border:none;">
		<tr>
			<th>Booking_id</th>
			<th>user</th>
			<th>Date</th>
			<th>Bus_id</th>
			<th>Seats_no</th>
			<th>Total_fare</th>
			<th>Bank</th>
			<th>Payment_method</th>
		</tr>
		<c:forEach var="row" items="${query.rows}">
			<tr>
				<td style="text-align:center"><c:out value="${row.Booking_id}"></c:out>
				<td style="text-align:center"><c:out value="${row.user}"></c:out>
				<td style="text-align:center"><c:out value="${row.Date}"></c:out>
				<td style="text-align:center"><c:out value="${row.Bus_id}"></c:out>
				<td style="text-align:center"><c:out value="${row.Seats_no}"></c:out>
				<td style="text-align:center"><c:out value="${row.Total_fare}"></c:out>
				<td style="text-align:center"><c:out value="${row.Bank}"></c:out>
				<td style="text-align:center"><c:out value="${row.Payment_method}"></c:out>
			</tr>
		</c:forEach>
	</table>
</body>
</html>