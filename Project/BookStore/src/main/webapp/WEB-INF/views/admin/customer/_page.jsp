<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<table class="table table-hover">
	<thead>
		<tr>
			<th>Id</th>
			<th>Tên Đầy Đủ</th>
			<th>Mật Khẩu</th>
			<th>Địa Chỉ Email</th>
			<th>Ảnh</th>
			<th>Kích Hoạt?</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${list}">
		<tr>
			<td>${item.id}</td>
			<td>${item.fullname}</td>
			<td>${item.password}</td>
			<td>${item.email}</td>
			<td>${item.photo}</td>
			<td>${item.activated?'Yes':'No'}</td>
			<td>
				<a class="btn btn-default btn-sm" href="admin/customer/edit/${item.id}">
					<span class="glyphicon glyphicon-edit"></span>
				</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>