<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<c:set var="pageTitle" value="StreamSearch - Login" scope="session" />
<c:import url="head.jsp" />
<body>
<c:import url="main-bar.jsp" />
<div class="content">
    <p>
        <FORM ACTION="j_security_check" METHOD="POST">
            <TABLE>
                <TR><TD>User name: <INPUT TYPE="TEXT" NAME="j_username">
                <TR><TD>Password: <INPUT TYPE="PASSWORD" NAME="j_password">
                <TR><TH><INPUT TYPE="SUBMIT" VALUE="Log In">
            </TABLE>
        </FORM>
    </p>
</div>
</body>
</html>
