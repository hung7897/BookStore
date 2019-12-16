<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="admin/${ctrl}/index" modelAttribute="model" enctype="multipart/form-data">
	<div class="row">
		<div class="form-group col-sm-4">
			<label>Id</label>
			<form:input path="id" class="form-control" readonly="true"/>
		</div>
		<div class="form-group col-sm-4">
			<label>Tên Sách</label>
			<form:input path="name" class="form-control"/>
		</div>	
		<div class="form-group col-sm-4">
			<label>Đơn Giá</label>
			<form:input path="unitPrice" class="form-control"/>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-sm-4">
			<label>Số Lượng</label>
			<form:input path="quantity" class="form-control"/>
		</div>
		<div class="form-group col-sm-4">
			<label>Ngày</label>
			<form:input path="productDate" class="form-control"/>
		</div>
		<div class="form-group col-sm-4">
			<label>Hình Ảnh</label>
			<input type="file" name="upimage" class="form-control">
			<form:hidden path="image"/>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-sm-4">
			<label>Còn Hàng?</label>
			<div class="form-control">
				<form:radiobutton path="available" value="true" label="Yes"/>
				<form:radiobutton path="available" value="false" label="No"/>
			</div>
		</div>
		<div class="form-group col-sm-4">
			<label>Thể Loại</label>
			<form:select path="category.id" class="form-control">
				<form:options items="${cates}" itemValue="id" itemLabel="nameVN"/>
			</form:select>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-sm-12">
			<label>Mô Tả</label>
			<form:textarea path="description" class="form-control" rows="5"></form:textarea>
		</div>
		<div class="form-group col-sm-12">
			<jsp:include page="../shared/buttons.jsp"/>
		</div>
	</div>
</form:form>