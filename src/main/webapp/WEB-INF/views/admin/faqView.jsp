<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko-KR" class="app">
<head>
<!-- head -->
<jsp:include page="include/include-head.jsp" flush="false" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    /* addClass : .active */
    $(document).ready(function(){
        $("li.menu-6").addClass("active");
	});
    function del_click() {
    	var f =document.delForm;
    	 if (confirm("정말 이 게시물을 삭제하시겠습니까?")!=1) {return false;}
    	 f.submit();
    }
	
		function onlyNumber(){ 
			if((event.keyCode<48)||(event.keyCode>57)) 
			event.returnValue=false; 
		}

    </script>
<!-- //head -->
</head>

<body>
	<section class="vbox">
		<!-- top -->
		<jsp:include page="include/include-top.jsp" flush="false" />
		<!-- //top -->

		<section>
			<section class="hbox stretch">
				<!-- .aside -->
				<jsp:include page="include/include-left.jsp" flush="false" />
				<!-- /.aside -->
				<section id="content">
					<section class="vbox">
						<header class="header bg-white b-b b-light">
							<p>FAQ</p>
						</header>

						<section class="scrollable wrapper w-f">

							<!--조회수-->
							<div class="clearfix form-group">
								<label class="col-sm-2 control-label">조회수</label>
								<div class="col-sm-10">
									<p class="form-control-static">${faq.hits}</p>
								</div>
							</div>
							<!--조회수 끝-->

							<!--작성일자-->
							<div class="line line-dashed line-lg pull-in"></div>
							<div class="clearfix form-group">
								<label class="col-sm-2 control-label">작성일자</label>
								<div class="col-sm-10">
									<p class="form-control-static">${faq.createDate}</p>
								</div>
							</div>
							<!--작성일자 끝-->

							<!--제목-->
							<div class="line line-dashed line-lg pull-in"></div>
							<div class="clearfix form-group">
								<label class="col-sm-2 control-label">제목</label>
								<div class="col-sm-10">
									<p class="form-control-static">${faq.title}</p>
								</div>
							</div>
							<!--제목 끝-->

							<!--내용-->
							<div class="line line-dashed line-lg pull-in"></div>
							<div class="clearfix form-group">
								<label class="col-sm-2 control-label">내용</label>
								<div class="col-sm-10">
									<div class="form-control"
										style="overflow: scroll; height: 450px; max-height: 450px"
										contenteditable="false">${faq.content}</div>
								</div>
							</div>
							<!--내용 끝-->

							<!--첨부파일-->
							<div class="line line-dashed line-lg pull-in"></div>
							<div class="clearfix form-group">
								<label class="col-sm-2 control-label">첨부파일</label>
								<div class="col-sm-10">
									<c:if test="${empty faq.fileName}" var="result">
										<p class="form-control-static">-</p>
									</c:if>
									<c:if test="${!result}">
									<p class="form-control-static"><a href='<c:url value="/file/down/${faq.file_id}" />' class="btn btn-info"><i class="fa fa-download"></i>${faq.fileName} 다운로드</a></p>
										
									</c:if>
								</div>
							</div>
							<!--첨부파일 끝-->

							<!--버튼그룹-->
							<div class="line line-dashed line-lg pull-in"></div>
							<div class="clearfix form-group">
								<div class="col-sm-4 col-sm-offset-2">
									<form name="delForm" action="<c:url value='/faq/delete.do'/>" method="post">
									<a href="<c:url value='/faq/list.do'/>"	class="btn btn-primary"><i class="fa fa-list-ul"></i> 목록</a>
										<input type="hidden" name="faqNo" value="${faq.faqNo}" />
										<button type="button"  onclick="del_click()" class="btn btn-danger">
											<i class="fa fa-minus-circle"></i> 삭제
										</button>
										<a
											href="<c:url value='/faq/editForm.do?faqNo=${faq.faqNo }'/>"
											class="btn btn-primary"><i class="fa fa-edit"></i> 수정</a>
											<a href="<c:url value='/faq/writeForm.do'/>"	class="btn btn-primary" ><i class="fa fa-pencil"></i> 글쓰기</a>
									</form>

								</div>
							</div>
							<!--버튼그룹 끝-->
						</section>
					</section>
				</section>
			</section>
		</section>
	</section>

	<!-- bottom -->
	<jsp:include page="include/include-bottom.jsp" flush="false" />
	<!-- //bottom -->
</body>
</html>