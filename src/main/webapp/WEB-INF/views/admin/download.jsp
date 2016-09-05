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
							<form action="" method="post" id="adForm"
								enctype="multipart/form-data">
								<table class="admin">
									<colgroup>
										<col style="width: 10%">
										<col style="width: 60%">
										<col style="width: 20%">
										<col style="width: 10%">
									</colgroup>
									<thead>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>작성일</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<!--   한 페이지에 10개씩 보여준다    -->
										<c:choose>
											<c:when test="${empty lists }">
												<tr bgcolor="white" align="center">
													<td colspan="4">등록된 메모가 없어요</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${lists }" var="list" varStatus="status">
													<tr>
														<td>${list.downNo }</td>
														<td><a href="<c:url value='/down/view.do?downNo=${list.downNo}'/>">[${list.account}]${list.title}</a></td>
														<td>${list.createDate}</td>
														<td>${list.hits }</td>
													</tr>
												</c:forEach>

											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
								<a href="<c:url value='/down/writeForm.do'/>"
									class="btn btn-primary" style="margin-top: 20px"><i
									class="fa fa-pencil"></i> 글쓰기</a>
							</form>
						</section>

						<footer class="panel-footer">
							<div class="row">
								<!--페이징-->
								<div class="col-sm-9 text-center text-center-xs">
									<ul class="pagination pagination-sm m-t-none m-b-none">
										<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
									</ul>
								</div>
								<!--페이징 끝-->

								<!--검색-->
								<div class="col-sm-3">
									<div class="input-group">
										<!--<select class="input-sm">
                        <option value="0">제목</option>
                        <option value="1">작성자</option>
                        <option value="2">내용</option>
                        <option value="3">제목+내용</option>
                      </select>-->
										<input type="text" class="input-sm form-control"
											placeholder="Search"> <span class="input-group-btn">
											<button class="btn btn-sm btn-default" type="button">검색</button>
										</span>
									</div>
								</div>
								<!--검색 끝-->
							</div>
						</footer>

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