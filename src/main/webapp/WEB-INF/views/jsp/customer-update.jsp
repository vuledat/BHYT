<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Đăng ký bảo hiểm y tế</title>
</head>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
<body>
	<div class="container">
		<h3 class="text-center">Đăng ký bảo hiểm y tế</h3>
		<c:url value="/updateCustomer" var="updateCustomer" />
		<form action="${updateCustomer}" method="POST" name="customer">
			<%--Id: <form:input path="id" readonly="true" /> <br/> <br/>--%>
			<%--Name: <form:input path="name" /> <br/> <br/>--%>
			<%--Address: <form:input path="address" /> <br/> <br/>--%>
			<%--<form action="<c:url value="/signupCustomer"/>" method="POST" name="customer">--%>
				<h5 class="text-danger">Phần kê khai bắt buộc</h5>
				<div class="row">
					<div class="form-group col-lg-6">
						<label for="cmnd" class="required">Số CMND</label>
						<input name="cmnd" type="number" class="form-control minlength" minlength="9" maxlength="12" id="cmnd" placeholder="vd: 143232456" value="${customer.cmnd}" required/>
						<small class="form-text text-muted">Nhập số CMND của bạn ( Phải là số )</small>
					</div>

					<input name="id" type="hidden" class="form-control" id="id" value="${customer.id}" required/>

					<div class="form-group col-lg-6">
						<label for="full_name" class="required">Họ và Tên</label>
						<input name="full_name" type="text" class="form-control" id="full_name" placeholder="vd: Vũ Lê Đạt" required value="${customer.full_name}"/>
					</div>

					<div class="form-group col-lg-6">
						<label for="dob" class="required">Ngày sinh</label>
						<input name="dob" type="date" class="form-control" id="dob" placeholder="05/05/1997" min="2019-05-08" value="${customer.dob}" required/>
						<small class="form-text text-muted"> Phải là ngày tháng vd: <span class="text-primary">05/05/1997</span> </small>
					</div>

					<%--<div class="form-group col-lg-6">--%>
						<%--<label for="password">Password</label>--%>
						<%--<input name="password" type="password" class="form-control" id="password" placeholder="Password" />--%>
					<%--</div>--%>

					<%--<div class="form-group col-lg-6">--%>
						<%--<label for="address">Dia chi</label>--%>
						<%--<input name="address" type="text" class="form-control" id="address" placeholder="Dia chi" value="${customer.address}" required/>--%>
					<%--</div>--%>

					<div class="form-group col-lg-6">
						<label class="required">Giới tính</label>
						<div class="row">
							<div class="col-lg-2">
								<input  type="radio" name="sex" value="0" ${customer.sex == 0 ? 'checked' : ''} > Nam
							</div>

							<div class="col-lg-2">
								<input  type="radio" name="sex" value="1" ${customer.sex == 1 ? 'checked' : ''}> Nữ
							</div>

							<div class="col-lg-2">
								<input  type="radio" name="sex" value="2" ${customer.sex == 2 ? 'checked' : ''}> Khác
							</div>
						</div>
					</div>

					<div class="form-group col-lg-6">
						<label for="country" class="required">Quốc tịch</label>
						<input name="country" type="text" class="form-control" id="country" placeholder="vd: Việt Nam" value="${customer.country}" required/>
					</div>

					<div class="form-group col-lg-6">
						<label for="nation" class="required">Dân tộc</label>
						<input name="nation" type="text" class="form-control" id="nation" placeholder="vd: Kinh" value="${customer.nation}" required/>
					</div>

					<div class="col-lg-12">
						<h6>Nơi đăng ý giấy khai sinh</h6>
						<div class="row">
							<div class="form-group col-lg-4">
								<label for="xa" class="required">Xã ( Phường )</label>
								<input name="xa" type="text" class="form-control" id="xa" placeholder="vd: Tứ Cường" value="${customer.xa}" required/>
							</div>

							<div class="form-group col-lg-4">
								<label for="huyen" class="required">Quận ( Huyện )</label>
								<input name="huyen" type="text" class="form-control" id="huyen" placeholder="vd: Thanh Miện" value="${customer.huyen}" required/>
							</div>

							<div class="form-group col-lg-4">
								<label for="tinh" class="required">Tinh ( Thành phố )</label>
								<input name="tinh" type="text" class="form-control" id="tinh" placeholder="vd: Hải Dương" value="${customer.tinh}" required/>
							</div>
						</div>
					</div>

					<%--Ke khai chung--%>
					<div class="form-group col-lg-12">
						<h5 class="text-danger">Phần kê khai chung</h5>
					</div>

					<div class="form-group col-lg-6">
						<label for="msbhxh" class="">Mã số BHXH (đã cấp)</label>
						<input name="msbhxh" type="number" class="form-control" id="msbhxh" placeholder="" value="${customer.msbhxh}"/>
						<small class="form-text text-muted">Phải là số </small>
					</div>

					<div class="form-group col-lg-6">
						<label for="phone" class="required">Số điện thoại liên hệ</label>
						<input name="phone" type="number" class="form-control" id="phone" placeholder="vd: 0333 032 794" value="${customer.phone}" required/>
						<small class="form-text text-muted"> Phải là số vd: <span class="text-primary">0333 032 794</span></small>
					</div>

                    <div class="col-lg-12 row" >
                        <%--<div class="form-group col-lg-4">--%>
                            <%--<label class="required">Phương thức đóng ${customer.phuong_thuc}</label>--%>
                            <%--<select name="phuong_thuc" id="phuong_thuc" class="form-control">--%>
                                <%--<option value="1" ${customer.phuong_thuc == 1 ? 'selected' : ''}>hàng tháng</option>--%>
                                <%--<option value="3" ${customer.phuong_thuc == 3 ? 'selected' : ''}>3 tháng 1 lần</option>--%>
                                <%--<option value="6" ${customer.phuong_thuc == 6 ? 'selected' : ''}>6 tháng 1 lần</option>--%>
                                <%--<option value="12" ${customer.phuong_thuc == 12 ? 'selected' : ''}>hàng năm</option>--%>
                            <%--</select>--%>
                        <%--</div>--%>

                        <%--<div class="form-group col-lg-4">--%>
                            <%--<label for="muc_dong" class="required">Mức tiền đóng</label>--%>
                            <%--<input name="muc_dong" type="number" class="form-control" id="muc_dong" placeholder="" value="${customer.muc_dong}" required/>--%>
                            <%--<small class="form-text text-muted"> Phải là số vd: <span class="text-primary">1 000 000</span></small>--%>
                        <%--</div>--%>

                        <%--<div class="form-group col-lg-4" style="display: none" id="tong_tien">--%>
                            <%--<label for="tong_tien">Tổng số tiền cần đóng</label>--%>
                            <%--<input name="tong_tien" type="number" class="form-control" placeholder="" readonly/>--%>
                        <%--</div>--%>

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
								<small class="form-text text-muted" id="mess_muc_dong_2" style="display: none"> Mức đóng dựa trên tiền lương cở sở <span class="text-primary">1 390 000 vnd</span> / th: </small>
							</div>

							<div class="form-group col-lg-4">
								<label class="required">Nhóm đối tượng đóng BHYT</label>
								<select name="nhom" id="nhom" class="form-control">
									<option value="1" ${customer.nhom == 1 ? 'selected' : ''}>nhóm 4.5 %</option>
									<option value="2" ${customer.nhom == 2 ? 'selected' : ''}>thuộc hộ gia đình cận nghèo</option>
									<option value="3" ${customer.nhom == 3 ? 'selected' : ''}>học sinh, sinh viên</option>
									<option value="4" ${customer.nhom == 4 ? 'selected' : ''}>gia đình làm nông, lâm, ngư, diêm, nghiệp có mức thu nhập trung bình</option>
									<option value="5" ${customer.nhom == 5 ? 'selected' : ''}>tham gia theo hộ gia đình</option>
								</select>
							</div>

							<div class="form-group col-lg-4" id="sltv" style="${customer.nhom == 5 ? '' : 'display: none' }">
								<label for="sl" class="required">Số lượng thành viên</label>
								<input name="sl" type="number" class="form-control" id="sl" value="${customer.sl}" min="0" required/>
								<small class="form-text text-muted"> Phải là số vd: <span class="text-primary">3</span></small>
							</div>
						</div>
                    </div>
					<%--end ke khai chung--%>

					<div class="form-group col-lg-12 text-center">
						<button type="submit" class="btn btn-primary" >Cập nhật</button>
					</div>
				</div>
			</form>
	</div>
