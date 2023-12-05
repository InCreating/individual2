<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Accounts</title>
</head>
<body>
<h2>Accounts List</h2>
<table border="1">
    <tr>
        <th>Account ID</th>
        <th>User ID</th>
        <th>Balance</th>
        <th>Available</th>
        <th>Delete</th>
        <th>Edit</th>
    </tr>
    <c:forEach var="account" items="${accounts}">
        <tr>
            <td>${account.accountId}</td>
            <td>${account.user.userId}</td>
            <td>${account.balance != null ? account.balance : '0.0'}</td>
            <td><c:choose>
                <c:when test="${account.available == true}">Yes</c:when>
                <c:otherwise>No</c:otherwise>
            </c:choose></td>
            <td><a href="<c:url value='/deleteAccount'><c:param name='accountId' value='${account.accountId}'/></c:url>">Delete account</a></td>
            <td><a href="<c:url value='/editAccount'><c:param name='accountId' value='${account.accountId}'/></c:url>">Edit account</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/addAccount">Add accounts</a>
<a href="/form.html">Go back</a>



</body>
</html>
