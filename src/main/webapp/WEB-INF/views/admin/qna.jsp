<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        $("li.menu-5").addClass("active");
     
	});
		function del() {
			if (confirm("문의사항을 정말로 삭제하시겠습니까?")!=1) {
				event.preventDefault();
				return false;
			}
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
							<p>문의하기</p>
						</header>

						<section class="scrollable wrapper w-f">
							<form action="" method="post" id="adForm"
								enctype="multipart/form-data">
								<!-- .accordion -->
				                  <div class="panel-group m-b" id="accordion2">
				      				  <c:choose>
				                    	<c:when test="${empty lists }">
											<table class="admin">
												<colgroup>
													<col style="width: 100%">

												</colgroup>
												<tr>
													<th>문의 내용</th>

												</tr>
												<tr bgcolor="white" align="center">
													<td colspan="1">등록된 게시물이 없거나 검색한 결과가 없습니다.</td>
												</tr>
											</table>
										</c:when>
				                    	<c:otherwise>
					                  <table class="admin">
										<colgroup>
											<col style="width: 100%">

										</colgroup>
										<tr>
											<th>문의 내용</th>

										</tr>
										</table>
										<c:forEach items="${lists}" var="list" varStatus="status">
						                 <div class="panel panel-default">
					                        <!--제목 영역-->
					                        <div class="panel-heading pos-rlt">
					                          <a class="accordion-toggle clearfix" data-toggle="collapse" data-parent="#accordion2" href="#collapse${list.qnaNo }">
					                            <div class="col-sm-12">${list.title}<br>
					                            <span class="text-md"><fmt:formatDate value="${list.createDate}" type="date" pattern="yyyy-MM-dd a hh:ss"/></span>
					                            </div>
					                          </a>
					                          <div class="pos-abt">                            
					                        <a  href="<c:url value='/qna/answerChk.do?qnaNo=${list.qnaNo}&answerChk=${list.answerChk}&nowPage=${nowPage}'/>">
				                    		  <c:choose>
				                          	<c:when test="${list.answerChk==0}">
				                          	<p id="noAnswer${list.qnaNo}"class="btn btn-default"><i class="fa fa-square-o"></i> 답변 대기</p> 
				                             </c:when>
				                          	<c:otherwise>
					                     	<p id="chkAnswer${list.qnaNo}" class="btn btn-info"><i class="fa fa-check-square-o"></i>답변 완료</p> 
				                            </c:otherwise>
				                          </c:choose>
				                          </a>
				                          <a href="<c:url value='/qna/delete.do?qnaNo=${list.qnaNo}&nowPage=${nowPage}'/>">
					                            <p onclick="del()" class="btn btn-danger"><i class="fa fa-trash-o"></i> 삭제</p>
					                      </a>
					                          </div>
					                        </div>
					                        <!--끝: 제목 영역-->
					                          
					                        <!--시작: 내용 영역-->
					                        <div id="collapse${list.qnaNo}" class="panel-collapse collapse">
					                          <div class="panel-body">
					                            <p class="text-md">이름: ${list.name}</p>
					                            <p class="text-md">이메일: ${list.email}</p>
					                            <p class="text-md m-b">연락처:${list.tel}</p>
					                            <div class="line line-dashed"></div>
					                            ${list.content}
					                          </div>
					                        </div>
					                        <!--끝: 내용 영역-->
                    						</div>
        
												</c:forEach>
				                    	</c:otherwise>
				                    </c:choose>
								</div>	
				                  <!-- / .accordion -->	
							</form>
						</section>

						<footer class="panel-footer">
							<div class="row">
								<!--페이징-->
								<div class="col-sm-9 text-center text-center-xs">
									 ${pagingString}
									 
								</div>
								<!--페이징 끝-->

								<!--검색-->
								<div class="col-sm-3">
								<form action='<c:url value="/qna/search.do"/>' method="post" >
									<select name ="search_account" class="input-sm">
										<option value="0">제목</option>
										<option value="1">내용</option>
										<option value="2">제목+내용</option>
									</select>
									<div class="input-group">
							
										<input id="Search_input" type="text" name="search_text" class="input-sm form-control"
											placeholder="Search"> <span class="input-group-btn">
											<button id="Search" class="btn btn-sm btn-default" type="submit">검색</button>
										</span>
										
									</div>
									</form>
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