<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 제주도여행지티켓</title>
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
			
			let activities_jjdo = [
				{ name: "제주 바다 체험장", price: 8900 },
				{ name: "제주 감귤 박물관", price: 5000 },
				{ name: "제주 허브 동산", price: 7300 },
			];
		
			let names = activities_jjdo.map( (item) => item.name);
			let prices = activities_jjdo.map( (item) => item.price);

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
		<a class="navbar-brand" href="#">&nbsp;&nbsp;<img src="img/logo.png" width="50px" height="50px">&nbsp;&nbsp;전국이내손안에</a>
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
		<input id="ggdo" class="tab-item" type="button" value="경기도">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도">&nbsp;
		<input id="jjdo" class="tab-item tab-background" type="button" value="제주도">&nbsp;
	</div> -->
	<aside class="aside">
			<jsp:include page="activities_sidebar.jsp"/>
		</aside>
		<section>
	<form action="Purchase.html" class="reserveInput">
		<table class="tbl">
			<tr><td><h4>원하시는 <strong>여행지 티켓</strong>을 선택하여 주세요.</h4></td></tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/seaEx_jjdo.jpg"></td>
				<td id="seaEx" class="explanation">
					<h4>제주 바다 체험장</h4>
					<hr>
					주소: 제주특별자치도 제주시 구좌읍 동복리 608-3<br>
					운영 시간: 10:00~17:00 (동절기), 10:00~17:30 (하절기)<br>
					소요 시간: 1~2시간<br>
					전화: 064-784-5757<br>
					가격: 8,900원 (기존가 10,000원)<br><br>
					<ul>
						<li>실내학습 체험장으로 계절에 따라 다양한 체험이 가능</li>
						<li>직접 잡은 싱싱한 해산물을 즉석에서 섭취 가능</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="제주 바다 체험장" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_jjdo1_date" type="date" required><br><br><br>
					<input id="activities_jjdo1" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/tangerineEx_jjdo.jpg"></td>
				<td id="tangerineEx" class="explanation">
					<h4>감귤 박물관</h4>
					<hr>
					주소: 제주특별자치도 서귀포시 효돈순환로 441-2<br>
					운영 시간: 10:00~18:00<br>
					전화: 010-7534-3112<br>
					가격: 5,000원 (기존가 8,000원)<br>
					요금 안내: 감귤요리 체험 신청시 추가 요금 있음<br><br>
					<ul>
						<li>감귤에 대해 배우고 감귤로 직접 만들어 먹는 맛있는 음식까지!</li>
						<li>감귤 피자 만들기 (1인 이상부터)
						<br>감귤 찹쌀떡/ 쿠키/ 머핀 만들기 (2인 이상부터)</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="제주 감귤 박물관" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_jjdo2_date" type="date" required><br><br><br>
					<input id="activities_jjdo2" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/herbEx_jjdo.jpg"></td>
				<td id="herbEx" class="explanation">
					<h4>허브 동산</h4>
					<hr>
					주소: 제주특별자치도 서귀포시 표선면 돈오름로 170<br>
					운영 시간: 09:00~21:00<br>
					전화: 064-787-7362<br>
					가격: 7,300원 (기존가 12,000원)<br><br>
					<ul>
						<li>계절마다 진한 향기로 가득한 허브로 이루어진 허브 체험 정원~</li>
						<li>150여 종의 허브와 우리의 야생화로 채워진 정원과 동산들로 나들이 오세요!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="제주 허브 동산" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_jjdo3_date" type="date" required><br><br><br>
					<input id="activities_jjdo3" class="btn-blue" type="button" name="option" value="예매하기" required />	
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