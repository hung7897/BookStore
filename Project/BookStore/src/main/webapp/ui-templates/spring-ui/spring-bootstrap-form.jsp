<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="" modelAttribute="bean" enctype="">
	<div class="form-group">
		<label>Tên Đăng Nhập</label>
		<form:input path="property" cssClass="form-control"/>
		<form:errors path="property"/>
	</div>
	<div class="form-group">
		<label>Giới Tính</label>
		<div class="form-control">
			<form:radiobutton path="gender" value="true" label="Male" />
			<form:radiobutton path="gender" value="false" label="Female"/>
		</div>
		<form:errors path="property"/>
	</div>
	<div class="form-group">
		<form:checkbox path="remember" value="true" label="Remember me?"/>
	</div>
	<div class="form-group">
		<button class="btn btn-default" formaction="">Đăng Nhập</button>
	</div>
</form:form>