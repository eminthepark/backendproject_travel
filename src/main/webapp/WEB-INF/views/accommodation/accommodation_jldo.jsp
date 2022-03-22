<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전국이내손안에 - 전라도숙박</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link href="<%=request.getContextPath() %>/resources/css/layout.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<script>
$(document).ready(function() {

			$('form').on('submit', function() {
	
				let activities_ggdo = [ 
					{ name: "전라 선샤인 글램핑", price: 100000 }, 
					{ name: "전라 해피데이 펜션", price: 230000 },
					{ name: "전라 더갤러리 호텔", price: 140000 }
				];
				
				let names = activities_ggdo.map( (item) => item.name);
				let prices = activities_ggdo.map( (item) => item.price);
	
				var radioVal = $('input[name="select"]:checked').val();
				var personNum = $('input[id="textbox"]').val();
				var startDate = $('#startDate').val();
				var endDate = $('#endDate').val();
				var name; 
			 	var price; 
			 	var totalPrice;
			 	
				for(i in names){
					if(radioVal == names[i]){
						name = names[i]; 
						price = prices[i];
					}				
				}
				confirm(
`고객님, 예약하실 정보를 확인해주세요.
숙소명: ${name}
선택하신 날짜: ${startDate} ~ ${endDate} 
총 인원 수: ${personNum}명 
총 결제 금액: ${price}원`);
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
		<h1>숙박 예약</h1>
		<br>
	</header>
	<hr>
	<br>
	<!-- <div id="selectParent">&nbsp; 
		<input id="ggdo" class="tab-item" type="button" value="경기도" onCLick="location.href='gyeonggido.html'" >&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도" onCLick="location.href='gangwondo.html'">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도" onCLick="location.href='chungcheongdo.html'">&nbsp;
		<input id="jldo" class="tab-item tab-background" type="button" value="전라도" onCLick="location.href='jeollado.html'">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도" onCLick="location.href='gyeongsangdo.html'">&nbsp;
		<input id="jjdo" class="tab-item" type="button" value="제주도" onCLick="location.href='jejudo.html'">&nbsp;
	</div> -->
	<aside class="aside">
			<jsp:include page="accomodation_sidebar.jsp"/>
		</aside>
		<section>
	<form class="reserveInput" action="Purchase.html">
     <table class="tbl">
        <tr>
            <td><img class="mainImg" src="./img/jeol1.jpg"></td>
            <td id="gg" class="explanation">
        <b>선샤인 글램핑</b><br><br>
                주소: 전북 부안군 변산면 변산해변로 79 <br><br>
                가격: 100,000원/박 <br><br>
                편의시설: 주차장, 수영장, 편의점<br><br>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td><input type="radio" name="select" value="전라 선샤인 글램핑"/></td>
        </tr>
        <tr>
            <td><img class="mainImg" src="./img/jeol2.jpg"></td>
            <td id="gg" class="explanation">
        <b>해피데이 펜션</b><br><br>
                주소: 전북 무주군 설천면 외배방길 1 <br><br>
                가격: 230,000원/박 <br><br>
                편의시설: 주차장, 수영장, 바비큐장<br><br>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td><input type="radio" name="select" value="전라 해피데이 펜션"/></td>
        </tr>
        <tr>
            <td><img class="mainImg" src="./img/jeol3.jpg"></td>
            <td id="gg" class="explanation">
        <b>더갤러리 호텔</b><br><br>
                주소: 전북 무주군 설천면 외배방길 1<br><br>
                가격: 140,000원/박 <br><br>
                편의시설: 주차장, 편의점, 실내 수영장<br><br>
                </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td><input type="radio" name="select" value="전라 더갤러리 호텔"/></td>
            
				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>	
					<div id="float-container">
						<div>
						   	<label for="textbox">총 인원 수</label><br>
						   	<input type="text" id="textbox" placeholder="인원수를 입력하세요." pattern="[0-9]{1-1000}" required/><br><br>
						</div>
						<div>
							<label for="startDate">체크인</label><br>
						    <input id="startDate" type="date" required><br>
						    <label for="endDate">체크아웃</label><br>
						    <input id="endDate" type="date" required>
						</div><br>
						<div>
						    <input type="submit" id="btn_reservation" class="select selected" value="예매하기"/>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</form>
	</section>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
</body>
</html>