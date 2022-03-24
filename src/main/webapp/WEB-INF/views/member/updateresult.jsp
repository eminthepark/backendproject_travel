<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<%=request.getContextPath() %>/resources/css/result.css" rel="stylesheet"/>
<title>Insert title here</title>
<script src="resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// jquery code
		
		
	}); 
</script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<jsp:include page="../include/nav.jsp" />
<div class="result-container">
<div class="result-text">
<c:if test="${result == 1 }">
	<p> 회원 정보가 정상적으로 수정되었습니다. </p>
</c:if>
</div>
</div>
<center>
	<footer class="footer"><jsp:include page="../include/footer.jsp" /></footer>
	</center>
</body>
</html>