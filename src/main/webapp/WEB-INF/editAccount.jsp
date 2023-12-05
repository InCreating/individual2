<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Account</title>
</head>
<body>
<h2>Edit Account</h2>

<form method="post" action="<c:url value='/editAccount'/>">
    <label for="accountId">Account ID:</label>
    <input type="hidden" name="user_id" value="${account.user.userId}"/>
    <input type="text" id="accountId" name="accountId" value="${account.accountId}" readonly/>

    <label for="balance">Balance:</label>
    <input type="text" id="balance" name="balance" value="${account.balance}"/>

    <label for="available">Available:</label>
    <select id="available" name="available">
        <option value="true" ${account.available ? 'selected' : ''}>Yes</option>
        <option value="false" ${!account.available ? 'selected' : ''}>No</option>
    </select>



    <input type="submit" value="Save Changes"/>
</form>

<a href="<c:url value='/accounts'/>">Go back to Accounts</a>
</body>
</html>
