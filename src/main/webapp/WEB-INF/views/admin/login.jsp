<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko-KR" class="app">
<head>
	<!-- head -->
    <jsp:include page="include/include-head.jsp" flush="false" />
    <script>
    /* addClass : .active */
    
    </script>
    <!-- //head -->
</head>

<body>
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xxl">
      <a class="navbar-brand block" href="">QueryOne</a>
      <section class="panel panel-default bg-white m-t-lg">
        <header class="panel-heading text-center">
          <strong>Admin Login</strong>
        </header>
        <form action="<c:url value='/admin/login' />" class="panel-body wrapper-lg" method="post">
          <div class="form-group">
            <label class="control-label">아이디</label>
            <input type="text" id="adminId"  class="form-control input-lg">
          </div>
          <div class="form-group">
            <label class="control-label">비밀번호</label>
            <input type="password" id="adminPwd" class="form-control input-lg">
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox"> ID 저장
            </label>
          </div>
          
          <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-user"></i> Login</button>
          
          <!-- 비밀번호 찾기 페이지 아직 없습니다 -->
          <!--
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>비밀번호를 잊어버리셨나요?</small></p>
          <a href="" class="btn btn-default btn-block"><i class="fa fa-lock"></i> 비밀번호 찾기</a>
          -->
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>copyright 2016. all rights reserved SOFTGARDEN Co. Ltd.</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->  
  
  <!-- bottom -->
	<jsp:include page="include/include-bottom.jsp" flush="false" />        
  <!-- //bottom -->
</body>
</html>