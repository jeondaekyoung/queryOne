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
    <div class="detail-01 video">
      <div class="top">
      	<div class="row">
	      	<div class="col-12 prefix-2">
	      		<h3>Video</h3>
	      		<h4>쿼리원 영상</h4>
	      	</div>
      	</div>
      </div>

	    <div class="row">
	      <div class="col-14 prefix-1">
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div>
          <div class="col-4">
            <iframe width="100%" height="264" src="https://www.youtube.com/embed/8pMhvaJZRi4" frameborder="0" allowfullscreen></iframe>
          </div> 
        </div>
	    </div>

      <!-- 페이징 -->
      <div class="text-center">
        <ul class="pagination pagination-sm">
          <li><a href="#"><i class="chevron-left"></i></a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#"><i class="chevron-right"></i></a></li>
        </ul>
      </div>
      <!-- 페이징 끝 -->
    </div>
    <!-- 끝: .content-01 -->
  </div>
  <!-- 끝: .page-container -->


  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>