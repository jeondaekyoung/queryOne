<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="page-header">
  <div class="col-12 prefix-2">
    <!-- 브랜드 영역 -->
    <h1 class="brand">
      <a href="<c:url value='/index.do' />">
        <img src="<c:url value='/resources/images/logo.png'/>" height="39" alt="Query one">
      </a>
    </h1>
    <!-- 끝: 브랜드 영역 -->
    <!-- 내비게이션 영역 -->
    <nav class="page-gnb">
      <ul class="clearfix">
        <li class=""><a href="<c:url value='/user/queryOne.do' />">QueryOne</a></li>
        
        <li><a href="<c:url value='/user/queryone-s.do'/>">QueryOne S</a></li>
        <li><a href="<c:url value='/user/video.do'/>">Video</a></li>
        <li><a href="<c:url value='/user/download.do'/>">Download</a></li>
        <li><a href="  <c:url value='/user/news.do'/>">News</a></li>
        <li><a href="<c:url value='/user/qna.do'/>">QnA</a></li>
        
      </ul>
    </nav>
    <!-- 끝: 내비게이션 영역 -->
  </div>
</header>