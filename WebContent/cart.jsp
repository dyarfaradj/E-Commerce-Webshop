<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
    <title>Books Store Application</title>
</head>
<body>
<jsp:include page="navbar.jsp" />
<div style="color: white; text-align: center">
    </div>
<div class="table-title">
<h3>Din varukorg!</h3>
</div>

<table class="table-fill">
<thead>
<tr>
<th class="text-left">Produkt ID</th>
<th class="text-left">Produkt Namn</th>
<th class="text-left">Antal</th>
<th class="text-left">Pris</th>
</tr>
</thead>
<tbody class="table-hover">
 <c:forEach var="item" items="${listItem}">
                <tr>
                    <td><c:out value="${item.product_id}" /></td>
                    <td><c:out value="${item.product_name}" /></td>
                    <td><c:out value="${item.quantity}" /></td>
                    <td><c:out value="${item.price}" /></td>
                </tr>
            </c:forEach>
</tbody>
</table>
</body>
</html>