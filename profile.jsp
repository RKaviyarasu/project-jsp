<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Insert title here
    </title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <style type="text/css">
      <style type="text/css">
      body{
        margin: 11px 0px 0px 30px;
        background: rgb(239,239,239);
      }
      .box{
        margin: 3px 0px 0px 0px;
        border: 1px solid black;
        width: 1260px;
        height: 600px;
      }
      .container{
        width: 1260px;
        height: 73px;
        display: inline-flex;
        background: #fff;
      }
      .box-1{
        margin: 5px;
        height: 60px;
      }
      .img-box{
        border-radius:10px;
        width: 65px;
        height: 58px;
        background: #0460c7;
      }
      .img-box img{
        margin: 5px 10px;
        border-radius: 20px;
      }
      .detail-box{
        width:400px;
        height: 65px;
        margin: 3px 0px 0px 20px;
      }
      .detail-head{
        font-size:18px;
        font-family:sans-serif;
        margin:14px 0px 0px 5px;
      }
      .u-id{
        font-size:18px;
        font-family:sans-serif;
      }
      .detail-p{
        margin: 7px 0px 0px 5px;
      }
      .detail-lo{
        width:300px;
        height:65px;
        margin: 3px 0px 0px 30px;
      }
      .location img{
        color:black;
      }
      .loc-p{
        margin:12px 0px 0px 80px;
      }
      .loc-expan{
        font-family:sans-serif;
        letter-spacing: 1px;
        margin: 15px 0px 0px 10px;
      }
      .loc-p2{
        font-family:sans-serif;
        margin:8px 0px 0px 80px;
      }
      .pin-data{
        width:300px;
        height:65px;
        font-family:sans-serif;
        margin: 3px 0px 0px 30px;
      }
      .row{
        width: 100%;
        display: inline-flex;
        background: rgb(239,239,239);
      }
      .col-sm-3{
        border-radius: 5px;
        width: 300px;
        height: 230px;
        margin: 20px 0px 10px 100px;
        background: #fff;
      }
      .col-head{
        font-size:14px;
        border-top: 5px solid rgb(37,84,214);
        border-bottom: 1px solid rgb(239,239,239);
      }
      .col-p{
        margin: 10px 0px 10px 10px;
        font-family: sans-serif;
      }
      .col-img{
        width: 55px;
        height: 35px;
        border-radius: 4px;
        background: #2af5f6;
      }
      .col-p img{
        margin: 3px 0px 0px 0px;
        vertical-align: sub;
        width: 15px;
        height: 15px;
      }
      .col-icon-epan{
        margin: 0px 0px 0px 6px;
      }
      .switch {
        position: absolute;
        display: inline-block;
        width: 30px;
        height: 15px;
        margin: 3px 0px 0px 5px;
      }
      .switch input {
        opacity: 0;
        width: 0;
        height: 0;
      }
      .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #45fc9e;
        transition: .4s;
      }
      .slider:before {
        position: absolute;
        content: "";
        height: 12px;
        width: 12px;
        left: 2px;
        bottom: 2px;
        background-color: white;
        transition: .4s;
      }
      input:checked + .slider {
        background-color: #2196F3;
      }
      input:focus + .slider {
        box-shadow: 0 0 1px #2196F3;
      }
      input:checked + .slider:before {
        transform: translateX(15px);
      }
      .slider.round {
        border-radius: 34px;
      }
      .slider.round:before {
        border-radius: 50%;
      }
      #home,#cer,#visa,#dep{
        font-family: open sans,sans-serif;
        font-size: 10px;
        float:right;
        margin:5px 10px 0px 0px;
      }
      #work,#gra,#passport,#econtact{
        font-family: open sans,sans-serif;
        font-size: 10px;
      }
      #work{
        font-family: open sans,sans-serif;
        margin: 0px 0px 0px 105px;
      }
      #gra{
        font-family: open sans,sans-serif;
        margin: 0px 0px 0px 40px;
      }
      #passport{
        font-family: open sans,sans-serif;
        margin: 0px 0px 0px 110px;
      }
      #econtact{
        font-family: open sans,sans-serif;
        margin: 0px 0px 0px 25px;
      }
      .col-body-p{
        font-family: open sans,sans-serif;
        margin:0px 0px 0px 5px;
      }
      .col-body-p-span{
        font-size:14px;
        font-family: open sans,sans-serif;
        margin:1px 0px 0px 15px;
        letter-spacing:1px;
      }
      .col-body-p-span2{
        font-family: open sans,sans-serif;
        font-size:14px;
        float:right;
        margin:0px 10px 0px 0px;
        letter-spacing:1px;
      }
      .col-body-p-span3{
        font-family: open sans,sans-serif;
        font-size:14px;
        float:right;
        margin:0px 10px 0px 0px;
        letter-spacing:1px;
      }
      .col-footer{
        margin: 10px auto;
      }
      .col-footer2{
        margin: 100px auto;
      }
      .col-footer5{
        margin: 26px auto;
      }
      .col-nid{
        border:1px solid black;
        margin:40px 10px 0px 10px;
        border-radius:10px;
        height:70px;
        font-size:14px;
      }
      .col-nid-p1{
        font-family: open sans,sans-serif;
        margin:8px 0px 0px 15px;
      }
      .col-body-p-span5{
        font-size:12px;
        margin:0px 0px 0px 170px;
      }
      .col-footer-p{
        float:right;
      }
      .col-footer-p a{
        font-size:12px;
        text-decoration: none;
        color:	#0ECF23;
      }
      .col-body1{
        height:38px;
        margin:0px 0px 0px 5px;
      }
      .col-body-p-span-spe{
        font-size:14px;
        letter-spacing:1px;
        margin:0px 0px 0px 0px;
      }
      .col-body-p-span-sp{
        letter-spacing:1px;
        margin:0px 0px 0px 0px;
        ;
      }
      .col-footer-p-f5 a{
        font-size:12px;
        text-decoration: none;
        color:	#0ECF23;
      }
      .col-footer-p-f5{
        margin: 45px 0px 0px 180px;
      }
      @media screen and (max-width: 1024px){
        .box{
          width: 930px;
        }
        .container{
          width: 930px;
        }
        .detail-box{
          width: 300px;
        }
        .detail-head{
          margin: 5px 0px 0px 5px;
        }
        .detail-lo{
          width: 300px;
          margin: 3px 0px 0px 5px;
        }
        .pin-data{
          width: 280px;
          margin: 3px 0px 0px 5px;
        }
        .row{
          width: 930px;
        }
        .col-sm-3{
          margin: 10px auto
        }
        .col-footer-p-f5{
          margin: 45px 0px 0px 180px;
        }
        .col-footer-p-f5 a{
          font-size:12px;
          text-decoration: none;
          color:	#0ECF23;
        }
      }
      @media screen and (max-width: 768px){
        .box{
          width : 693px;
        }
        .container{
          width: 693px;
        }
        .detail-box{
          width: 280px;
        }
        .detail-head{
          margin: 6px 0px 0px 5px;
        }
        .detail-lo{
          width: 280px;
          margin: 3px 0px 0px 10px;
        }
        .loc-p{
          margin: 10px 0px 0px 10px;
        }
        .loc-expan{
          margin: 10px 0px 0px 10px;
          font-size: 12px
        }
        .loc-p2{
          font-size: 14px;
          margin:8px 0px 0px 10px;
        }
        .pin-data{
          width: 280px;
          margin: 3px 0px 0px 10px;
        }
        .row{
          width: 693px;
        }
        .col-sm-3{
          margin-left:9px;
        }
        .col-icon-epan{
          font-size:12px;
        }
        #work,#home,#gra,#cer,#passport,#visa,#econtact,#dep{
          font-family: open sans,sans-serif;
          font-size:8px;
        }
        #home,#cer,#visa,#dep{
          font-family: open sans,sans-serif;
          margin: 7px 0px 0px 0px;
        }
        .col-body-p-span,.col-body-p-span2,.col-body-p-span3,.col-body-p-span-spe,.col-body-p-span-sp{
          font-size:12px;
        }
        #work{
          margin: 0px 0px 0px 60px;
        }
        #econtact{
          margin:0px 0px 0px 2px;
        }
        #gra{
          margin:0px 0px 0px 10px;
        }
        #passport{
          margin:0px 0px 0px 67px;
        }
        .col-footer-p-f5{
          margin: 45px 0px 0px 90px;
        }
        .col-footer-p-f5 a{
          font-size:12px;
          text-decoration: none;
          color:	#0ECF23;
        }
      }
      @media screen and (max-width: 425px){
        body{
          margin: 4px 0px 0px 0px;
        }
        .box{
          width: 420px;
          border: 1px solid black;
        }
        .container{
          width: 418px;
        }
        .detail-box{
          width: 130px;
          margin: 3px 0px 0px 1px;
        }
        .detail-head{
          font-size: 10px;
          margin: 14px 0px 0px 5px;
        }
        .u-id{
          font-size: 10px;
        }
        .detail-p{
          font-size: 10px;
        }
        .detail-lo{
          width: 130px;
          margin: 3px 0px 0px 5px;
        }
        .loc-p{
          margin: 10px 0px 0px 10px;
        }
        .loc-expan{
          margin: 10px 0px 0px 10px;
          font-size: 8px
        }
        .loc-p2{
          font-size: 10px;
          margin:8px 0px 0px 10px;
        }
        .pin-data{
          width: 130px;
          margin: 3px 0px 0px 5px;
        }
        .row{
          width: 418px;
          display: block;
          border: none;
        }
        .col-sm-3{
          width: 300px;
          height: 200px;
          margin: 20px auto;
        }
        .col-footer-p{
          margin:0px 0px 0px 0px;
        }
        .col-footer2{
          margin:100px 0px 0px 0px;
        }
        #work,#home,#gra,#cer,#passport,#visa,#econtact,#dep{
          font-family: open sans,sans-serif;
          font-size:8px;
        }
        #home,#cer,#visa,#dep{
          font-family: open sans,sans-serif;
          margin: 7px 0px 0px 0px;
        }
        #work{
          margin: 7px 0px 0px 80px;
        }
      }
      @media screen and (max-width: 375px){
        body{
          margin: 4px 0px 0px 0px;
        }
        .box{
          width: 360px;
          border: none;
        }
        .container{
          width: 360px;
        }
        .detail-box{
          width: 125px;
          margin: 3px 0px 0px 10px;
        }
        .detail-head{
          font-size: 10px;
          margin: 14px 0px 0px 5px;
        }
        .u-id{
          font-size: 10px;
        }
        .detail-p{
          font-size: 10px;
        }
        .detail-lo{
          width: 125px;
          margin: 3px 0px 0px 10px;
        }
        .loc-p{
          margin: 10px 0px 0px 10px;
        }
        .loc-expan{
          margin: 10px 0px 0px 10px;
          font-size: 8px
        }
        .loc-p2{
          font-size: 10px;
          margin:8px 0px 0px 10px;
        }
        .pin-data{
          width: 125px;
          margin: 3px 0px 0px 10px;
        }
        .row{
          width: 371px;
          height: 788px;
          display: block;
          border: none;
        }
        .col-sm-3{
          margin: 10px auto;
          width: 260px;
          height: 250px;
        }
        .col-p{
          margin: 10px 0px 10px 10px;
        }
        #home,#cer,#visa,#dep{
          font-family: open sans,sans-serif;
          margin: 5px 0px 0px 0px;
        }
        #work{
          font-size: 10px;
          margin: 3px 0px 0px 90px;
        }
        #home{
          font-size: 10px;
        }
        #gra{
          font-size: 10px;
          margin: 0px 0px 0px 25px;
        }
        #cer{
          font-size: 10px;
        }
        #passport{
          font-size: 10px;
          margin: 0px 0px 0px 90px;
        }
        #visa{
          font-size: 10px;
        }
        #econtact{
          font-size: 8px;
          margin: 0px 0px 0px 30px;
        }
        #dep{
          font-size: 8px;
        }
        .col-footer{
          margin: 56px 0px 0px 0px;
        }
        .col-footer-p{
          margin:0px 0px px 80px;
        }
        .col-footer5{
          margin: 0px 0px 0px 80px;
        }
        .col-footer2{
          margin:140px 0px 0px 0px;
        }
        .col-footer-p-f5{
          font-size:14px;
          margin: 75px 0px 0px 50px;
        }
        .col-footer-p-f5 a{
          font-size:12px;
          text-decoration: none;
          color:	#0ECF23;
        }
      }
      @media screen and (max-width: 320px){
        body{
          margin: 4px 0px 0px 0px;
          width: 300px;
        }
        .box{
          width: 318px;
          border: none;
        }
        .container{
          width: 316px;
        }
        .detail-box{
          width: 80px;
          margin: 3px 0px 0px 1px;
        }
        .detail-head{
          font-size: 10px;
          margin: 12px 0px 0px 1px;
        }
        .u-id{
          font-size: 10px;
        }
        .detail-p{
          font-size: 10px;
        }
        .detail-lo{
          width: 80px;
          margin: 3px 0px 0px 1px;
        }
        .loc-p{
          margin: 10px 0px 0px 10px;
        }
        .loc-expan{
          margin: 10px 0px 0px 10px;
          font-size: 7px
        }
        .loc-p2{
          font-size: 10px;
          margin:8px 0px 0px 10px;
        }
        .pin-data{
          width: 80px;
          margin: 3px 0px 0px 1px;
        }
        .row{
          width: 316px;
          height: 620px;
          display: block;
          border : none;
        }
        .col-sm-3{
          margin: 5px auto;
          width: 250px;
          height: 200px;
        }
        .col-p{
          margin: 10px 0px 10px 10px;
        }
        #work{
          font-size: 10px;
          margin: 3px 0px 0px 53px;
        }
        #home{
          font-size: 10px;
        }
        #gra{
          font-size: 10px;
          margin: 0px 0px 0px 2px;
        }
        #cer{
          font-size: 10px;
        }
        #passport{
          font-size: 10px;
          margin: 0px 0px 0px 65px;
        }
        #visa{
          font-size: 10px;
        }
        #econtact{
          font-size: 8px;
        }
        #dep{
          font-size: 8px;
        }
        .col-footer{
          margin:6px 0px 0px 0px;
        }
        .col-footer-p{
          margin:0px 0px 0px 80px;
        }
        .col-footer-p a{
          text-decoration:none;
          font-size:14px;
        }
        .col-footer2{
          margin:83px 0px 0px 0px;
        }
        .col-nid{
          margin:3px auto;
          font-size:12px
        }
        .col-footer5{
          margin: -10px 0px 0px 65px;
        }
      }
    </style>
  </head>
  <body>
    <%
       String key = (String)session.getAttribute("user");
       %>
      <c:set var="key" value="<%= key %>">
      </c:set>
      <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/company"
                         user="root" password=""/>
      <sql:query dataSource="${db}" var="query">
        SELECT * FROM userdata where Mobile_number = 
        <c:out value="${key}"/>;
      </sql:query>
      <c:forEach var = "row" items = "${query.rows}">
        <c:set var="id" value = "${row.id}"/>
        <c:set var="name" value = "${row.Name}"/>
        <c:set var="mobile-number" value = "${row.Mobile_number}"/>
        <c:set var="location" value = "${row.Location}"/>
        <c:set var="pincode" value = "${row.Pin_code}"/>
        <c:set var="password" value = "${row.Password}"/>
        <c:set var="email" value = "${row.Email}"/>
        <c:set var="dob" value = "${row.DOB}"/>
        <c:set var="marriage" value = "${row.Marital_status}"/>
        <c:set var="address" value = "${row.Address}"/>
        <c:set var="blood" value = "${row.Blood}"/>
        <c:set var="nid" value = "${row.N_id}"/>
        <c:set var="education" value = "${row.education}"/>
        <c:set var="passport" value = "${row.Passport}"/>
        <c:set var="father_name" value = "${row.Father_name}"/>
        <c:set var="contact" value = "${row.Emergency_contact}"/>
        <c:set var="gender" value = "${row.Gender}"/>
      </c:forEach>
      <div class="box">
        <div class="container">
          <div class="box-1">
            <div class="img-box">
              <img src="./img/profile.svg" width="40px" height="40px">
            </div>
          </div>
          <div class="detail-box">
            <h3 class="detail-head">
              <c:out value="${name}">
              </c:out>
              <span class="u-id"> ( 
                <c:out value="${id}">
                </c:out> )
              </span>
            </h3>
            <p class="detail-p">XXX Company
            </p>
          </div>
          <div class="detail-lo">
            <div class="location">
              <p class="loc-p">
                <img alt="loc" src="./img/location.svg" width="10px" height="10px">
                <span class="loc-expan">
                  <c:out value="${location}">
                  </c:out>
                </span>
              </p>
              <p class="loc-p2">
                <img alt="loc" src="./img/phone.svg" width="10px" height="10px">
                <span class="loc-expan">
                  <c:out value="${key}">
                  </c:out>
                </span>
              </p>
            </div>
          </div>
          <div class="pin-data">
            <div class="pin">
              <p class="loc-p">
                <img alt="loc" src="./img/location.svg" width="10px" height="10px">
                <span class="loc-expan">
                  <c:out value="${location}">
                  </c:out>
                </span>
              </p>
              <p class="loc-p2">
                <img alt="loc" src="./img/location.svg" width="10px" height="10px">
                <span class="loc-expan">
                  <c:out value="${location}">
                  </c:out>
                </span>
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-3">
            <div class="col-head">
              <p class="col-p">
                <span class="col-img">
                  <img src="./img/profile.svg" width="15px" height="15px">
                </span>
                <span class="col-icon-epan">Personal
                </span>
              </p>
            </div>
            <div class="col-body">
              <p class="col-body-p">
                <span class="col-body-p-span">DOB
                </span>
                <span class="col-body-p-span2">Place of Birth
                </span>
              </p>
              <p class="col-body-p">
                <span class="col-body-p-span">
                  <c:out value="${dob}">
                  </c:out>
                </span>
                <span class="col-body-p-span3">
                  <c:out value="${location}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-body">
              <p class="col-body-p">
                <span class="col-body-p-span">Blood Group
                </span>
                <span class="col-body-p-span2">Gender
                </span>
              </p>
              <p class="col-body-p">
                <span class="col-body-p-span">
                  <c:out value="${blood}">
                  </c:out>
                </span>
                <span class="col-body-p-span3">
                  <c:out value="${gender}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-body">
              <p class="col-body-p">
                <span class="col-body-p-span">Marital Status
                </span>
              <p class="col-body-p">
                <span class="col-body-p-span">
                  <c:out value="${marriage}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-footer">
              <p class="col-footer-p">
                <a href="">View and Edit Details
                </a> 
                <span class="view-edit-image">
                  <img src="./img/arrow-point-to-right.svg" width="10px" height="10px">
                </span>
              </p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-head">
              <p class="col-p">
                <span class="col-img">
                  <img src="./img/location.svg" width="20px" height="20px">
                </span>
                <span class="col-icon-epan">Location
                </span>
                <label for="flip" id="work">Work
                </label>
                <label name="flip" class="switch">
                  <input type="checkbox">
                  <span class="slider round">
                  </span>
                </label>
                <label for="flip" id="home">Home
                </label>
              </p>
            </div>
            <div class="col-body1">
              <p class="col-body-p">
                <span class="col-body-p-span-sp">Address
                </span>
              <p class="col-body-p">
                <span class="col-body-p-span-spe">
                  <c:out value="${address}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-footer2">
              <p class="col-footer-p">
                <a href="">View and Edit Details
                </a> 
                <span class="view-edit-image">
                  <img src="./img/arrow-point-to-right.svg" width="10px" height="10px">
                </span>
              </p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-head">
              <p class="col-p">
                <span class="col-img">
                  <img src="./img/id-card.svg" width="20px" height="20px">
                </span>
                <span class="col-icon-epan">National Id
                </span>
              </p>
            </div>
            <div class="col-nid">
              <p class="col-nid-p1">Permanent Account Number
              </p>
              <p class="col-nid-p1">xxxxxxxxxxxx
              </p>
            </div>
            <div class="col-footer5">
              <p class="col-footer-p-f5">
                <a href="">View and Edit Details
                </a> 
                <span class="view-edit-image">
                  <img src="./img/arrow-point-to-right.svg" width="10px" height="10px">
                </span>
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-3">
            <div class="col-head">
              <p class="col-p">
                <span class="col-img">
                  <img src="./img/graduate.svg" width="20px" height="20px">
                </span>
                <span class="col-icon-epan">Education
                </span>
                <label id="gra">Graduation
                </label>
                <label class="switch">
                  <input type="checkbox">
                  <span class="slider round">
                  </span>
                </label>
                <label id="cer">Certification
                </label>
              </p>
            </div>
            <div class="col-body">
              <p class="col-body-p">
                <span class="col-body-p-span">Degree 
                </span>
              <p class="col-body-p">
                <span class="col-body-p-span">
                  <c:out value="${education}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-footer2">
              <p class="col-footer-p">
                <a href="">View and Edit Details
                </a> 
                <span class="view-edit-image">
                  <img src="./img/arrow-point-to-right.svg" width="10px" height="10px">
                </span>
              </p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-head">
              <p class="col-p">
                <span class="col-img">
                  <img src="./img/plane.svg" width="20px" height="20px">
                </span>
                <span class="col-icon-epan">Travel
                </span>
                <span id="passport">Passport
                </span>
                <label class="switch">
                  <input type="checkbox">
                  <span class="slider round">
                  </span>
                </label>
                <span id="visa">Visa
                </span>
              </p>
            </div>
            <div class="col-body">
              <p class="col-body-p">
                <span class="col-body-p-span">Country
                </span>
                <span class="col-body-p-span2">Passport
                </span>
              </p>
              <p class="col-body-p">
                <span class="col-body-p-span">India
                </span>
                <span class="col-body-p-span3">
                  <c:out value="${passport}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-footer2">
              <p class="col-footer-p">
                <a href="">View and Edit Details
                </a> 
                <span class="view-edit-image">
                  <img src="./img/arrow-point-to-right.svg" width="10px" height="10px">
                </span>
              </p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-head">
              <p class="col-p">
                <span class="col-img">
                  <img src="./img/family.svg" width="20px" height="20px">
                </span>
                <span class="col-icon-epan">Family
                </span>
                <label id="econtact">Emergency Contact
                </label>
                <label class="switch">
                  <input type="checkbox">
                  <span class="slider round">
                  </span>
                </label>
                <label id="dep">Dependents
                </label>
              </p>
            </div>
            <div class="col-body">
              <p class="col-body-p">
                <span class="col-body-p-span">Father Name
                </span>
                <span class="col-body-p-span2">Number
                </span>
              </p>
              <p class="col-body-p">
                <span class="col-body-p-span">
                  <c:out value="${father_name}">
                  </c:out>
                </span>
                <span class="col-body-p-span2">
                  <c:out value="${contact}">
                  </c:out>
                </span>
              </p>
            </div>
            <div class="col-footer2">
              <p class="col-footer-p">
                <a href="">View and Edit Details
                </a> 
                <span class="view-edit-image">
                  <img src="./img/arrow-point-to-right.svg" width="10px" height="10px">
                </span>
              </p>
            </div>
          </div>
        </div>
      </div>
      </body>
    </html>
