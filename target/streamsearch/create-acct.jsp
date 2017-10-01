<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <c:set var="pageTitle" value="StreamSearch - Create Account" scope="session" />
    <c:import url="head.jsp" />
    <body>
        <c:import url="main-bar.jsp" />
        <div class="content">
            <p>
                <form method="GET" action="/success">
                    <label for="userName">User Name</label>
                    <input type="text" name="user" id="userName" />
                    <br />
                    <label for="password">Password</label>
                    <input type="text" name="pass" id="password" />
                    <br />
                    <label for="password2">Repeat Password</label>
                    <input type="text" name="pass2" id="password2" />
                    <br />
                    <label for="emailAddress">Email Address</label>
                    <input type="text" name="email" id="emailAddress" />
                    <br />
                    <input type="submit" value="Create User" />
                </form>
            </p>
        </div>
    </body>
</html>