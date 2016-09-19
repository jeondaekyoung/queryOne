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
        $("li.menu-2").addClass("active");
	});
		
	function eclick(pstr) {
		var f = document.adForm;
		switch (pstr) {
		case 'mod':
			/* if (confirm("맞는 날짜입니까?")!=1) {return false;} */

			if (f.account.value == "구분") {
				alert("구분을 선택하세요");

				return false;
			}
			if (!f.title.value) {
				alert("제목을 입력하세요.");

				return false;
			}
			if (!f.content.value) {
				alert("내용을 입력하세요.");

				return false;
			}
			f.submit();
			break;
		case 'cancel':
			history.back();

		}
	}
	function onlyNumber() {
		if ((event.keyCode < 48) || (event.keyCode > 57))
			event.returnValue = false;
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
							<p>자료실</p>
						</header>

						<section class="scrollable wrapper w-f">
							<form action="<c:url value="/down/edit.do"/>" method="post" name="adForm" id="adForm" class="form-horizontal"
								enctype="multipart/form-data">
												<!-- 작성자 -->
								<input type="hidden" name="writer"	value="${sessionScope.USERID}" class="form-control"> 
								<input type="hidden" name="downNo" value="${download.downNo}"class="form-control"> 
								<input type="hidden"	name="file_id" value="${download.file_id}" class="form-control">
									

								<!--구분-->
								<div class="form-group">
									<label class="col-sm-2 control-label">구분</label>
									<div class="col-sm-10">
										<select name="account" class="form-control col-lg-4">
										<c:set value="" var="account_patch"/>
										<c:choose>
											<c:when test="${download.account eq '패치'}">
											<option selected="selected" >패치</option>
											<option>문서</option>
											</c:when>
											<c:otherwise>
											<option>패치</option>
											<option selected="selected">문서</option>
											</c:otherwise>
										</c:choose>
											
										</select>
									</div>
								</div>
								<div class="line line-dashed line-lg pull-in"></div>
								<!--구분 끝-->

								<!--제목-->
								<div class="form-group">
									<label class="col-sm-2 control-label">제목</label>
									<div class="col-sm-10">
										<input type="text" value="${download.title}" name="title"
											class="form-control">
									</div>
								</div>
								<!--제목 끝-->

								<!--내용-->
								<div class="line line-dashed line-lg pull-in"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">내용</label>
									<div class="col-sm-10">
										<textarea id="editor" name="content" class="form-control"
											style="overflow: scroll; height: 450px; max-height: 450px"
											contenteditable="true">${download.content}</textarea>
									</div>
								</div>
								<!--내용 끝-->

								<!--첨부파일-->
								<div class="line line-dashed line-lg pull-in"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">첨부파일</label>
									<div class="col-sm-10">
										<input type="file" class="filestyle" name="file"	data-icon="false" data-classButton="btn btn-default"	data-classInput="form-control inline input-s">
										이전파일 :
										<c:if test="${empty download.fileName}" var="result">
										 -
									</c:if>
									<c:if test="${!result}">
										<a href='<c:url value="/file/down/${download.file_id}.do" />' class="btn btn-info"><i class="fa fa-download"></i>${download.fileName} 다운로드</a>
									</c:if>
										
									</div>
								</div>
								<!--첨부파일 끝-->

								<!--버튼그룹-->
								<div class="line line-dashed line-lg pull-in"></div>
								<div class="form-group">
									<div class="col-sm-4 col-sm-offset-2">
										<button type="button" onclick="eclick('cancel')" class="btn btn-default">
											<i class="fa fa-times"></i> 취소
										</button>
										<button type="button" onclick="eclick('mod')" class="btn btn-primary">
											<i class="fa fa-pencil"></i> 등록
										</button>
									</div>
								</div>
								<!--버튼그룹 끝-->
							</form>
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