<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
	<title>Customer ${customer.name}</title>
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