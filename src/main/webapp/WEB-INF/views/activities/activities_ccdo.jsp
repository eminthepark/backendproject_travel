<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 충청도여행지티켓</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="../resources/css/aside.css">
<link href="<%=request.getContextPath() %>/resources/css/purchaseMenu.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/setMinDate.js"></script>
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<style>
input[type='radio'] { 
     transform: scale(2); 
 }
</style>
<script>
	$(document).ready(function() {
		
		$('form').on('submit', function() {
			let activities_ccdo = [
				{ name: "아산 퍼스트빌리지 공룡월드", price: 7000 },
				{ name: "예산 스플라스 리솜 워터파크", price: 16200 }
			];
		
			let names = activities_ccdo.map( (item) => item.name);
			let prices = activities_ccdo.map( (item) => item.price);

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
	        	<a class="nav-link" href="Event.html">올인원가성비이벤트</a>
	      	</li>
	      <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="mypage.html" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
		<input id="ccdo" class="tab-item tab-background" type="button" value="충청도">&nbsp;
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
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/dinoEx_ccdo.jpg"></td>
				<td id="dinoEx" class="explanation">
					<h4>퍼스트빌리지 공룡월드</h4>
					<hr>
					주소: 충청남도 아산시 둔포면 해위안길 127<br>
					운영 시간: 10:30~19:00(입장마감 18:00)<br>
					전화: 041-536-0635<br>
					가격: 7,000원 (기존가 15,000원)<br><br>
					<ul>
						<li>워킹 공룡쇼가 주중에 13시/ 15시/ 17시</li>
						<li>주말 및 공휴일에 12시/ 14시/ 16시/ 18시에 진행됩니다.</li>
						<li>공룡공룡과 함께 즐거운 시간 보내러 오세요~</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td>
					<!-- <td><h3><input type="radio" name="option" value="아산 퍼스트빌리지 공룡월드" required /> 공룡월드</h3></td> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ccdo1_date" type="date" min="{new Date().toISOString().split('T')[0]}" required><br><br><br>
					
					<input id="activities_ccdo1" class="btn-blue" type="button" name="option" value="예매하기" required />					
				</td>
			</tr>
			<tr>
				<td><img class="mainImg" src="<%=request.getContextPath() %>/resources/img/waterParkEx_ccdo.jpg"></td>
				<td id="waterParkEx" class="explanation">
					<h4>스플라스 리솜 워터파크</h4>
					<hr>
					주소: 충청남도 예산군 덕산면 온천단지 3로 45-7<br>
					운영 시간: 09:00~18:00 <br>
					전화: 041-330-8064<br>
					가격: 16,200원 (기존가 33,000원)<br><br>
					<ul>
						<li>600년의 역사를 지닌 덕산온천수를 마음껏 즐겨보세요!</li>
						<li>49도의 보양온천 덕산온천수가 공급되어<br> 
						사계절 내내 스파와 물놀이 즐기 수 있답니다!</li>
					</ul>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<!-- <td><input type="radio" name="option" value="예산 스플라스 리솜 워터파크" required/></td> -->
				<td>
					<!-- <input id="activities_ccdo2" type="button" name="reserve" value="예매하기" required /> -->
					<label>총 인원 수</label><br>
					<input id="count"  type="number" pattern="^[0-9]{1-1000}" title='Only Number' min="1" step="1"><br><br>
					<label>예약 날짜</label><br>
					<input class="date" id="activities_ccdo2_date" type="date" required><br><br><br>
					<input id="activities_ccdo2" class="btn-blue" type="button" name="option" value="예매하기" required />	
				</td>
				<!-- <td>	
					<div id="float-container">
						<div>
						   	<label for="textbox">총 인원 수</label><br>
						    <input type="number" id="count" placeholder="인원수를 입력하세요." pattern=[0-9]{1-1000} required/><br><br>
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