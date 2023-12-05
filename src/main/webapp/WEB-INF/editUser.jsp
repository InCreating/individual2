<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h2>Edit User</h2>
<form action="<c:url value='/editUser' />" method="post">
    <input type="hidden" name="userId" value="${user.userId}" />
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${user.name}" />
    <br/>
    <label for="surname">Surname:</label>
    <input type="text" id="surname" name="surname" value="${user.surname}" />
    <br/>
    <button type="submit">Save Changes</button>
</form>
<a href="/users">Go back</a>
</body>
</html>
