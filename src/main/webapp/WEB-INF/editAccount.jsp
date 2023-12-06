<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Account</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body >
<div class="container">
    <h2>Edit Account</h2>
    <div class="form-container">
        <form method="post" action="<c:url value='/editAccount'/>">

            <div class="input-block">

                <div style="width: 50%;margin-right :30px;">
                    <label for="accountId">Account ID:</label>
                </div>

                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <input type="hidden" name="user_id" value="${account.user.userId}"/>
                    <input type="text" id="accountId" name="accountId" value="${account.accountId}" readonly
                           class="input-text"/>
                </div>
            </div>


            <div class="input-block">
                <div style="width: 50%;margin-right :30px;">
                    <label for="balance">Balance:</label>

                </div>

                <div style="width: 50%;  display: flex; justify-content: start; ">
                    <input type="number" id="balance" name="balance" value="${account.balance}" class="input-text"/>
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

<div style="display: flex; flex-direction: row; align-items: center; justify-content: space-around;">
            <button type="submit" class="btn bn">Save</button>
            <button class="btn bn" href="<c:url value='/accounts'/>">Go back</button>
</div>
        </form>
    </div>

</div>

</body>
</html>
