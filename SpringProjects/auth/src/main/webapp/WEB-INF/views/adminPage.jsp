<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Page</title>
</head>
<body>
<h1>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h1>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${allUsers}" var="user">
        <c:if test="${user != currentUser}">
        <tr>
            <td><c:out value="${user.username}"/></td>
            <td><c:out value="${user.email}"/></td>
            <c:choose>
                    <c:when test="${fn:contains(user.roles, admin)}">
                        <td><p>Admin</p></td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="/makeAdmin/${user.id}">Make Admin</a> <a href="/delete/${user.id}">Delete</a></td>
                    </c:otherwise>
            </c:choose>
        </tr>
        </c:if>
    </c:forEach>
    </tbody>
</table>
<a href="/myHome">To my home</a>

<form id="logoutForm" method="POST" action="/logout">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Logout!" />
</form>
</body>
</html>