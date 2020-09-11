<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Insert title here
    </title>
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>
    <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                       url = "jdbc:mysql://localhost/company"
                       user = "root"  password = ""/>
    <sql:query dataSource = "${snapshot}" var = "result">
      SELECT * from employe;
    </sql:query>
    <table width = "100%" style="border:none;">
      <tr>
        <th>Employe_code</th>
        <th>Name</th>
        <th>Designation</th>
        <th>DOJ</th>
      </tr>
      <c:forEach var = "row" items = "${result.rows}">
        <tr>
          <td style="text-align:center;">
            <c:out value = "${row.Employe_code}"/>
          </td>
          <td style="text-align:center;">
            <c:out value = "${row.Name}"/>
          </td>
          <td style="text-align:center;">
            <c:out value = "${row.Designation}"/>
          </td>
          <td style="text-align:center;">
            <c:out value = "${row.DOJ}"/>
          </td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
