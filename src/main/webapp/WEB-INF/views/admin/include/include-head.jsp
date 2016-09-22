<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="쿼리원 관리자 페이지" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
<title>관리자 페이지</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value='/resources/css/font.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/js/datepicker/datepicker.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/css/app.css'/>" type="text/css" />

<c:if test="${sessionScope.USERID != 'admin'}" >
	<script>
		alert("관리자용 페이지 입니다. ");
		location.href="<c:url value='/admin/loginForm.do'/>";
	</script>
</c:if>

<style>
  *{font-size: 14px}
  .admin {width:100%}
  .admin th {background-color:#eee; height:40px;}
  .admin td {background-color:#fff; height: 35px}
  .admin th, .admin td {text-align:center; border:1px solid #ccc;}
  .admin td>a {display: inline-block; width: 100%; line-height: 35px;}
  #accordion2 .accordion-toggle span {font-size: 12px; color: #bbb}
  #accordion2 .accordion-toggle .col-sm-1 {color: #FB6B5B}
  .pos-abt {top: 14px; right: 14px;}
  
</style>
  
<!--[if lt IE 9]>
  <script src="<c:url value='/resources/js/ie/html5shiv.js'/>"></script>
  <script src="<c:url value='/resources/js/ie/respond.min.js'/>"></script>
  <script src="<c:url value='/resources/js/ie/excanvas.js'/>"></script>
<![endif]-->	