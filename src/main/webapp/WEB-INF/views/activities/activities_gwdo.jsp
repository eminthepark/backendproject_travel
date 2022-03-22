<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 강원도여행지티켓</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link href="<%=request.getContextPath() %>/resources/css/purchaseMenu.css" rel="stylesheet"0
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/setMinDate.js"></script>>
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<script>
$(document).ready(function() {

		$('form').on('submit', function() {
			let activities_gwdo = [
				{ name: "춘천 강촌 ATV 카트", price: 15000 },
				{ name: "평창 대관령 아기동물 체험장", price: 7000}
			];
		
			let names = activities_gwdo.map( (item) => item.name);
			let prices = activities_gwdo.map( (item) => item.price);

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
		<input id="gwdo" class="tab-item tab-background" type="button" value="강원도">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도">&nbsp;
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
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/kartEx_gwdo.jpg"></td>
				<td id="kartEx" class="explanation">
					<h4>강촌 ATV 카트</h4>
					<hr>
					주소: 강원도 춘천시 남산면 강촌로 149<br>
					운영 시간: 09:00~20:00 (주중/주말 동일) <br>
					이용 안내: 키 150cm 이상 어른 아이 모두 <br>
					전화: 010-5683-3731 <br>
					가격: 15,000원 (기존가 100,000원) <br><br>
					<ul>
						<li>초등학생부터 어른까지 부담없이 즐길 수 있는 카트라이딩!</li>
						<li>친구와, 가족과, 연인과 신나고 아찔한 시간 보내러 오세요~</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="춘천 강촌 ATV 카트" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_gwdo1_date" type="date" required><br><br><br>
					<input id="activities_gwdo1" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/animalEx_gwdo.jpg"></td>
				<td id="animalEx" class="explanation">
				<h4>대관령 아기동물 체험장</h4>
				<hr>
				주소: 강원도 평창군 대관령면 대관령마루길 106<br>
				운영 시간: 09:00~17:30(하절기), 09:00~16:30(동절기)<br>
				전화: 010-3290-2989<br>
				가격: 7,000원 (기존가 8,000원)<br><br>
				<ul>
					<li>어린 아기 동물로 구성된 동물 체험 놀이터입니다.</li>
					<li>만져보고, 안아보고 접촉을 통해 생생한 경험을 우리 아이에게 선사해 주세요~</li>
					<li>자연속에서 먹이도 주고 사랑과 호기심을 마음껏 펼쳐보세요!</li>
				</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <input type="radio" name="option" value="평창 대관령 아기동물 체험장" required/> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_gwdo1_date" type="date" required><br><br><br>
					<input id="activities_gwdo2" class="btn-blue" type="button" name="option" value="예매하기" required />	
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