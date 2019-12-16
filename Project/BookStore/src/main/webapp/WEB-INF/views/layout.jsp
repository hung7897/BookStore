﻿<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="layout/head.jsp"/>
	<style>
		.footer{

		}
		/*====================
	Footer
====================== */

		/* Main Footer */
		footer .main-footer{	padding: 20px 0;	background: #252525;}
		footer ul{	padding-left: 0;	list-style: none;}

		/* Copy Right Footer */
		.footer-copyright {	background: #222;	padding: 5px 0;}
		.footer-copyright .logo {    display: inherit;}
		.footer-copyright nav {    float: right;    margin-top: 5px;}
		.footer-copyright nav ul {	list-style: none;	margin: 0;	padding: 0;}
		.footer-copyright nav ul li {	border-left: 1px solid #505050;	display: inline-block;	line-height: 12px;	margin: 0;	padding: 0 8px;}
		.footer-copyright nav ul li a{	color: #969696;}
		.footer-copyright nav ul li:first-child {	border: medium none;	padding-left: 0;}
		.footer-copyright p {	color: #969696;	margin: 2px 0 0;}

		/* Footer Top */
		.footer-top{	background: #252525;	padding-bottom: 30px;	margin-bottom: 30px;	border-bottom: 3px solid #222;}

		/* Footer transparent */
		footer.transparent .footer-top, footer.transparent .main-footer{	background: transparent;}
		footer.transparent .footer-copyright{	background: none repeat scroll 0 0 rgba(0, 0, 0, 0.3) ;}

		/* Footer light */
		footer.light .footer-top{	background: #f9f9f9;}
		footer.light .main-footer{	background: #f9f9f9;}
		footer.light .footer-copyright{	background: none repeat scroll 0 0 rgba(255, 255, 255, 0.3) ;}

		/* Footer 4 */
		.footer- .logo {    display: inline-block;}

		/*====================
            Widgets
        ====================== */
		.widget{	padding: 20px;	margin-bottom: 40px;}
		.widget.widget-last{	margin-bottom: 0px;}
		.widget.no-box{	padding: 0;	background-color: transparent;	margin-bottom: 40px;
			box-shadow: none; -webkit-box-shadow: none; -moz-box-shadow: none; -ms-box-shadow: none; -o-box-shadow: none;}
		.widget.subscribe p{	margin-bottom: 18px;}
		.widget li a{	color: #ff8d1e;}
		.widget li a:hover{	color: #4b92dc;}
		.widget-title {margin-bottom: 20px;}
		.widget-title span {background: #839FAD none repeat scroll 0 0;display: block; height: 1px;margin-top: 25px;position: relative;width: 20%;}
		.widget-title span::after {background: inherit;content: "";height: inherit;    position: absolute;top: -4px;width: 50%;}
		.widget-title.text-center span,.widget-title.text-center span::after {margin-left: auto;margin-right:auto;left: 0;right: 0;}
		.widget .badge{	float: right;	background: #7f7f7f;}

		.typo-light h1,
		.typo-light h2,
		.typo-light h3,
		.typo-light h4,
		.typo-light h5,
		.typo-light h6,
		.typo-light p,
		.typo-light div,
		.typo-light span,
		.typo-light small{	color: #fff;}

		ul.social-footer2 {	margin: 0;padding: 0;	width: auto;}
		ul.social-footer2 li {display: inline-block;padding: 0;}
		ul.social-footer2 li a:hover {background-color:#ff8d1e;}
		ul.social-footer2 li a {display: block;	height:30px;width: 30px;text-align: center;}
		.btn{background-color: #ff8d1e; color:#fff;}
		.btn:hover, .btn:focus, .btn.active {background: #4b92dc;color: #fff;
			-webkit-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
			-moz-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
			-ms-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
			-o-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
			box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
			-webkit-transition: all 250ms ease-in-out 0s;
			-moz-transition: all 250ms ease-in-out 0s;
			-ms-transition: all 250ms ease-in-out 0s;
			-o-transition: all 250ms ease-in-out 0s;
			transition: all 250ms ease-in-out 0s;

		}
		.center {
			display: block;
			margin-left: auto;
			margin-right: auto;
		}
	</style>
</head>
<body style="font-size: 15px">
    <div class="container">
        <header class="nn-header row header">
				<a  href="home/index" >
				<img class="center" src="images/logo.png"  />
				</a>




		</header>
		<jsp:include page="layout/menu.jsp"/>
        <div class="nn-sheet row">

            <article class="col-sm-9">
                <div class="nn-body">
                	<jsp:include page="${view}.jsp"/>
                </div>
            </article>

            <aside class="col-sm-3">

            
            <c:if test="${!empty sessionScope.user && sessionScope.user.admin}">
            	<div class="panel panel-default">
					<div class="panel-body">
						<a class="btn btn-danger btn-lg" href="admin/home/index">Quản trị website</a>
					</div>
				</div>
			</c:if>
                <!--CartInfo-->
				<jsp:include page="layout/search.jsp"/>
				<jsp:include page="layout/cart.jsp"/>
				<div id="favorite"></div>
            </aside>
        </div>
    </div>
	<footer id="footer" class="footer-1">
		<div class="main-footer widgets-dark typo-light">
			<div class="container">
				<div class="row">

					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="widget subscribe no-box">
							<h5 class="widget-title">BOOK sTORE<span></span></h5>
							<p></p>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="widget no-box">
							<h5 class="widget-title">Quick Links<span></span></h5>
							<ul class="thumbnail-widget">
								<li>
									<div class="thumb-content"><a href="home/about">About</a></div>
								</li>
								<li>
									<div class="thumb-content"><a href="home/contact">Contact</a></div>
								</li>
								<li>
									<div class="thumb-content"><a href="home/faq">FAQ</a></div>
								</li>
								<li>
									<div class="thumb-content"><a href="home/feedback">Feed Back</a></div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="widget no-box">
							<h5 class="widget-title">Get Started<span></span></h5>
							<p></p>
							<a class="btn" href="account/register" target="_blank">Register Now</a>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6 col-md-3">

						<div class="widget no-box">
							<h5 class="widget-title">Contact Us<span></span></h5>

							<p><a href="mailto:info@domain.com" title="glorythemes">huyrik035@gmail.com</a></p>
							<ul class="social-footer2">
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
	</footer>
</body>
</html>