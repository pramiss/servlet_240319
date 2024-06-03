<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Melong</title>
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	
	<style>
		header { height: 80px; }
		nav {height: 50px;}
		.contents {min-height: 500px;}
		footer {height: 80px;}
		
		.nav-link {color: #000;}
		.nav-link:hover {color: #000; background: #eee;}
		
		.fs-20 {font-size: 20px;}
	</style>
</head>
<body>
	<div id="wrap" class="container-fluid">
		<!-- 상단 -->
		<header class="d-flex align-items-center">
			<h1 class="text-success mr-5">Melong</h1>
			<div class="input-group">
			  <input type="text" class="form-control col-3 fs-20">
			  <div class="input-group-append">
			    <button class="btn btn-info" type="submit">검색</button>
			  </div>
			</div>
		</header>
		<!-- 메뉴 -->
		<nav class="d-flex align-items-center">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded">뮤직어워드</a></li>
			</ul>
		</nav>
		<!-- 내용 -->
		<section class="contents">
			<!-- 가수 정보 -->
			<article class="pt-3">
				<h4>곡 정보</h4>
				<div class="d-flex border border-success p-3">
					<div>
						<img width="220" src="https://pbs.twimg.com/media/EFHWmyXUEAASe0o.jpg">
					</div>
					<div class="ml-4">
						<div class="display-4">삐삐</div>
						<h6 class="text-success font-weight-bold mt-2">아이유</h6>
						<div class="text-secondary d-flex mt-3">
							<div>
								<div>앨범</div>
								<div>재생시간</div>
								<div>작곡가</div>
								<div>작사가</div>
							</div>
							<div class="ml-3">
								<div>삐삐</div>
								<div>3 : 14</div>
								<div>이종훈</div>
								<div>아이유</div>
							</div>
						</div>
					</div>
				</div>
			</article>
			<!-- 곡 목록 -->
			<div>
				<h4 class="pt-5">가사</h4>
				<div class="border-top pt-2">가사 정보 없음</div>
			</div>
		</section>
		<!-- 하단 -->
		<footer class="d-flex align-items-center border-top px-4">
			<small class="text-secondary">Copyright 2024. melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>