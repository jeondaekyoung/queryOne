<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="bg-black dk header navbar navbar-fixed-top-xs">
  <div class="navbar-header">
    <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
      <i class="fa fa-bars"></i>
    </a>
    <a href="<c:url value='/admin/index.do' />" class="navbar-brand">QueryOne admin</a>  
    <a href="<c:url value='/index.do' />" class="btn btn-sm btn-info pull-right-lg text-right">QueryOne</a>
  </div>
</header>