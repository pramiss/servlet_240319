<%@page import="java.util.*"%>
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
		header { height: 100px; }
		.contents {min-height: 500px;}
		footer {height: 80px;}
		
		.logo, .logo:hover {color:#28a745; text-decoration: none;}
		.nav-link {color: #000;}
		.nav-link:hover {color: #000; background: #f5f5f5;}
		
		.fs-20 {font-size: 20px;}
		.fs-18 {font-size: 18px;}
	</style>
</head>
<body>
<%
// 아티스트 정보 
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>

<%
	// Map<String, Object> artistInfo ("name" "debut" "agency" "photo")
	// List<Map<String, Object>> musicList, Map<String, Object> musicInfo
%>

	<div id="wrap" class="container">
		<!-- 상단 -->
		<header class="d-flex align-items-center">
			<!-- 로고 -->
			<div class="col-2">
				<h1>
					<a href="/lesson02/quiz10_list.jsp" class="logo">
						Melong
					</a>
				</h1>
			</div>
			<!-- 검색 -->
			<div class="col-10">
				<form method="get" action="/lesson02/quiz10_info.jsp">
					<div class="input-group col-6">
					  <input type="text" name="search" class="form-control fs-20">
					  <div class="input-group-append">
					    <button class="btn btn-info" type="submit">검색</button>
					  </div>
					</div>
				</form>
			</div>
		</header>
		<!-- 메뉴 -->
		<nav class="d-flex align-items-center py-1">
			<ul class="nav fs-18">
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded-pill">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded-pill">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded-pill">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded-pill">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold rounded-pill">뮤직어워드</a></li>
			</ul>
		</nav>
		<!-- 내용 -->
		<section class="contents">
			<!-- 가수 정보 -->
			<article class="d-flex border border-success p-3">
				<div>
					<img width="220" src="<%= artistInfo.get("photo") %>" alt="가수사진">
				</div>
				<div class="ml-4">
					<h2 class="font-weight-bold mt-1 mb-3"><%= artistInfo.get("name") %></h2>
					<h5><%= artistInfo.get("agency") %></h5>
					<h5><%= artistInfo.get("debute") %> 데뷔</h5>
				</div>
			</article>
			<!-- 곡 목록 -->
			<div>
				<h2 class="pt-3">곡 목록</h2>
				<table class="table text-center mb-5">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					<%
						for (Map<String, Object> music : musicList) {	
					%>
						<tr>
							<td><%= music.get("id") %></td>
							<td>
								<a href="/lesson02/quiz10_info.jsp?id=<%= music.get("id") %>" class="text-decoration-none">
									<%= music.get("title") %>
								</a>
							</td>
							<td><%= music.get("album") %></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
			</div>
		</section>
		<!-- 하단 -->
		<footer class="d-flex align-items-center border-top px-4">
			<small class="text-secondary">Copyright 2024. melong All Rights Reserved.</small>
		</footer>
	</div>

















</body>
</html>