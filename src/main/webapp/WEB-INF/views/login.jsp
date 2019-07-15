<%--
  Created by IntelliJ IDEA.
  User: shubh
  Date: 4/22/2019
  Time: 12:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/WEB-INF/views/template/header.jsp"%>

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

<div class="container-wrapper">
    <div class="container">
        <div id="login-area">
            <br><br><br>
            <h3> Enter the Username and password here to login</h3>

            <c:if test="${not empty msg}">
                <div class="alert">${msg}</div>
            </c:if>


            <form name="login" action="<c:url value="/j_spring_security_check"/>" method="post">

                <c:if test="${not empty error}">
                    <div class="err_msg" style="color: red;">${error}</div>
                </c:if>

                <diV class="form-group">
                    <label for="username">UserID:</label><input type="text" id="username" name="username" class="form-control"/>
                    <label for="password">Password:</label><input type="password" id="password" name="password" class="form-control"/>
                </diV>

                <input type="submit" value="LOGIN" class="btn-default">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> <!-- cross site request forgery-->
            </form>

        </div>


    </div>

</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>