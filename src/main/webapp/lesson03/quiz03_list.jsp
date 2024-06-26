<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HONG당무 마켓</title>
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	
	<!-- css -->
	<style>
		:root {
			--main-color: rgb(255, 127, 80);
		}
		
		a:hover {text-decoration: none;}
		.a-center {display: flex; justify-content: center; align-items: center;}
		.fs-22 {font-size: 18px;}
		.bg-main {background: var(--main-color);}
		.text-main {color: var(--main-color);}
	
		header { height: 100px;}
		nav {height: 60px;}
		.contents { min-height: 400px;}
		footer { height: 100px;}
		
		.nav-link {color: #fff; transition: all 0.5s; }
		.nav-link:hover {color: #343a40;}
		
		.seller-item-container {
			display: flex;
			flex-wrap: wrap;
			padding: 10px 0;
			gap: 0 2%;
		}
		.seller-item {
			width: 32%;
			border: var(--main-color) solid 2px;
			padding: 10px;
			margin: 10px 0;
			transition: all 0.5s;
		}
		.seller-item:hover {
			background: #fee;
			cursor: pointer;
		}
		.seller-name {
			color: var(--main-color);
			font-weight: bold;
		}
		.seller-img {
			width: 100%;
			height: 240px;
			object-fit: cover;
		}
	</style>
</head>
<body>
<%
// db 연결
MysqlService ms = MysqlService.getInstance();
ms.connect();
	
// select all from used_goods & seller?
String query = "select s.id, s.nickname, u.title, u.`description`, u.price, u.pictureUrl"
+ " from seller as s"
+ " join used_goods as u"
+ " on s.id = u.sellerId"
+ " order by s.id DESC;";

ResultSet res = ms.select(query);
%>
	
	<div id="wrap" class="container">
		<header class="a-center bg-main">
			<h1><a href="/lesson03/quiz03_list.jsp" class="text-white">HONG당무 마켓</a></h1>
		</header>
		<nav class="bg-main a-center">
			<ul class="nav nav-fill w-100 fs-22 font-weight-bold">
				<li class="nav-item col-4"><a href="/lesson03/quiz03_list.jsp" class="nav-link">목록</a></li>
				<li class="nav-item col-4"><a href="/lesson03/quiz03_upload.jsp" class="nav-link">물건 올리기</a></li>
				<li class="nav-item col-4"><a href="#" class="nav-link">마이페이지</a></li>
			</ul>
		</nav>
		<section class="contents">
			<!-- 판매자 상품 목록 -->
			<div class="seller-item-container">
			<%
				while(res.next()) {
					String pictureUrl = "";
					if (res.getString("pictureUrl") == null || res.getString("pictureUrl").equals("")) {
						pictureUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTytbFLf-6q6MxiCpxh8oIIltg7j1eY7hSDtQ&s";
					} else {
						pictureUrl = res.getString("pictureUrl");
					}
			%>
				<div class="seller-item">
					<img src="<%= pictureUrl %>" class="seller-img">
					<div class="font-weight-bold mt-1"><%= res.getString("title") %></div>
					<small class="text-secondary "><%= res.getInt("price") %> 원</small>
					<div class="seller-name"><%= res.getString("nickname") %></div>
				</div>
			<%
				}
			%>
			</div>
		</section>
		<footer class="a-center">
			<small class="text-secondary">Copyright 2024 © HONG All Rights Reserved.</small>
		</footer>
	</div>
	
<%
//db 연결해제
ms.disconnect();
%>
</body>
</html>











