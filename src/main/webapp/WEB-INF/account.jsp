<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Accounts</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<div class="container">
<h2>Accounts List</h2>
    <a class="btn bn" href="/addAccount">Add account</a>
    <a class="btn bn" href="/form.html">Go back</a>
    <a class="btn bn" href="/accounts?sort=balance">Sort by Balance</a>

    <div>
<table border="1" >
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
            <td>${account.balance != null ? account.balance : '0.0'} $</td>
            <td><c:choose>
                <c:when test="${account.available == true}">Yes</c:when>
                <c:otherwise>No</c:otherwise>
            </c:choose></td>
            <td><a href="<c:url value='/deleteAccount'><c:param name='accountId' value='${account.accountId}'/></c:url>"><svg xmlns="http://www.w3.org/2000/svg"  fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
            </svg></a></td>
            <td><a href="<c:url value='/editAccount'><c:param name='accountId' value='${account.accountId}'/></c:url>"><svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
            </svg></a></td>
        </tr>
    </c:forEach>
</table>
    <p>Total balance of all accounts: ${sumOfField}</p>
    <p></p>
    </div>


</div>
</body>
</html>
