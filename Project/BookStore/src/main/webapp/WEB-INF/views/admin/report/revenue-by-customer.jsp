<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div class="panel panel-default">
	<div class="panel-heading">Doanh Thu Theo Mục</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Customer</th>
				<th>Tổng Số Lượng</th>
				<th>Doanh Thu</th>
				<th>Giá Thấp Nhất</th>
				<th>Giá Cao Nhất</th>
				<th>Giá Trung Bình</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="a">
			<tr>
				<td>${a[0]}</td>
				<td>${a[1]}</td>
				<td>${a[2]}</td>
				<td>${a[3]}</td>
				<td>${a[4]}</td>
				<td>${a[5]}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>

