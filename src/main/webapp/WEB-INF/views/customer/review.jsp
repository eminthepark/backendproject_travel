<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/ReviewStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
    <title>전국이내손안에 - 후기</title>
</head>
<body>
    <!-- 내비게이션 바 -->
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
              <a class="nav-link" href="accommodation_main.html">숙박예약</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="activities_main.html">여행지티켓예약</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="Event.html">올인원가성비이벤트</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  마이페이지
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">예약내역 확인</a></li>
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

    <section class="title">
        <h2>후기</h2>
    </section>

    <section class="container-top">
        <h3>이달의 대표 후기</h3>
    </section>

    <section class="container">
        <div id="content-1" class="content-detail">
            <div class="content-top">
                <h3 class="content-title">좋아요</h3>
                <p class="content-author">ail****</p>
                    <div class="content-subtitle">
                        <div class="content-star">
                            <p>⭐️⭐️⭐️⭐️⭐️</p>
                        </div>
                        <div class="content-type">
                        <p >바다낚시 체험</p>
                        </div>
                        <div class="date-time">
                            <p>2022.02.11</p>
                        </div>
                    </div>
            </div>
            <div class="content-bottom">
                <p>친구들끼리 네명이서 방문했는데 완전 재밌게 놀다왔어요! 여름에 또 갈게용</p>
            </div>
        </div>

        <div id="content-2" class="content-detail">
            <div class="content-top">
                <h3 class="content-title">재방문</h3>
                <p class="content-author">2yn****</p>
                    <div class="content-subtitle">
                        <div class="content-star">
                            <p>⭐️⭐️⭐️⭐️⭐️</p>
                        </div>
                        <div class="content-type">
                        <p>숙박</p>
                        </div>
                        <div class="date-time">
                            <p>2022.02.17</p>
                        </div>
                    </div>
            </div>
            <div class="container-bottom">
                <p class="content-bottom">재방문이였는데 만족스러웠습니다. 재방문의사 있습니다</p>
            </div>
        </div>

        <div class="continer-btn">
            <p class="btn-add">후기 쓰러 가기</p>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>