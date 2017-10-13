<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
    <c:set var="pageTitle" value="StreamSearch - Create Account" scope="session" />
    <c:import url="head.jsp" />
    <body>
        <c:import url="main-bar.jsp" />
        <div class="content">
            <!-- <p>
                <c:if test="${createUserError != ''}">
                    <h3>${createUserError}</h3>
                </c:if>
                <form method="POST" action="submit">
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
            </p> -->
            <form class="form-horizontal" action="submit" method="post" id="reg_form">
                <fieldset>
                    <!-- Form Name -->
                    <legend> Account Information </legend>

                    <!-- Text Input -->
                    <div class="form-group">
                        <label class="col-md-4 control-label">User Name</label>
                        <div class="col-md-6 inputGroupContainer">
                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="userName" placeholder="User Name" class="form-control" type="text">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">E-Mail</label>
                        <div class="col-md-6 inputGroupContainer">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon-envelope"></i></span>
                                <input name="email" placeholder="E-Mail Address" class="form-control" type="text">
                            </div>
                        </div>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="password" class="col-md-4 control-label">Password</label>
                        <div class="col-md-6 inputGroupContainer">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <input class="form-control" id="password" type="password" placeholder="password" name="password"
                                       data-minLength="5" data-error="some error" required/>
                                <span class="glyphicon form-control-feedback"></span>
                                <span class="help-block with-errors"></span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="confirmPassword" class="col-md-4 control-label">Confirm Password</label>
                        <div class="col-md-6 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-home"></i>
                                </span>
                                <input class="form-control {$borderColor}" id="confirmPassword" type="password" placeholder="Confirm password"
                                       name="confirmPassword" data-match="#confirmPassword" data-minLength="5"
                                       data-match-error="some error 2"
                                       required />
                                <span class="glyphicon form-control-feedback"></span>
                                <span class="help-block with-errors"></span>
                            </div>
                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-warning">Send<span class="glyphicon glyphicon-send"></span></button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
    </body>
</html>