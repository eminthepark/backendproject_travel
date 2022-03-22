<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 경상도여행지티켓</title>
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
			
			let activities_gsdo = [
				{ name: "양산 에덴 밸리 눈썰매 & 빙어 체험장", price: 17000 },
				{ name: "경주월드 자유이용권", price: 19900 },
				{ name: "대구 아쿠아리움", price: 23000 },
			];
		
			let names = activities_gsdo.map( (item) => item.name);
			let prices = activities_gsdo.map( (item) => item.price);

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
		<input id="ggdo" class="tab-item" type="button" value="경기도">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도">&nbsp;
		<input id="gsdo" class="tab-item tab-background" type="button" value="경상도">&nbsp;
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
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/sledEx_gsdo.jfif"></td>
				<td id="sledEx" class="explanation">
					<h4>에덴 밸리 눈썰매 & 빙어 체험장</h4>
					<hr>
					주소: 경산남도 양산시 어실로 1206<br>
					운영 시간: 10:00~17:00<br>
					전화:055-379-8047<br>
					가격: 17,000원 (기존가 25,000원)<br><br>
					<ul>
						<li>썰매와 함께 빙어잡이, 범퍼카 등 다양한 시설</li>
						<li>썰매를 더 편하게! 무빙워크 & 무료 주차장</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="radio" name="option" value="양산 에덴 밸리 눈썰매 & 빙어 체험장" required/></td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/amuseParkEx_gsdo.jfif"></td>
				<td id="amuseParkEx" class="explanation">
					<h4>경주월드 자유이용권</h4>
					<hr>
					주소: 경상북도 경주시 보덕동 보문로 544<br>
					운영 시간: 09:50~18:00<br>
					전화: 054-745-7711<br>
					가격: 19,900원 (기존가 26,000원)<br><br>
					<ul>
						<li>360도로 회전하며 메가톤급 스릴을 선사하는 크라크</li>
						<li>대한민국 최초! 90도로 수직 하강하는 다이브 코스터! 드라켄</li>
						<li>밤낮으로 붐비는 인싸들의 성지!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="경주월드 자유이용권" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_gsdo1_date" type="date" required><br><br><br>
					<input id="activities_gsdo1" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/aquaEx_gsdo.jfif"></td>
				<td id="aquaEx" class="explanation">
					<h4>대구 아쿠아리움</h4>
					<hr>
					주소: 대구 동구 동부로 149 9층 (신천동, 신세계백화점)<br>
					운영 시간: 10:30~20:00(주중), 10:30~20:30(금요일, 주말)<br>
					전화: 053-247-8899<br>
					가격: 23,000원 (기존가 29,000원)<br><br>
					<ul>
						<li>신나는 바닷속 세계에 놀러오세요~</li>
						<li>대구 바다 구름 다리 체험 + 인어쇼 공연 관람, 놓치지 마세요!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="대구 아쿠아리움" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_gsdo2_date" type="date" required><br><br><br>
					<input id="activities_gsdo2" class="btn-blue" type="button" name="option" value="예매하기" required />	
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
						    <input type="submit" id="btn_reservation" class="btn-blue" value="예매하기" required/>
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