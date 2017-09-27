<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <c:set var="pageTitle" value="StreamSearch" scope="session" />
    <c:import url="head.jsp" />
    <body>
        <c:import url="main-bar.jsp" />
        <div class="content">
            <p>
                <form method="GET" action="/search-results">
                    <label for="searchTerm">Movie to Search for</label>
                    <input type="text" name="term" id="searchTerm"/>
                    <br />
                    <input type="submit" value="Search" />
                </form>
            </p>
        </div>
    </body>
</html>
