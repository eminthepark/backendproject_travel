<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<title>전국이내손안에 - 회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<%=request.getContextPath() %>/resources/css/login.css" rel="stylesheet"/>
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
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

  <div class="main-container">
    <header class="logo">
      <div>
        <br><br>환영합니다!
      </div>
      <br><br>
    </header>
    <contant class="login-container">
      <input type="id" class="id" placeholder="아이디"/>
      <input type="password" class="password" placeholder="비밀번호"/>
      <input type="password" class="confirmpwd" placeholder="비밀번호 확인"/>
      <input type="email" class="emial" placeholder="이메일"/>
      <input type="month" class="month"/>
      <button class="loginBtn" onclick="location.href='login.html'">회원가입</button>
    </contant>
  </div>
  <script src="js/login.js"></script>
<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
</body>

</html>