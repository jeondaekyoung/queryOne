<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="page-header">
  <div class="col-12 prefix-2">
    <!-- 브랜드 영역 -->
    <h1 class="brand">
      <a href="<c:url value='/' />">
        <img src="<c:url value='/resources/images/logo.png'/>" width="152" height="39" alt="Query one">
      </a>
    </h1>
    <!-- 끝: 브랜드 영역 -->
    <!-- 내비게이션 영역 -->
    <nav class="page-gnb">
      <ul class="clearfix">
        <li class=""><a href="queryone/queryone.html">QueryOne</a></li>
        <li><a href="queryone/queryone-s.html">QueryOne S</a></li>
        <li><a href="queryone/video.html">Video</a></li>
        <li><a href="queryone/download.html">Download</a></li>
        <li><a href="queryone/news.html">News</a></li>
        <li><a href="queryone/contact.html">Contact</a></li>
      </ul>
    </nav>
    <!-- 끝: 내비게이션 영역 -->
  </div>
</header>