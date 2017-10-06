<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="StreamSearch - Login" scope="session" />
<c:import url="head.jsp" />
<body>
<c:import url="main-bar.jsp" />
<div class="content">
    <p>
        <form method="POST" action="/account">
            <label for="userName">User Name</label>
            <input type="text" name="user" id="userName" />
            <br />
            <label for="password">Password</label>
            <input type="text" name="pass" id="password" />
            <input type="submit" value="Login" />
        </form>
    </p>
</div>
</body>
</html>
