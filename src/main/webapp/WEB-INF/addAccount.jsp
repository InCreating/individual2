<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add account</title>
</head>
<body>
<h1>Add new account</h1>
<form action="addAccount" method="post">



    <label for="balance">Balance:</label>
    <input type="text" id="balance" name="balance"><br><br>

    <label for="available">Available:</label>
    <input type="checkbox" id="available" name="available" value="true"><br><br>

    <label for="user">User:</label>
    <select id="user" name="user_id">
        <c:forEach var="user" items="${users}">
            <option value="${user.userId}">${user.name} ${user.surname}</option>
        </c:forEach>
    </select><br><br>

    <input type="submit" value="Add">
</form>
</body>
</html>