</body>
</html>

<script>
    var phuong_thuc = $("#phuong_thuc").val();
    var muc_dong = $("input[name='muc_dong']").val();
    tongtien(muc_dong, phuong_thuc);
    $("#phuong_thuc").on('change', '', function (e) {
        phuong_thuc = $("#phuong_thuc").val();
        tongtien(muc_dong, phuong_thuc);
    });

    $("input[name='muc_dong']").keyup(function(){
        muc_dong = $("input[name='muc_dong']").val();
        tongtien(muc_dong, phuong_thuc);
    });

    function tongtien(muc_dong, phuong_thuc) {
        if (muc_dong != "") {
            $("#tong_tien").show("fast");
            $("input[name='tong_tien']").val(muc_dong * phuong_thuc);
        }
        else {
            $("#tong_tien").hide("slow");
        }
    }

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

	$(document).ready(function(){
		var d = new Date();

		$('.minlength').on('keyup', function(){
			e_len = $(this).val().trim().length
			e_min_len = Number($(this).attr('minlength'))
			e_max_len = Number($(this).attr('maxlength'))
			// message = e_min_len <= e_len ? '' : 'Tối thiểu' + e_min_len + ' ký tự';
			// message = e_max_len >= e_len ? '' : 'Tối đa' + e_min_len + ' ký tự';
			message = '';
			if (e_min_len > e_len) {
				message = 'Tối thiểu ' + e_min_len + ' ký tự';
			}
			if (e_max_len < e_len) {
				message = 'Tối đa ' + e_max_len + ' ký tự';
			}
			this.setCustomValidity(message)
		})
	})
</script>