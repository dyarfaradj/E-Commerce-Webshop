<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/navbar.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/navbar.js"></script>
</head>
<body>
<% 	HttpSession sess=request.getSession(true);
	String username=(String)sess.getAttribute("username");
	Integer user_id=(Integer )sess.getAttribute("user_id"); %>

<section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="./">DYKA ONLINE SHOPPING!<%out.println(" V�LKOMMEN "+username + " ID: " + user_id); %></a>
    </div>
    <nav>
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="./">Home</a>
        </li>
        <li>
          <a href="#!">ADMIN</a>
          <ul class="nav-dropdown">
            <li>
              <a href="./list">Product Management</a>
            </li>
            <li>
              <a href="./new">Add new product</a>
            </li>
          </ul>
        </li>
		 <c:choose>
		    <c:when test="${username != null}">
		    <li>
		        <a href="./logout">Logout</a>
		     </li>
		    </c:when>    
		    <c:otherwise>
		    <li>
	          <a href="./register.jsp">Register</a>
	        </li>
		    <li>
		        <a href="./login.jsp">Login</a>
		    </li>
		    </c:otherwise>
		</c:choose>
        <li>
          <a href="#!">KUND</a>
          <ul class="nav-dropdown">
            <li>
              <a href="showcart">Shopping Cart</a>
            </li>
            <li>
              <a href="#!">Web Development</a>
            </li>
            <li>
              <a href="#!">Graphic Design</a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</section>
</body>
</html>