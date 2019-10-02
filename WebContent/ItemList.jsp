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
<h3>List of all items</h3>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">ID</th>
<th class="text-left">Title</th>
<th class="text-left">Description</th>
<th class="text-left">Quantity</th>
<th class="text-left">Price</th>
<th class="text-left">Actions</th>
</tr>
</thead>
<tbody class="table-hover">
 <c:forEach var="item" items="${listItem}">
                <tr>
                    <td><c:out value="${item.id}" /></td>
                    <td><c:out value="${item.title}" /></td>
                    <td><c:out value="${item.description}" /></td>
                    <td><c:out value="${item.quantity}" /></td>
                    <td><c:out value="${item.price}" /></td>
                    <td>
                        <a href="./edit?id=<c:out value='${item.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="./delete?id=<c:out value='${item.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
</tbody>
</table>
</body>
</html>