<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<h2>DANH SÁCH ĐƠN HÀNG CỦA BẠN</h2>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Id</th>
			<th>Khách Hàng</th>
			<th>Ngày Đặt Hàng</th>
			<th>Tổng Tiền</th>
			<th>Địa Chỉ</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${orders}">
		<tr>
			<td>${item.id}</td>
			<td>${item.customer.id}</td>
			<td>${item.orderDate}</td>
			<td>${item.amount}</td>
			<td>${item.address}</td>
			<td>
				<a href="order/detail/${item.id}">Chi Tiết</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<th></th>
		</tr>
	</tfoot>
</table>
