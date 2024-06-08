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
		
		textarea {resize: none;}
		a:hover {text-decoration: none;}
		.a-center {display: flex; justify-content: center; align-items: center;}
		.fs-22 {font-size: 18px;}
		.bg-main {background: var(--main-color);}
		.text-main {color: var(--main-color);}
		.btn-eee {background: #eee; transition: all 0.5s;}
		.btn-eee:hover {background: #888; color:white;}
	
		header { height: 100px;}
		nav {height: 60px;}
		.contents { min-height: 400px;}
		footer { height: 100px;}
		
		.nav-link {color: #fff; transition: all 0.5s; }
		.nav-link:hover {color: #343a40;}
		
		.upload-container {
			width: 1000px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from seller";
	ResultSet res = ms.select(selectQuery);
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
			<div class="upload-container">
				<div class="display-4 py-5">물건 올리기</div>
				<form method="post" action="/lesson03/quiz03_insert">
					<div class="form-group d-flex justify-content-between">
						<select name="id" class="form-control col-3">
							<option>-아이디 선택-</option>
							<% while (res.next()) { %>
							<option value="<%= res.getInt("id") %>"><%= res.getString("nickname") %></option>
							<% } %>
						</select>
						<input type="text" name="title" class="form-control col-5" placeholder="제목">
						<div class="input-group col-3 p-0">
						  <input type="text" name="price" class="form-control" placeholder="가격">
						  <div class="input-group-append">
						    <span class="input-group-text">원</span>
						  </div>
						</div>
					</div>
					<textarea name="description" class="form-control" rows="10" placeholder="내용을 입력해 주세요."></textarea>
					<div class="input-group mt-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text">이미지 url</span>
					  </div>
					  <input type="text" name="pictureUrl" class="form-control">
					</div>
					<button type="submit" class="btn btn-eee w-100 mt-3">저장</button>
				</form>
			</div>
		</section>
		<footer class="a-center">
			<small class="text-secondary">Copyright 2024 © HONG All Rights Reserved.</small>
		</footer>
	</div>
<%
ms.disconnect();
%>
</body>
</html>