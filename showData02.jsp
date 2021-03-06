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
		SELECT * FROM BUS;
	</sql:query>
	<table width="100%" style="border:none;">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Origin</th>
			<th>Destination</th>
			<th>Seats</th>
			<th>Arrival_time</th>
			<th>Departure_time</th>
			<th>Date</th>
			<th>Fare</th>
		</tr>
		<c:forEach var="row" items="${query.rows}">
			<tr>
				<td style="text-align:center"><c:out value="${row.id}"></c:out>
				<td style="text-align:center"><c:out value="${row.Name}"></c:out>
				<td style="text-align:center"><c:out value="${row.Origin}"></c:out>
				<td style="text-align:center"><c:out value="${row.Destination}"></c:out>
				<td style="text-align:center"><c:out value="${row.Seats}"></c:out>
				<td style="text-align:center"><c:out value="${row.Arrival_time}"></c:out>
				<td style="text-align:center"><c:out value="${row.Departure_time}"></c:out>
				<td style="text-align:center"><c:out value="${row.Date}"></c:out>
				<td style="text-align:center"><c:out value="${row.Fare}"></c:out>
			</tr>
		</c:forEach>
	</table>
</body>
</html>