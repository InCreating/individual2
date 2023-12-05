<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h2>Users List</h2>
<table border="1">
    <tr>
        <th>User ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Delete</th>
        <th>Edit</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.userId}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td><a href="<c:url value='/deleteUser'><c:param name='userId' value='${user.userId}'/></c:url>">Delete user</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
