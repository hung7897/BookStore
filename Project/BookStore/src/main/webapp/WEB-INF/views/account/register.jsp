<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>Đăng Ký</h2>

<div class="alert alert-danger">${message}</div>

<form:form action="account/register" modelAttribute="customer" enctype="multipart/form-data">
	<div class="form-group">
		<label>Tên Đăng Nhập</label>
		<form:input path="id" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Mật Khẩu</label>
		<form:password path="password"  class="form-control"/>
	</div>
	<div class="form-group">
		<label>Xác Nhận Mật Khẩu</label>
		<input type="password" name="password2" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Họ Và Tên</label>
		<form:input path="fullname" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Địa Chỉ Email</label>
		<form:input path="email" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Ảnh</label>
		<input type="file" name="upphoto" class="form-control"/>
	</div>
	<div class="form-group">
		<button class="btn btn-default">
			<span class="glyphicon glyphicon-log-in"></span> Đăng Ký
		</button>
	</div>
</form:form>