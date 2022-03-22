<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 경기도여행지티켓</title>
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
	
				let activities_ggdo = [ 
					{ name: "평택 캐니언파크 실내 동물원 테마파크", price: 11900 }, 
					{ name: "오산 버드파크", price: 18500 },
					{ name: "가평 아침 고요 수목원", price: 9500 }
				];
				
				let names = activities_ggdo.map( (item) => item.name);
				let prices = activities_ggdo.map( (item) => item.price);
	
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
	<!-- <div id="selectParent">&nbsp; 
		<input id="ggdo" class="tab-item tab-background" type="button" value="경기도">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도">&nbsp;
		<input id="jjdo" class="tab-item" type="button" value="제주도">&nbsp;
	</div> -->
	<aside class="aside">
			<jsp:include page="activities_sidebar.jsp"/>
		</aside>
		<section>
		<table class="tbl">
			<tr><td><h4>원하시는 <strong>여행지 티켓</strong>을 선택하여 주세요.</h4></td></tr>		
			<tr>
				<td><img class="mainImg firstImg" src="<%=request.getContextPath() %>/resources/img/canyonParkEx_ggdo.jpg"></td>
				<td id="canyonParkEx" class="explanation">
					<h4>캐니언파크 실내 동물원 테마파크</h4>
					<hr>
					주소: 경기도 평택시 비전 5로 10, 3층<br> 
					운영 시간: 12:30~20:20(주중), 11:30~20:00(주말, 공휴일)<br> 
					전화: 031-630-2612 <br> 
					가격: 11,900원 (기존가 17,000원)<br><br>
					<ul>
						<li>국내 최초, 실내 카약을 타고 동물들에게 먹이주기 체험</li>
						<li>1,800평 규모의 실내 테마파크가 있다고?</li>
						<li>국내 다양한 희귀 동물들이 여러분들을 기다립니다.</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="평택 캐니언파크 실내 동물원 테마파크" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ggdo1_date" type="date" required><br><br><br>
					<input id="activities_ggdo1" class="btn-blue" type="button" name="option" value="예매하기" required />				
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/birdParkEx_ggdo.jfif"></td>
				<td id="birdParkEx" class="explanation">
					<h4>버드파크</h4>
					<hr>
					주소: 경기도 오산시 성호대로 141<br> 
					운영 시간: 10:00~19:00<br>
					전화: 031-935-5757<br> 
					가격: 18,500원 (기존가 23,000원)<br><br>
					<ul>
						<li>자연과 공존을 위한 환경 보호의 실천 테마관</li>
						<li>자연과 놀면서 배우는 과학 원리 테마관</li>
						<li>생명의 탄생과 진화의 비밀 테마관</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="오산 버드파크" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ggdo2_date" type="date" required><br><br><br>
					<input id="activities_ggdo2" class="btn-blue" type="button" name="option" value="예매하기" required />				
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/arboretumEx_ggdo.jfif"></td>
				<td id="arboretumEx" class="explanation">
					<h4>아침 고요 수목원</h4>
					<hr>
					주소: 경기도 가평군 상면 수목원로 432<br> 
					운영 시간:
					11:00~21:00<br> 
					전화: 1544-6703<br> 
					가격: 9,500원 (기존가 10,000원)<br><br>
					<ul>
						<li>오색 별빛 정원 점등 시간은 오후 5시입니다</li>
						<li>고요하고 아름다운 수목원의 정취!</li>
						<li>저녁에는 수목원의 오색찬란함을!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="가평 아침 고요 수목원" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ggdo3_date" type="date" required><br><br><br>
					<input id="activities_ggdo3" class="btn-blue" type="button" name="option" value="예매하기" required />				
				</td>
				<!-- <td>	
					<div id="float-container">
						<div>
						   	<label for="textbox">총 인원 수</label><br>
						   	<input type="text" id="textbox" placeholder="인원수를 입력하세요." pattern="[0-9]{1-1000}" required/><br><br>
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