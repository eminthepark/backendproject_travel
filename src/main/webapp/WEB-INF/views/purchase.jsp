<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/PurchaseStyleCommon.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
    <title>전국이내손안에 - 구매하기</title>
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
                <a class="nav-link" href="small.html">렌트카</a>
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
        <h2>구매하기</h2>
    </section>

    <section class="title-item">
        <h2 id="item-name">제주 올인원 패키지</h2>
        <h2 id="item-price">결제 금액: 284,140원</h2>
    </section>

    <section class="select">
        <h3>결제 방식 선택</h3>
        <div class="select-option">
            <div class="div-option">신용/체크카드</div>
            <div class="div-option">실시간 계좌 이체</div>
            <div class="div-option">무통장 입금</div>
            <div class="div-option">휴대폰</div>
        </div>
        <button class="btn-final">결제하기</button>
    </section>


    <script src="js/mainPurchase.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <footer class="footer"><jsp:include page="include/footer.jsp" /></footer>
</body>
</html>