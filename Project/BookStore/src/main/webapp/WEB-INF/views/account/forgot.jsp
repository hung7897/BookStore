<%@ page pageEncoding="utf-8" %>

<h2>Quên Mật Khẩu</h2>

<div class="alert alert-danger">${message}</div>

<form action="account/forgot" method="post">
	<div class="form-group">
		<label>Tên Đăng Nhập</label>
		<input name="id" class="form-control">
	</div>
	<div class="form-group">
		<label>Địa Chỉ Email</label>
		<input name="email" class="form-control">
	</div>
	<div class="form-group">
		<button class="btn btn-default">
			<span class="glyphicon glyphicon-log-in"></span> Get Password
		</button>
	</div>
</form>