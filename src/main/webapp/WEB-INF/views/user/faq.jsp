<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<jsp:include page="include-head.jsp" flush="false" />
</head>
<script type="text/javascript">
	function view(no) {
		if($("#collapse"+no).attr("class")=='panel-collapse row in') return false;
		var param = {
			notiNo : no
		};
		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/user/newsHits.do',
			cache : false,
			data : param,
			timeout : 60000
		}); 
	}
</script>
<body class="container show-grid">

	<!-- 시작: .page-header -->
	<jsp:include page="include-top.jsp" flush="false" />
	<!-- 끝: .page-header -->

	<!-- 시작: .page-container -->
	<div class="page-container">
		<!-- 시작: .content-01 -->
		<div class="detail-01">
			<div class="top">
				<div class="row">
					<div class="col-12 prefix-2">
						<h3>NEWS</h3>
						<h4>공지사항</h4>
					</div>
				</div>
			</div>

			<%-- <c:choose>
				<c:when test="${empty lists }"> --%>
					<img src="<c:url value='/resources/images/noData.jpg'/>"
						style="width: 400px; margin: 0 auto; display: block;"
						alt="등록된 데이터가 없습니다.">

				<%-- </c:when>
				<c:otherwise> --%>
					<div class="row">
						<div class="col-12 prefix-2 text-center bg-blue">
							<div class="col-10">제목</div>
							<div class="col-6">등록일</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 prefix-2 news">
							<div class="panel-group" id="accordion2">
								<c:forEach items="${lists}" var="list" varStatus="status">

									<div class="panel panel-default">
										<div class="panel-heading">
											<a class="accordion-toggle row"
												onclick="view('${list.notiNo}')" data-toggle="collapse"
												data-parent="#accordion2" href="#collapse${list.notiNo }">
												<span class="col-10">${list.title }</span> <span
												class="col-6">${list.createDate }</span>
											</a>
										</div>
										<c:if test="${param.notiNo == list.notiNo}" var="result">
											<div id="collapse${list.notiNo }" class="panel-collapse row in">
										</c:if>
										<c:if test="${not result }">
											<div id="collapse${list.notiNo }" class="panel-collapse collapse row">
										</c:if>
										<!-- panel-collapse in 내용 목록 보기 -->
										<div class="panel-body col-12 prefix-2">
											${list.content }
											<!-- 파일 -->
											<c:if test="${empty list.fileName}" var="result">

											</c:if>
											<c:if test="${!result}">
												<p class="form-control-static">
													<a href='<c:url value="/file/down/${list.file_id}" />'
														class="btn btn-info"><i class="fa fa-download"></i>${list.fileName}
														다운로드</a>
												</p>
											</c:if>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
			<%-- 	</c:otherwise>
			</c:choose> --%>

			<!-- 시작: paging -->
			<div class="text-center">${pagingString}</div>
			<!-- 끝: paging -->
		</div>
		<!-- 끝: .content-01 -->

	</div>
	<!-- 끝: .page-container -->

	<jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>