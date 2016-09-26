<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="bg-black dk header navbar navbar-fixed-top-xs">
  <div class="navbar-header aside-md">
    <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
      <i class="fa fa-bars"></i>
    </a>
    <a href="<c:url value='/admin/index.do' />" class="navbar-brand">QueryOne</a>
    <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".nav-user">
      <i class="fa fa-cog"></i>
      <!--검색-->
       <div class="col-sm-3">
           <div class="input-group">
             <!--<select class="input-sm">
               <option value="0">제목</option>
               <option value="1">작성자</option>
               <option value="2">내용</option>
               <option value="3">제목+내용</option>
             </select>-->
             <input type="text" class="input-sm form-control" placeholder="Search">
             <span class="input-group-btn">
               <button class="btn btn-sm btn-default" type="button">검색</button>
             </span>
		   </div>
       </div>
       <!--검색 끝-->
    </a>
  </div>
</header>