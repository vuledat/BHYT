<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<%@page pageEncoding="utf-8" contentType="text/html; ISO-8859-1" language="java" %>
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="container">
		<h1 class="text-center">Đăng ký tài khoản</h1>
		<form action="<c:url value="/updateCustomer"/>" method="POST" name="customer">

			<div class="form-group">
				<label for="name">UserName</label>
				<input name="name" type="text" class="form-control" id="name" placeholder="Họ Tên"/>
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<input name="password" type="password" class="form-control" id="password" placeholder="Password" />
			</div>

			<button type="submit" class="btn btn-primary" >Đăng ký</button>
		</form>

	</div>

</body>
</html>