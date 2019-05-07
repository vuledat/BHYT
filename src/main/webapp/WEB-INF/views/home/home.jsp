<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="utf-8" contentType="text/html; ISO-8859-1" language="java" %>
<html>
<head>
    <title>THông tin BHYT</title>
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<style>
    a {
        color: #111;
    }
    #usersp {
        font-size: 25px;
    }
</style>
<body>
    <c:if test="${not empty user}">
        <div class="container" style="margin-top: 200px;">
            <h3 class="text-center"> xin chào <span class="text-primary" id="usersp" style="">${user.name}</span> đến với hệ thống tính phí bảo hiểm của chúng tôi!</h3>

            <div class="row" style="margin-top: 80px;">
                <div class="col-lg-4">
                    <div class="text-center">
                        <a href="<c:url value="/customer-update/"/>${user.id}" class="btn btn-primary pull-center">Đăng ký bảo hiểm y tế</a>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="text-center">
                        <a href="<c:url value="/calculate-fee/"/>${user.id}" class="btn btn-primary pull-center">Tính bảo hiểm tế</a>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="text-center">
                        <a href="<c:url value="/customer-logout"/>" class="btn btn-primary pull-center">Đăng xuất</a>
                    </div>
                </div>
            </div>

        </div>
    </c:if>

</body>
</html>