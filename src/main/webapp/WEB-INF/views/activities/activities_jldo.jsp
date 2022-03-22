<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 전라도여행지티켓</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link href="<%=request.getContextPath() %>/resources/css/purchaseMenu.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/setMinDate.js"></script>
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<script>
	$(document).ready(function() {
		
		$('form').on('submit', function() {
			let activities_jldo = [
				{ name: "해남 명량 케이블카 & 땅끝 해양 자연사 박물관", price: 12000 },
				{ name: "광주 쥬키아이스파크", price: 8100 }
			];
		
			let names = activities_jldo.map( (item) => item.name);
			let prices = activities_jldo.map( (item) => item.price);

			var radioVal = $('input[name="option"]:checked').val();
			var personNum = $('input[id="textbox"]').val();
			var date = $('input[type="date"]').val();
			var name; 
		 	var price; 
		 	var totalPrice;
		 	
			for(i in names){
				if(radioVal == names[i]){
					name = names[i]; 
					price = prices[i];
				}				
			}
			totalPrice = personNum * price; 
			confirm(
`고객님, 예매하실 정보를 확인해주세요.
여행지 티켓: ${name}
선택하신 날짜: ${date} 
총 인원 수: ${personNum}명 
총 결제 금액: ${totalPrice}원`);
		}) // submit end
		
}) // ready end
</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">&nbsp;&nbsp;<img src="./img/logo.png" width="50px" height="50px">&nbsp;&nbsp;전국이내손안에</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
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
					<a class="nav-link" href="Event.html">올인원가성비이벤트</a>
				  </li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="mypage.html" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						마이페이지 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">예약내역 확인</a></li>
						<li><a class="dropdown-item" href="#">문의사항 확인</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">회원 정보 수정</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">이벤트
						준비 중</a></li>
			</ul>
		</div>
	</nav>
	<header class="title">
		<br>
		<br>
		<h1>여행지 티켓 예매</h1>
		<br>
		<hr>
	</header>
	<br>
<!-- 	<div id="selectParent">&nbsp; 
		<input id="ggdo" class="tab-item" type="button" value="경기도">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item tab-background" type="button" value="전라도">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도">&nbsp;
		<input id="jjdo" class="tab-item" type="button" value="제주도">&nbsp;
	</div> -->
	<aside class="aside">
			<jsp:include page="activities_sidebar.jsp"/>
		</aside>
		<section>
	<form action="Purchase.html" class="reserveInput">
		<table class="tbl">
			<tr><td><h4>원하시는 <strong>여행지 티켓</strong>을 선택하여 주세요.</h4></td></tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/cableOceanEx_jldo.jpg"></td>
				<td id="cableOceanEx" class="explanation">
					<h5>명량 케이블카 & 땅끝 해양 자연사 박물관</h5>
					<hr>
					주소(케이블카): 전라남도 해남군 문내면 관광레저로 12-20<br>
					주소(박물관): 전라남도 해남군 송지면 땅끝마을길 89<br>
					운영 시간: 09:30 ~ 18:00<br>
					전화: 061-535-9900(케이블카), 061-535-2110(박물관)<br>
					가격: 12,000원 (기존가 14,000원)<br><br>
					<ul>
						<li>국내 최초 해상 케이블카! 진도대교와 함께 해남과 진도를 오가는 또 하나의 환상적인 길</li>
						<li>국내 유일 최대 규모의 해양 자연사 박물관으로 여러분을 초대합니다!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="해남 명량 케이블카 & 땅끝 해양 자연사 박물관" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_jldo1_date" type="date" required><br><br><br>
					<input id="activities_jldo1" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/iceDinoEx_jldo.jpg"></td>
				<td id="iceDinoEx" class="explanation">
				<h4>쥬키아이스파크 입장권</h4>
				<hr>
				주소: 전라남도 광주시 남구 봉선중앙로 131번길 11<br>
				운영 시간: 10:30~18:00 (주중), 10:30~20:00 (주말), 매주 화요일 휴무 <br>
				전화: 062-674-8617~9<br>
				가격: 8,100원 (기존가 18,000원)<br>
				마술쇼 공연 안내: 매주 주말, 공휴일 <br><br>
				<ul>
					<li>생생한 공룡 전시로 아이들에게 공룡에 대한 환상과 상상을 심어주세요~</li>
					<li>전시 관람 후 대형 아이스링크장과 부대 시설 완비</li>
				</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="광주 쥬키아이스파크" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_jldo2_date" type="date" required><br><br><br>
					<input id="activities_jldo2" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
				<!-- <td>	
					<div id="float-container">
						<div>
						   	<label for="textbox">총 인원 수</label><br>
						    <input type="text" id="textbox" placeholder="인원수를 입력하세요." pattern=[0-9]{1-1000} required/><br><br>
						</div>
						<div>
							<label for="textbox">예약 날짜</label><br>
						    <input id="date" type="date" required>
						</div><br><br>
						<div>
						    <input type="submit" id="btn_reservation" class="btn-blue" value="예매하기"/>
						</div>
					</div>
				</td> -->
			</tr>
		</table>
	</form>
	<br>
	<br>
	<br>
	</section>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
	
</body>
</html>