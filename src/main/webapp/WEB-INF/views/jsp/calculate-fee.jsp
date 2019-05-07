<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Tính phí bảo hiểm y tế</title>
    <link rel="icon" href="https://previews.123rf.com/images/arcady31/arcady311609/arcady31160900084/63065169-tick-shield-security-icon.jpg" type="image/x-icon"/>
    <link rel="shortcut icon" href="https://previews.123rf.com/images/arcady31/arcady311609/arcady31160900084/63065169-tick-shield-security-icon.jpg" type="image/x-icon"/>
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="container">
		<h3 class="text-center">Tính phí bảo hiểm y tế</h3>
		<c:url value="/calculate-fee/" var="calculate" />
		<form action="${calculate}" method="POST" name="customer">
				<div class="col-lg-12 row">

					<%--<input name="id" type="hidden" class="form-control" id="id" value="1" required/>--%>
					<%--<input name="cmnd" type="hidden" class="form-control" id="cmnd" placeholder="số CMND" value="${customer.cmnd}" required/>--%>
					<%--<input name="full_name" type="hidden" class="form-control" id="full_name" placeholder="Họ Tên" required value="${customer.full_name}"/>--%>
					<%--<input name="dob" type="hidden" class="form-control" id="dob" placeholder="Ngày sinh" value="${customer.dob}" required/>--%>
					<%--<input name="sex" type="hidden" class="form-control" id="sex" placeholder="Ngày sinh" value="${customer.sex}" required/>--%>
					<%--<input name="country" type="hidden" class="form-control" id="country" placeholder="Quoc tich" value="${customer.country}" required/>--%>
					<%--<input name="nation" type="hidden" class="form-control" id="nation" placeholder="Dan toc" value="${customer.nation}" required/>--%>
					<%--<input name="xa" type="hidden" class="form-control" id="xa" placeholder="Xa, Phuong" value="${customer.xa}" required/>--%>
					<%--<input name="huyen" type="hidden" class="form-control" id="huyen" placeholder="Quan, Huyen" value="${customer.huyen}" required/>--%>
					<%--<input name="tinh" type="hidden" class="form-control" id="tinh" placeholder="Tinh, Thanh Pho" value="${customer.tinh}" required/>--%>
					<%--<input name="msbhxh" type="hidden" class="form-control" id="msbhxh" placeholder="" value="${customer.msbhxh}" required/>--%>
					<%--<input name="phone" type="hidden" class="form-control" id="phone" placeholder="" value="${customer.phone}" required/>--%>


					<div class="form-group col-lg-4">
						<label class="required">Phương thức đóng</label>
						<select name="phuong_thuc" id="phuong_thuc" class="form-control">
							<option value="1" ${customer.phuong_thuc == 1 ? 'selected' : ''}>hàng tháng</option>
							<option value="3" ${customer.phuong_thuc == 3 ? 'selected' : ''}>3 tháng 1 lần</option>
							<option value="6" ${customer.phuong_thuc == 6 ? 'selected' : ''}>6 tháng 1 lần</option>
							<option value="12" ${customer.phuong_thuc == 12 ? 'selected' : ''}>hàng năm</option>
						</select>
					</div>

					<div class="form-group col-lg-4">
						<label for="muc_dong" class="required">Mức lương</label>
						<input name="muc_dong" type="number" class="form-control" id="muc_dong" placeholder="1 000 000" value="${customer.muc_dong}" min="0" required/>
						<small class="form-text text-muted" id="mess_muc_dong"> Phải là số vd: <span class="text-primary">1 000 000</span></small>
						<small class="form-text text-muted" id="mess_muc_dong_2" style="display: none"> Mức đóng dựa trên tiền lương cở sở <span class="text-primary">1 390 000 vnd</span> / th </small>
					</div>

					<div class="form-group col-lg-4">
						<label class="required">Nhóm đối tượng đóng BHYT</label>
						<select name="nhom" id="nhom" class="form-control">
							<option value="2" ${customer.nhom == 2 ? 'selected' : ''}>thuộc hộ gia đình cận nghèo</option>
							<option value="3" ${customer.nhom == 3 ? 'selected' : ''}>học sinh, sinh viên</option>
							<option value="4" ${customer.nhom == 4 ? 'selected' : ''}>gia đình làm nông, lâm, ngư, diêm, nghiệp có mức thu nhập trung bình</option>
							<option value="5" ${customer.nhom == 5 ? 'selected' : ''}>tham gia theo hộ gia đình</option>
							<option value="1" ${customer.nhom == 1 ? 'selected' : ''}>nhóm 4.5 %</option>
						</select>
					</div>

					<div class="form-group col-lg-4" id="sltv" style="${customer.nhom == 5 ? '' : 'display: none' }">
						<label for="sl" class="required">Số lượng thành viên</label>
						<input name="sl" type="number" class="form-control" id="sl" value="${customer.sl}" min="0" required/>
						<small class="form-text text-muted"> Phải là số vd: <span class="text-primary">3</span></small>
					</div>

				</div>
				<%--end ke khai chung--%>

				<div class="form-group col-lg-12">
					<button type="submit" class="btn btn-primary" id="bnt-fee" >Tính Phí</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

<script>

	$("select[name='nhom']").change(function(){
		var nhom = $("select[name='nhom']").val();
		console.log($("select[name='nhom']").val());
		if ( nhom == 2 | nhom == 3) {
			$('#muc_dong').hide('slow');
			$('#mess_muc_dong').hide('fast');
			$('#mess_muc_dong_2').show('slow');
		}
		else{
			$('#muc_dong').show('slow');
			$('#mess_muc_dong').show('slow');
			$('#mess_muc_dong_2').hide('fast');
		}

		if ( nhom == 5 ) {
			$('#sltv').show('slow');
		}
		else {
			$('#sltv').hide('slow');
		}

	});

	//////////F12 disable code////////////////////////
	document.onkeypress = function (event) {
		event = (event || window.event);
		if (event.keyCode == 123) {
			alert('No F-12');
			return false;
		}
	}
	document.onmousedown = function (event) {
		event = (event || window.event);
		if (event.keyCode == 123) {
			alert('No F-keys');
			return false;
		}
	}
	document.onkeydown = function (event) {
		event = (event || window.event);
		if (event.keyCode == 123) {
			alert('No F-keys');
			return false;
		}
	}

</script>