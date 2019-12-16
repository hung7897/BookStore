<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Name VN</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${items}">
		<tr>
			<td>${item.id}</td>
			<td>${item.name}</td>
			<td>${item.nameVN}</td>
			<td>
				<a class="btn btn-default btn-sm" href="admin/category/edit/${item.id}">
					<span class="glyphicon glyphicon-edit"></span>
				</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>