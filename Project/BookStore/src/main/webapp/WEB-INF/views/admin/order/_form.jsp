<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<form:form action="admin/${ctrl}/index" modelAttribute="model">
	<div class="form-group">
		<label>Id</label>
		<form:input path="id" class="form-control" readonly="true" placeholder="Auto Number"/>
	</div>
	<div class="form-group">
		<label>Khách Hàng</label>
		<form:input path="customer.id" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Địa Chỉ</label>
		<form:input path="address" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Ngày Đặt Hàng</label>
		<form:input path="orderDate" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Tổng Tiền</label>
		<form:input path="amount" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Mô Tả</label>
		<form:textarea path="description" class="form-control" rows="4"></form:textarea>
	</div>
	<div class="form-group">
	<jsp:include page="../shared/buttons.jsp"/>
	</div>
</form:form>

<c:if test="${!empty model.orderDetails}">
	<h3>CHI TIẾT ĐƠN HÀNG</h3>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>Tên Khách Hàng</th>
				<th>Đơn Giá</th>
				<th>Số Lượng</th>
				<th>Tổng Tiền</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="d" items="${model.orderDetails}">
			<tr>
				<td>${d.product.id}</td>
				<td>${d.product.name}</td>
				<td>${d.unitPrice}</td>
				<td>${d.quantity}</td>
				<td>${d.unitPrice*d.quantity}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</c:if>