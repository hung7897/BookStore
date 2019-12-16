<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<h2 align="center">${prod.name}</h2>
<table class="table table-hover">
	<thead>
	<tr>
		<img src="images/products/${prod.image}" class="center-block">
	</tr>
	</thead>
	<tr>
		<td>Thể Loại:</td>
		<td>${prod.category.nameVN}</td>
	</tr>
	<tr>
		<td>Ngày Phát Hành:</td>
		<td>${prod.productDate}</td>
	</tr>
	<tr>
		<td>Tình Trạng:</td>
		<td>${prod.available?'Còn Hàng':'Hết Hàng'}</td>
	</tr>
	<tr>
		<td>Giá Bán:</td>
		<td>${prod.unitPrice}</td>
	</tr>
	<tr align="center">
		<td colspan="2"><button class="btn btn-success btn-sm" data-cart-add="${prod.id}">
			<span class="glyphicon glyphicon-shopping-cart"></span>
		</button>
			<button class="btn btn-danger btn-sm" data-favorite="${prod.id}">
				<span class="glyphicon glyphicon-heart"></span>
			</button></td>
		<td>&nbsp;</td>
	</tr>
</table>
<h2>Giới Thiệu Tác Phẩm</h2>
<div>${prod.description}</div>

<h3>Sách Cùng Thể Loại</h3>

<div class="nn-thumbnail" style="float:bottom;">
	<c:forEach var="item" items="${prod.category.products}">
		<a href="product/detail/${item.id}">
			<img src="images/products/${item.image}">
		</a>
	</c:forEach>
</div>