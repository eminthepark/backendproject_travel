<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/btnFunction.js"></script>
<link href = "<%=request.getContextPath() %>/resources/css/layout.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>전국이내손안에 - 숙박</title>
<style>
.photo{
display: none;
width: 800px;
height: 600px;
}
.photo:first-child {
	display: block;
}
#photoParent{
width: 850px;
margin: auto;
/* text-align: center; */
} 
</style>
<script>
	var index = 0; 
	$(document).ready(function(){
		
		setInterval(() => {
			slideShow();
		}, 1000);
		
		function slideShow(){
			const photo = document.getElementsByClassName("photo");
			for (let i = 0; i < photo.length; i++){
				photo[i].style.display = "none";
			}
			index++; 
			if(index > photo.length){
				index = 1; 
			}
			photo[index-1].style.display = "block";
		}

	}); // ready end
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
		<h1>숙박예약</h1>
	</header>
	<hr>
	<br>
	<!-- <div id="selectParent">
		&nbsp; <input id="ggdo" class="tab-item" type="button" value="경기도" onCLick="location.href='gyeonggido.html'">&nbsp;
		<input id="gwdo" class="tab-item" type="button" value="강원도" onCLick="location.href='gangwondo.html'">&nbsp;
		<input id="ccdo" class="tab-item" type="button" value="충청도" onCLick="location.href='chungcheongdo.html'">&nbsp;
		<input id="jldo" class="tab-item" type="button" value="전라도" onCLick="location.href='jeollado.html'">&nbsp;
		<input id="gsdo" class="tab-item" type="button" value="경상도" onCLick="location.href='gyeongsangdo.html'">&nbsp;
		<input id="jjdo" class="tab-item" type="button" value="제주도" onCLick="location.href='jejudo.html'">&nbsp;
	</div> -->
	<aside class="aside">
			<jsp:include page="accomodation_sidebar.jsp"/>
		</aside>
		<section>
	<br>
	<br>
	<div id="photoParent">
		<img class="photo" alt="경기도" src="./img/gyeong1.jpg">
		<img class="photo" alt="강원도" src="./img/gang3.jpg">
		<img class="photo" alt="충청도" src="./img/chung1.jpg">
		<img class="photo" alt="전라도" src="./img/jeol2.jpg">
		<img class="photo" alt="경상도" src="./img/gyeongs1.jpg">
		<img class="photo" alt="제주도" src="./img/jeju2.jpg">
	</div>
	</section>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
</body>
</html>