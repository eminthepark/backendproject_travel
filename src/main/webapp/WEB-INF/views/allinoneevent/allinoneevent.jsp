<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/EventStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>   
    <title>전국이내손안에 - 올인원이벤트</title>
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

    <!-- 본 내용 시작 -->
    <header class="title">
        <h2>올인원 가성비 이벤트</h2>
    </header>
    <aside class="aside">
			<jsp:include page="allinoneevent_sidebar.jsp"/>
		</aside>
    <section class="tabs">
        <div class="container">
            <div id="tab-1" class="tab-item tab-background">
                <p class="hide-sm">제주</p>
            </div>
            <div id="tab-2" class="tab-item">
                <p class="hide-sm">서귀포</p>
            </div>
            <div id="tab-3" class="tab-item">
                <p class="hide-sm">부산</p>
            </div>
        </div>
    </section>

    <section class="tab-content">
        <div class="container">
            <div id="tab-1-content" class="tab-content-item show">
                <div class="tab-1-content-inner">
                    <div id="airplane-jeju" class="airplane">
                        <h4>✈️ 비행기</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>출발지</th>
                                    <th>항공편</th>
                                    <th>날짜/시간</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>김포</td>
                                    <td>제주항공</td>
                                    <td>03.09 06:00</td>
                                    <td>66,850</td>
                                </tr>
                                <tr>
                                    <td>제주</td>
                                    <td>제주항공</td>
                                    <td>03.11 21:00</td>
                                    <td>32,300</td>
                                </tr>
                            </tbody>
                            
                        </table>
                    </div>
                    <div id="hotel-jeju" class="hotel">
                        <h4>🏠 숙소</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>숙소명</th>
                                    <th>날짜</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>더큐브 리조트 제주</td>
                                    <td>03.09 ~ 03.11</td>
                                    <td>123,550</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="car-jeju" class="car">
                        <h4>🚙 렌트카</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>차종 </th>
                                    <th>날짜</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>THE NEW 모닝</td>
                                    <td>03.09 ~ 03.11</td>
                                    <td>61,440</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <form action="Purchase.html">
                        <input type="checkbox" class="check" value="제주 올인원 패키지" name="패키지" required> 위와 같이 구매를 진행합니다.</input>
                        <br>
                    <input type="submit" class="btn-blue" id="btn-1" value="구매하기"></input>
                    </form>
                </div>
            </div>
            <div id="tab-2-content" class="tab-content-item">
                <div class="tab-2-content-inner">
                    <div id="airplane-seoguipo" class="airplane">
                        <h4>✈️ 비행기</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>출발지</th>
                                    <th>항공편</th>
                                    <th>날짜/시간</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>김해</td>
                                    <td>이스타항공</td>
                                    <td>03.26 06:00</td>
                                    <td>81,850</td>
                                </tr>
                                <tr>
                                    <td>서귀포</td>
                                    <td>이스타항공</td>
                                    <td>03.30 21:00</td>
                                    <td>21,300</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="hotel-seoguipo" class="hotel">
                        <h4>🏠 숙소</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>숙소명</th>
                                    <th>날짜</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>브라운 스위트 서귀포</td>
                                    <td>03.26 ~ 03.30</td>
                                    <td>193,700</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="car-seoguipo" class="car">
                        <h4>🚙 렌트카</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>차종 </th>
                                    <th>날짜</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>ALL NEW K5</td>
                                    <td>03.09 ~ 03.11</td>
                                    <td>81,280</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <form action="Purchase.html">
                        <input type="checkbox" class="check"value="서귀포 올인원 패키지" name="패키지" required> 위와 같이 구매를 진행합니다.</input>
                        <br>
                        <input type="submit" class="btn-blue" id="btn-2" value="구매하기"></input>
                    </form>
                </div>
            </div>
            <div id="tab-3-content" class="tab-content-item">
                <div class="tab-3-content-inner">
                    <div id="airplane-busan" class="airplane">
                        <h4>✈️ 비행기</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>출발지</th>
                                    <th>항공편</th>
                                    <th>날짜/시간</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>인천</td>
                                    <td>대한항공</td>
                                    <td>04.10 08:20</td>
                                    <td>56,320</td>
                                </tr>
                                <tr>
                                    <td>김해</td>
                                    <td>이스타항공</td>
                                    <td>04.15 17:00</td>
                                    <td>18,300</td>
                                </tr>
                            </tbody>
                            
                        </table>
                    </div>
                    <div id="hotel-busan" class="hotel">
                        <h4>🏠 숙소</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>숙소명</th>
                                    <th>날짜</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>서머셋 해운대</td>
                                    <td>04.10 ~ 04.15</td>
                                    <td>123,550</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="car-busan" class="car">
                        <h4>🚙 렌트카</h4>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>차종 </th>
                                    <th>날짜</th>
                                    <th>가격</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>레이</td>
                                    <td>04.10 ~ 04.15</td>
                                    <td>67,560</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <form action="Purchase.html">
                        <input type="checkbox" class="check"value="부산 올인원 패키지" name="패키지" required> 위와 같이 구매를 진행합니다.</input>
                        <br>
                        <input type="submit" class="btn-blue" id="btn-3" value="구매하기"></input>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <script src="js/mainEvent.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
	
    $('form').on('submit', function() {
        let purchaseItem = [
            { name: "제주 올인원 패키지", price: 284140 },
            { name: "서귀포 올인원 패키지", price: 378130 },
            { name: "부산 올인원 패키지", price: 620000 }
        ];
    
        let names = purchaseItem.map( (item) => item.name);
        let prices = purchaseItem.map( (item) => item.price);

        var name; 
        var price; 
        var checkVal = $('input[name="패키지"]:checked').val();
         
        for(i in names){
				if(checkVal == names[i]){
					name = names[i]; 
					price = prices[i];
				}				
			}

        confirm(
`고객님, 결제하실 정보를 확인해주세요.
상품명: ${name}
총 결제 금액: ${price}원`);
    }) // submit end
    
}) // ready end
    </script>
    <footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
</body>
</html>