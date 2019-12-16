<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="admin/${ctrl}/index" modelAttribute="model" enctype="multipart/form-data">
	<div class="form-group">
		<label>Tên Đăng Nhập</label>
		<form:input path="id" class="form-control" readonly="${!empty model.id}"/>
	</div>
	<div class="form-group">
		<label>Mật Khẩu</label>
		<form:input path="password" class="form-control"/>
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
		<input type="file" name="upphoto" class="form-control">
		<form:hidden path="photo"/>
	</div>
	<div class="form-group">
		<label>Kích Hoạt?</label>
		<div class="form-control">
			<form:radiobutton path="activated" value="true" label="Yes"/>
			<form:radiobutton path="activated" value="false" label="No"/>
		</div>
	</div>

	<div class="form-group">
	<jsp:include page="../shared/buttons.jsp"/>
	</div>
</form:form>