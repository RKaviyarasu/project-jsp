<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
  <html>
    <head>
      <title>
      </title>
      <link rel="stylesheet" type="text/css" href="./css/style.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script type="text/javascript" src="./js/main.js">
      </script>
      <script type="text/javascript"> 
        window.history.forward();
        function noBack() {
          window.history.forward();
        }
      </script>
    </head>
    <body>
      <div class="top-nav">
        <p class="task-head">Small Task
          <span>
          </span>
          <a id="logoutSession" href="logout.jsp" style="float:right; margin:0px 20px 0px 0px;border-radius:10px;">
            <img alt="lox" src="./img/logout.svg" width="30px" height="25px">
          </a>
        </span>
      </p>
    </div>
  <div class="side-nav" id="side-nav">
    <button class="open-menu" onclick="menu_expand_fun()">
      <img src="./img/open-menu.svg" width="20px" height="20px">
    </button>
    <div class="side-nav-icon">
      <a href="showData.jsp" target="iframe-name">
        <img src="./img/employee.svg" width="25px" height="20px">
      </a>
    </div>
    <div class="side-nav-icon">
      <a href="showData02.jsp" target="iframe-name">
        <img src="./img/bus.svg" width="25px" height="20px">
      </a>
    </div>
    <div class="side-nav-icon">
      <a href="showData03.jsp" target="iframe-name">
        <img src="./img/reservation.svg" width="25px" height="20px">
      </a>
    </div>
    <div class="side-nav-icon">
      <a href="profile.jsp" target="iframe-name">
        <img src="./img/profile.svg" width="25px" height="20px">
      </a>
    </div>
  </div>
  <div id="mySidenav" class="sidenav">
    <div class="side-nav-icon">
      <img src="./img/employee.svg" width="20px" height="25px">
      <a href="showData.jsp" target="iframe-name">
        <span class="side-nav-icon-expand">Employee
        </span>
      </a>
    </div>
    <div class="side-nav-icon">
      <a href="showData02.jsp" target="iframe-name">
        <img src="./img/bus.svg" width="25px" height="20px">
        <span class="side-nav-icon-expand">Bus
        </span>
      </a>
    </div>
    <div class="side-nav-icon">
      <a href="showData03.jsp" target="iframe-name">
        <img src="./img/reservation.svg" width="25px" height="20px">
        <span class="side-nav-icon-expand">Booking
        </span>
      </a>
    </div>
    <div class="side-nav-icon">
      <a href="profile.jsp" target="iframe-name">
        <img src="./img/profile.svg" width="25px" height="20px">
        <span class="side-nav-icon-expand">Profile
        </span>
      </a>
    </div>
  </div>
  <div class="iframe">
    <iframe src="" name="iframe-name" class="iframe-data">
    </iframe>
  </div>
  <%
     response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
     response.setHeader("Pragma","no-cache"); //HTTP 1.0 
     response.setDateHeader ("Expires", 0);
  %>
    </body>
  </html>
