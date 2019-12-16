<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
        
        <div class="navbar navbar-inverse row" style="background-color: black; width: 100%;display: block" >
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
			<!--Menu-->
                <ul class="nav navbar-nav">
                    <li><a href="home/index" style="color: #ff8d1e"><span class="glyphicon glyphicon-home"></span> <s:message code="bookstore.home"/></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #ff8d1e"><span class="glyphicon glyphicon-th-list"></span> Thể Loại <span class="caret"></span></a>
                            <ul class="dropdown-menu" >
                            <c:forEach var="item" items="${cates}">
                                <c:choose>
                                    <c:when test="${pageContext.response.locale.language=='vi'}">
                                        <a href="product/list-by-category/${item.id}" class="list-group-item" style="color: #ff8d1e">${item.nameVN}</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="product/list-by-category/${item.id}" class="list-group-item" style="color: #ff8d1e">${item.name}</a>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            </ul>
                    </li>
                    <li><a href="product/best" style="color: #ff8d1e">Sách bán chạy</a></li>
                    <li><a href="product/latest" style="color: #ff8d1e">Sách mới</a></li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #ff8d1e"><span class="glyphicon glyphicon-user"></span> Tài khoản <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <c:choose>
                        	<c:when test="${empty sessionScope.user}">
	                            <li><a href="account/login" style="color: #ff8d1e">Đăng nhập</a></li>
	                            <li><a href="account/forgot" style="color: #ff8d1e">Quên mật khẩu</a></li>
	                            <li><a href="account/register" style="color: #ff8d1e">Đăng ký thành viên</a></li>
                        	</c:when>
                        	<c:otherwise>
	                            <li><a href="account/logoff" style="color: #ff8d1e">Đăng xuất</a></li>
	                            <li><a href="account/change" style="color: #ff8d1e">Đổi mật khẩu</a></li>
	                            <li><a href="account/edit" style="color: #ff8d1e">Cập nhật hồ sơ</a></li>
	                            <li class="divider"></li>
	                            <li><a href="order/list" style="color: #ff8d1e">Đơn hàng</a></li>
	                            <li><a href="order/items" style="color: #ff8d1e">Hàng đã mua</a></li>
                        	</c:otherwise>
                        </c:choose>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" data-lang="en" style="color: #ff8d1e">English</a></li>
                    <li><a href="#" data-lang="vi" style="color: #ff8d1e">Tiếng Việt</a></li>
                </ul>
			<!--Menu-->
            </div>
        </div>