<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- 시작: .footer -->
<div class="footer">
  <div class="row">    
    <div class="col-3 prefix-2">
      <img src="<c:url value='/resources/images/footer/ico_call.svg'/>" width="32" alt="연락처">
      <p>TEL : 02)369-7190<br>FAX : 02)369-7192</p>
    </div>
    <div class="col-3">
      <img src="<c:url value='/resources/images/footer/ico_map.svg'/>" width="22" alt="주소">
      <p>서울특별시 영등포구 은행로 37 (여의도동, 한국기계산업진흥회 4층)</p>
    </div>
    <div class="col-3">
      <img src="<c:url value='/resources/images/footer/ico_mail.svg'/>" width="32" alt="메일주소">
      <p>sales@softgarden.co.kr<br>tech@softgarden.co.kr</p>
    </div>
    <div class="col-3">
      <img src="<c:url value='/resources/images/footer/ico_talk.svg'/>" width="32" alt="카카오톡 실시간 상담">
      <p>KakaoTalk Yellow ID : @softgarden<br>상담시간 : 24시간 (주말/공휴일 휴무)</p>
    </div>
  </div>
  <p class="copyright">copyright ⓒ 2014 ㈜소프트가든 ALL RIGHTS RESERVED</p>
</div>
<!-- 끝: .footer -->
  
<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<!-- Bootstrap -->
<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>
<script type="text/javascript">
  $(window).scroll(function(){
    if($(this).scrollTop()>=80){
      $('.page-header').addClass('nav-up');
    } else {
      $('.page-header').removeClass('nav-up');
    }
  });
</script>