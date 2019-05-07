<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
	<title>Customer ${customer.name}</title>
	<link rel="icon" href="https://previews.123rf.com/images/arcady31/arcady311609/arcady31160900084/63065169-tick-shield-security-icon.jpg" type="image/x-icon"/>
	<link rel="shortcut icon" href="https://previews.123rf.com/images/arcady31/arcady311609/arcady31160900084/63065169-tick-shield-security-icon.jpg" type="image/x-icon"/>
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="container">
		<h4 class="text-center">Thông tin chi tiết</h4>
		CMND: ${customer.cmnd} <br/>
		Họ và Tên: ${customer.full_name} <br/>
		Số điện thoại: ${customer.phone} <br/>
		Dia chi: ${customer.xa} / ${customer.huyen} / ${customer.tinh}<br/>
		Ngày sinh: ${customer.dob} <br/>
		Giới tính: ${customer.address} <br/>
		Quốc tịch: ${customer.country} <br/>
		Dân tộc: ${customer.nation} <br/>
	</div>
</body>
</html>