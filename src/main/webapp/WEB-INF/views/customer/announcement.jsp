<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/announcement.css">
	<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
    <title>전국이내손안에 - 공지사항</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">&nbsp;&nbsp;<img src="img/logo.png" width="50px" height="50px">&nbsp;&nbsp;전국이내손안에</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
				<a class="nav-link" href="main.html">Home <span class="sr-only"><!-- (current) --></span></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="small.html">렌트카</a>
			  </li>
			   <li class="nav-item">
				<a class="nav-link" href="activities_main.html">여행지티켓예약</a>
			  </li>
	       	<li class="nav-item">
	        	<a class="nav-link" href="Event.html">올인원가성비이벤트</a>
	      	</li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="mypage.html" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  마이페이지
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="mypage.html">예약내역 확인</a></li>
                  <li><a class="dropdown-item" href="#">문의사항 확인</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">회원 정보 수정</a></li>
                </ul>
              </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">이벤트 준비 중</a>
            </li>
          </ul>
        </div>
      </nav>

    <div class="board_wrap">
        <div class="board_title">
            <center>
            <strong>공지사항</strong>
            </center>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">글번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                <div>
                    <div class="num">5</div>
                    <div class="title"><a href="view.html">2월 23일 서버점검 공지</a></div>
                    <div class="writer">이멀캠</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">5</div>
                </div>
                <div>
                    <div class="num">4</div>
                    <div class="title"><a href="view.html">2월 16일 서버점검 공지</a></div>
                    <div class="writer">전멀캠</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">4</div>
                </div>
                <div>
                    <div class="num">3</div>
                    <div class="title"><a href="view.html">2월 9일 서버점검 공지</a></div>
                    <div class="writer">권멀캠</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">3</div>
                </div>
                <div>
                    <div class="num">2</div>
                    <div class="title"><a href="view.html">2월 2일 서버점검 공지</a></div>
                    <div class="writer">박멀캠</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">2</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">1월 26일 서버점검 공지</a></div>
                    <div class="writer">유멀캠</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">관리자만 작성가능합니다.</a></div>
                    <div class="writer">메인관리자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">관리자만 작성가능합니다.</a></div>
                    <div class="writer">메인관리자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">관리자만 작성가능합니다.</a></div>
                    <div class="writer">메인관리자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">관리자만 작성가능합니다.</a></div>
                    <div class="writer">메인관리자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">관리자만 작성가능합니다.</a></div>
                    <div class="writer">메인관리자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">관리자만 작성가능합니다.</a></div>
                    <div class="writer">메인관리자</div>
                    <div class="date">2021.1.15</div>
                    <div class="count">1</div>
                </div>
            </div>
            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
            <div class="bt_wrap">
                <a href="#" class="on">글 작성</a>
            </div>
        </div>
    </div>
</body>
</html> 