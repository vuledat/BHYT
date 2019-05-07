<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="utf-8" contentType="text/html; ISO-8859-1" language="java" %>
<html>
<head>
<title>Đăng nhập</title>
	<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">

</head>
	<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
				<br>
				<h1 class="text-primary">
					<i class="fas fa-users"></i>
				</h1>
			</div>

			<!-- Login Form -->
			<form action="<c:url value="/login"/>" method="post" name="customer">
				<input type="text" class="fadeIn second" name="name" placeholder="Tên đăng nhập" required autofocus>
				<input type="password" class="fadeIn third" name="password" placeholder="Mật khẩu" required>
				<input type="submit" id="btn-login" class="fadeIn fourth" value="Đăng nhập">
			</form>

			<!-- Remind Passowrd -->
			<c:url value="/customer-save" var="urlSave"/>
			<div id="formFooter">
				<a class="underlineHover" href="${urlSave}">Đăng ký</a>
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