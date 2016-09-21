<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  	<jsp:include page="include-head.jsp" flush="false" />
</head>
<body class="container show-grid">

  <!-- 시작: .page-header -->
  <jsp:include page="include-top.jsp" flush="false" />
  <!-- 끝: .page-header -->

  <!-- 시작: .page-container -->
  <div class="page-container">
    <!-- 시작: .content-01 -->
    <div class="detail-01">
      <div class="top">
      	<div class="row">
	      	<div class="col-12 prefix-2">
	      		<h3>QnA</h3>
	      		<h4>문의 하기</h4>
	      	</div>
      	</div>
      </div>
      <form action="<c:url value="/qna/write.do"/>" name="adForm">
      <div class="row">
      	<div class="col-8 prefix-4 suffix-4 qna">
          <p>궁금한 사항이 있으시면 언제든 문의해주세요.</p>
          <input type="text" name="title" placeholder="제목">
          <textarea placeholder="내용" name="content"></textarea>
          <span>입력하신 정보로 답변을 보내드립니다.</span>
          <input type="text" name="name" placeholder="이름">
          <input type="text" name="email" placeholder="이메일">
          <input type="text" name="tel" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode:disabled;' placeholder="전화번호">
          <div class="col-16">
            <button name="reset" type="reset" onclick="ecilck('reset')" class="col-8">내용지우기</button>
            <button name="submit" type="submit" onclick="ecilck('submit')"  class="col-8">전송하기</button>
          </div>
        </div>
      </div>
      	</form>
    </div>
    <!-- 끝: .content-01 -->
	<script type="text/javascript">
	function ecilck(mod) {
		var f=document.adForm;
			switch (mod) {
			case "reset":
				
				if (confirm("작성하신 내용을 취소 하시겠습니까?")!=1) {
					event.preventDefault();
					return false;}
				
				break;
				
			case "submit":
				if (confirm("작성하신 내용은 수정 하실수 없습니다.  \n 이대로 관리자에게 전송하시겠습니까? ")!=1) {
					event.preventDefault();
					return false;
					}
				if(!f.title.value){
					alert("제목을 입력하세요.");
					event.preventDefault();
					f.title.focus();
					return false;
				}
				if(!f.content.value){
					alert("내용을 입력하세요.");
					event.preventDefault();
					f.content.focus();
					return false;
				}
				if(!f.name.value){
					alert("이름을 입력하세요.");
					event.preventDefault();
					f.name.focus();
					return false;
				}
				if(!f.email.value){
					alert("이메일을 입력하세요.");
					event.preventDefault();
					f.email.focus();
					return false;
				}
				if(f.email.value.indexOf("@")==-1){
					alert("이메일 형식이 아닙니다. 다시 입력해주세요.");
					event.preventDefault();
					f.email.value="";
					f.email.focus();
					return false;
				}
				if(!f.tel.value){
					alert("전화번호를 입력하세요.");
					event.preventDefault();
					f.tel.focus();
					return false;
				}
				alert("문의 하신 내용은 2~3일 안에 입력하신 정보로 \n 이메일이나 전화를 통해 답변이 갈 예정 입니다.감사합니다.");
				
				break;
			}
			
	} 
	function onlyNumber(event){
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
			return;
		else
			return false;
	}
	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
			return;
		else
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
	</script>
  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>