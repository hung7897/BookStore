<%@ page pageEncoding="utf-8" %>

<h2>Thay Đổi Mật Khẩu</h2>

<div class="alert alert-danger">${message}</div>

<form action="account/change" method="post">
	<div class="form-group">
		<label>Tên Đăng Nhập</label>
		<input name="id" class="form-control">
	</div>
	<div class="form-group">
		<label>Mặt Khẩu Hiện Tại</label>
		<input type="password" name="password" class="form-control">
	</div>
	<div class="form-group">
		<label>Mặt Khẩu Mới</label>
		<input type="password" name="password1" class="form-control">
	</div>
	<div class="form-group">
		<label>Xác Nhận Mặt Khẩu</label>
		<input type="password" name="password2" class="form-control">
	</div>
	<div class="form-group">
		<button class="btn btn-default">
			<span class="glyphicon glyphicon-log-in"></span> Đổi Mặt Khẩu
		</button>
	</div>
</form>