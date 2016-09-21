<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <div class="row">
      	<div class="col-8 prefix-4 suffix-4 qna">
          <p>궁금한 사항이 있으시면 언제든 문의해주세요.</p>
          <input type="text" placeholder="제목">
          <textarea placeholder="내용"></textarea>
          <span>입력하신 정보로 답변을 보내드립니다.</span>
          <input type="text" placeholder="이름">
          <input type="text" placeholder="이메일">
          <div class="col-16">
            <button type="reset" class="col-8">취소</button>
            <button type="submit" class="col-8">확인</button>
          </div>
        </div>
      </div>
    </div>
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>