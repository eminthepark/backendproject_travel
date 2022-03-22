<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
    <title>전국이내손안에 - main</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/resources/img/logo.png" width="50px" height="50px">&nbsp;&nbsp;전국이내손안에</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="mypage.html">마이페이지</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="login.html">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">로그아웃</a>
            </li>
          </ul>
        </div>
      </nav>

    <header class="showcase">
        <div class="showcase-content">
            <br>
            <img src="<%=request.getContextPath() %>/resources/img/logo.png" class="showcase-img" alt="logo">
            <br>
            <h1>환영합니다!</h1>
            <p>언제 어디서든 간편하게 여행을 즐기세요!</p>
            <p>최저의 가격으로 최고의 국내여행을 선물합니다!</p>
        </div>

        <br><br><br>

        <div class="menu">
        <div>
            <a href="accommodation_main.html" class="w-btn-neon">숙박 예약 </a>
        </div>
        <div>
            <a href="small.html" class="w-btn-neon">렌트카 예약 </i></a>
        </div>
        <div>
            <a href="activities_main.html" class="w-btn-neon">여행지 티켓 예약 </i></a>
        </div>
        <div>
            <a href="Event.html" class="w-btn-neon">올인원 가성비 이벤트 </a>
        </div>
        <div>
            <a href="Review.html" class="w-btn-neon">후기 </i></a>
        </div>
        </div>

    </header>

    <section class="tabs">
        <div class="container">
            <div id="tab-1" class="tab-item tab-border">
                <p>공지사항</p>
            </div>
            <div id="tab-2" class="tab-item ">
                <p>자주 묻는 질문</p>
            </div>
        </div>
    </section>

    <section class="tab-content">
        <div class="container">
            <div id="tab-1-content" class="tab-content-item show">
                <div class="tab-1-content-inner">
                    <div>
                        <p class="text-lg">
                            서버 점검 사항 알림 및 기타 여행 변수 알림<br>
                            <a href="announcement.html">바로가기</a>
                        </p>
                    </div>
                </div>
            </div>

            <div id="tab-2-content" class="tab-content-item">
                <div class="tab-2-content-top">
                    <div>
                        <p class="text-lg">
                            1:1 상담을 원하시면 언제라도 문의해주세요<br>
                            <a href="FAQ.html">바로가기</a>
                        </p>
                    </div>
                </div>
            </div>
    </section>


    <script src="js/main.js"></script>
    <footer class="footer"><jsp:include page="include/footer.jsp" /></footer>
</body>

</html>