<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="utf-8" contentType="text/html; ISO-8859-1" language="java" %>
<html>
<head>
    <title>Đăng ký tài khoản</title>
    <link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="container">
		<h3 class="text-center">Đăng ký tải khoản</h3>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <div class="fadeIn first">
                    <br>
                    <h1 class="text-primary">
                        <i class="fas fa-users"></i>
                    </h1>
                </div>
                <form action="<c:url value="/saveCustomer"/>" method="post" name="customer">
                    <input type="text" class="fadeIn second" name="name" placeholder="Tên tài khoản" required autofocus>
                    <input type="password" class="fadeIn third" name="password" id="password" placeholder="Mật khẩu" required>
                    <input type="password" class="fadeIn third" name="confirm_password" id="confirm_password" placeholder="Nhập lại mật khẩu" required>
                    <input type="submit" id="btn-login" class="fadeIn fourth" value="Đăng ký">
                </form>

                <c:url value="/login" var="urlLogin"/>
                <div id="formFooter">
                    <a class="underlineHover" href="${urlLogin}">Đăng nhập</a>
                </div>
            </div>
        </div>
	</div>
</body>
</html>

<style>
    input {
        margin-bottom: 15px !important;
    }
</style>

<script>
    var password = document.getElementById("password")
        , confirm_password = document.getElementById("confirm_password");

    function validatePassword(){
        if(password.value != confirm_password.value) {
            confirm_password.setCustomValidity("Mât khẩu không khớp");
        } else {
            confirm_password.setCustomValidity('');
        }
    }

    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
</script>