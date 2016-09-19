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
		var f = document.hitsForm;
		var input=f.downNo.value;
		f.downNo.value = no;
		f.submit();
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
						<h3>Download</h3>
						<h4>자료실</h4>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 prefix-2 text-center bg-blue">
					<div class="col-10">제목</div>
					<div class="col-6">등록일</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 prefix-2 news">
					<div class="panel-group" id="accordion2">
						<c:choose>
							<c:when test="${empty lists }">
								<div class="panel panel-default">
										<div class="panel-heading">
												<span class="col-16">등록한 게시물이 없습니다.</span>	
										</div>
								</div>
							</c:when>
							<c:otherwise>
							<form action="<c:url value='/user/downHits.do'/>" name="hitsForm">
									<input type="hidden"  name="downNo"  >
								</form>
								<c:forEach items="${lists}" var="list" varStatus="status">
									<div class="panel panel-default">
										<div class="panel-heading">
											<a class="accordion-toggle row" data-toggle="collapse"
												data-parent="#accordion2" onclick="view('${list.downNo}')"   href="#collapse${list.downNo }">
												<span class="col-10">${list.title }</span> <span
												class="col-6">${list.createDate }</span>
											</a>
										</div>
											<c:if test="${param.downNo == list.downNo}" var="result">
										<div id="collapse${list.downNo }" 
											class="panel-collapse row in">
											</c:if>
											<c:if test="${not result }">
										<div id="collapse${list.downNo }"
											class="panel-collapse collapse row">
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
									</div>
								</c:forEach>
							</c:otherwise>


						</c:choose>





						<!--     <div class="panel panel-default">
              <div class="panel-heading">
                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                  <span class="col-10">Collapsible Group Item #1</span>
                  <span class="col-6">2016-09-07</span>
                </a>
              </div>
              <div id="collapseTwo" class="panel-collapse collapse row">
                <div class="panel-body col-12 prefix-2">
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
              </div>-->
					</div>

				</div>
			</div>
		</div>
		<!-- 끝: .content-01 -->

		<!-- 시작: paging -->
		<div class="text-center">${pagingString}</div>
		<!-- 끝: paging -->

	</div>
	<!-- 끝: .page-container -->

	<jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>