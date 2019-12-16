<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<script src="js/search.js"></script>

<div id="search">
	<input placeholder="Min Price">
	<input placeholder="Max Price">
	<button>Tìm Kiếm</button>
</div>
<table class="table table-hover">
	<thead>
		<tr id="product-header">
			<th>Id</th>
			<th>Tên Sách</th>
			<th><a href="#" id="unitPrice">Đơn Giá</a></th>
			<th>Ngày</th>
			<th><a href="#" id="quantity">Số Lượng</a></th>
			<th>Còn Hàng?</th>
			<th>Thể Loại</th>
			<th>Hình Ảnh</th>
			<th></th>
		</tr>
	</thead>
	<tbody id="result"></tbody>
</table>