<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Kết quả tính phí bảo hiểm y tế</title>
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="container" style="margin-top: 200px">
		<h3 class="text-center">Kết quả tính phí bảo hiểm y tế</h3>
		<%--CMND: ${customer.cmnd} <br/>--%>
		<%--Họ và Tên: ${customer.full_name} <br/>--%>
		<%--Số điện thoại: ${customer.phone} <br/>--%>
		<%--Dia chi: ${customer.xa} / ${customer.huyen} / ${customer.tinh}<br/>--%>
		<%--Ngày sinh: ${customer.dob} <br/>--%>
		<%--Giới tính: ${customer.address} <br/>--%>
		<%--Quốc tịch: ${customer.country} <br/>--%>
		<%--Dân tộc: ${customer.nation} <br/>--%>
		<p class="text-center" style="margin-top: 80px">
			Số tiền cần đóng là: ${fee} <span class="text-danger">VND</span>
		</p>
	</div>
</body>
</html>
