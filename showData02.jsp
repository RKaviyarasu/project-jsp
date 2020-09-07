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
	url="jdbc:mysql://localhost/ka"
	user="root" password=""/>
	<sql:query dataSource="${database}" var="query">
		SELECT * FROM KAV;
	</sql:query>
	<table border="1" width="50%" style="border-collapse:collapse;font-size:10px;">
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>email</th>
			<th>Password</th>
		</tr>
		<c:forEach var="row" items="${query.rows}">
			<tr>
				<td style="text-align:center"><c:out value="${row.id}"></c:out>
				<td style="text-align:center"><c:out value="${row.first_Name}"></c:out>
				<td style="text-align:center"><c:out value="${row.last_name}"></c:out>
				<td style="text-align:center"><c:out value="${row.email}"></c:out>
				<td style="text-align:center"><c:out value="${row.pass}"></c:out>
			</tr>
		</c:forEach>
	</table>
</body>
</html>