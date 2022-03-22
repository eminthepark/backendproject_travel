<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/FAQStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
    <title>전국이내손안에 - 자주묻는질문</title>
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
        <h2>자주 묻는 질문</h2>
    </section>

    <section class="tabs">
        <div class="container">
            <div id="tab-1" class="tab-item tab-background">
                <p class="hide-sm">회원가입/탈퇴</p>
            </div>
            <div id="tab-2" class="tab-item">
                <p class="hide-sm">예약/환불</p>
            </div>
            <div id="tab-3" class="tab-item">
                <p class="hide-sm">가격 정책</p>
            </div>
            <div id="tab-4" class="tab-item">
                <p class="hide-sm">숙박</p>
            </div>
            <div id="tab-5" class="tab-item">
                <p class="hide-sm">렌트카</p>
            </div>
            <div id="tab-6" class="tab-item">
                <p class="hide-sm">여행지</p>
            </div>
            <div id="tab-7" class="tab-item">
                <p class="hide-sm">올인원 이벤트</p>
            </div>
            <div id="tab-8" class="tab-item">
                <p class="hide-sm">1:1 문의하기</p>
            </div>
        </div>
    </section>

    <section class="tab-content">
        <div class="container">
            <div id="tab-1-content" class="tab-content-item show">
                <div class="tab-1-content-inner">
                    <div class="tab-inner-title">
                        <h3>회원가입/탈퇴</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>회원 가입이 안돼요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>회원 정보를 변경하고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>회원을 탈퇴하고 싶어요.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-2-content" class="tab-content-item">
                <div class="tab-2-content-inner">
                    <div class="tab-inner-title">
                        <h3>예약/환불</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>예약을 변경하고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>예약을 취소하고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>예약을 다른 사람에게 양도하고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>이용 후 문제가 있었어요. 환불받고 싶어요.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-3-content" class="tab-content-item">
                <div class="tab-3-content-inner">
                    <div class="tab-inner-title">
                        <h3>가격 정책</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>성수기, 비성수기 가격이 얼마나 다른가요?</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>지난 번에 확인했던 가격과 달라요.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-4-content" class="tab-content-item">
                <div class="tab-4-content-inner">
                    <div class="tab-inner-title">
                        <h3>숙박</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>숙박 시설 연락처가 필요해요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>방을 바꾸고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>숙박 부대시설이 궁금해요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>숙박시설에 물건을 두고 왔어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>숙박 시설물 이용 중 문제가 생겼어요.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-5-content" class="tab-content-item">
                <div class="tab-5-content-inner">
                    <div class="tab-inner-title">
                        <h3>렌트카</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>렌트카 이용 중 문제가 생겼어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>렌트카 차량을 인도받았는데, 문제가 있어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>렌트카 이용 정책이 궁금해요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>렌트카를 다른 곳에 반납하고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>렌트카 열쇠를 잃어버렸어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>렌트카 반납이 늦어졌어요.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-6-content" class="tab-content-item">
                <div class="tab-6-content-inner">
                    <div class="tab-inner-title">
                        <h3>여행지 티켓</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>액티비티 안전 규정이 궁금해요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>우천시 대체 일정이 있나요?</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-7-content" class="tab-content-item">
                <div class="tab-7-content-inner">
                    <div class="tab-inner-title">
                        <h3>올인원 이벤트</h3>
                    </div>
                    <div class="tab-inner-list">
                        <div class="tab-inner-questions">
                            <p>패키지 하나를 바꾸고 싶어요.</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>정해진 비행기에 늦으면 어떻게 되나요?</p>
                        </div>
                        <div class="tab-inner-questions">
                            <p>옵션 하나만 업그레이드 하고 싶어요.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="tab-8-content" class="tab-content-item">
                <div class="tab-8-content-inner">
                    <div class="service-center-container">
                        <div class="service-center-text">
                            <div class="service-center-title">
                                <h4 class="h4">더 자세한 안내가 필요하시다면</h4>
                                <h4>언제든 연락해 주세요.</h4>
                            </div>
                            <div class="text-guide">
                                <h4>24시간 고객센터</h4>
                            </div>
                            <div class="text-phone">
                                <p>0000-0000</p>
                            </div>
                        </div>
                        <div class="img-container">
                            <img class="img" src="img/customer-service.png" alt="">
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <script src="js/mainFAQ.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>