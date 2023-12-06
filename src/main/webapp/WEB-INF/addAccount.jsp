<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add account</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<div class="container">
<h2>Add new account</h2>
<div class="form-container">

<form action="addAccount" method="post">



    <div class="input-block">
    <label for="balance">Balance:</label>
    <input type="text" id="balance" name="balance" class="input-text"><br><br>

    <div class="input-block">
    <span >Available:</span>

        <label class="cb-ctnr">
            <input type="checkbox" id="available" name="available" value="true" >
            <div class="checkmark"></div>
        </label>

    </div>


        <div class="input-block">
    <label for="user">User:</label>
    <select id="user" name="user_id" >
        <c:forEach var="user" items="${users}">
            <option value="${user.userId}">${user.name} ${user.surname}</option>
        </c:forEach>
    </select><br><br>
        </div>

    <input type="submit" class="btn bn" value="Add">
</form>
</div>
</div>
</body>
</html>
