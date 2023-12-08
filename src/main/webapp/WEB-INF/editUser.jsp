<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<div class="container">
    <h2>Edit User</h2>
    <div class="form-container">
        <form method="post" action="<c:url value='/editUser' />">

            <div class="input-block">
                <div style="width: 50%;margin-right :30px;">
                    <label for="userId">User ID:</label>
                </div>

                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <input type="hidden" name="userId" value="${user.userId}"/>
                    <input type="text" id="userId" name="userId" value="${user.userId}" readonly class="input-text"/>
                </div>
            </div>

            <div class="input-block">
                <div style="width: 50%;margin-right :30px;">
                    <label for="name">Name:</label>
                </div>

                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <input type="text" id="name" name="name" value="${user.name}" class="input-text"/>
                </div>
            </div>

            <div class="input-block">
                <div style="width: 50%;margin-right :30px;">
                    <label for="surname">Surname:</label>
                </div>

                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <input type="text" id="surname" name="surname" value="${user.surname}" class="input-text"/>
                </div>
            </div>

            <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-around;">
                <button type="submit" class="btn bn">Save Changes</button>
                <a class="btn bn" href="/users">Go back</a>
            </div>

        </form>
    </div>
</div>
</body>
</html>
