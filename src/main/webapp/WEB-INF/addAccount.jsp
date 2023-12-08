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
                <div style="width: 50%;margin-right :30px;">
                    <label for="balance">Balance:</label>
                </div>


                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <input type="number" id="balance" name="balance" class="input-text">
                </div>
            </div>

            <div class="input-block">
                <div style="width: 50%;margin-right :30px;">
                    <span>Available:</span>
                </div>
                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <label class="cb-ctnr">
                        <input type="checkbox" id="available" name="available" value="true">
                        <div class="checkmark"></div>
                    </label>
                </div>
            </div>


            <div class="input-block">
                <div style="width: 50%;margin-right :30px;  align-items: center ;">
                    <label for="user">User:</label>
                </div>


                <div style="width: 50%;  display: flex; justify-content: start; align-items: center ">
                    <select id="user" name="user_id" class="custom-select">
                        <c:forEach var="user" items="${users}">
                            <option value="${user.userId}">${user.name} ${user.surname}</option>
                        </c:forEach>
                    </select><br><br>
                </div>
            </div>


            <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-around;">
                <button type="submit" class="btn bn">Add</button>
                <a class="btn bn" href="/accounts">Go back</a>
            </div>
        </form>

    </div>
</div>
</body>
</html>
