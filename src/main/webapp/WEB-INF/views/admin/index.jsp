<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko-KR" class="app">
<head>
	<!-- head -->
    <jsp:include page="include/include-head.jsp" flush="false" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
               <div class="row" style="padding:5px 0">
                 <div class="col-sm-9"><p style="line-height:4rem;margin-bottom:0;">최근 게시물</p></div>
              
                
                
                <!--검색-->
                <div class="col-sm-3">
                <form action='<c:url value="/admin/indexSearch.do"/>' method="post" >
                    <div class="input-group">
                      <!--<select class="input-sm">
                        <option value="0">제목</option>
                        <option value="1">작성자</option>
                        <option value="2">내용</option>
                        <option value="3">제목+내용</option>
                      </select>-->
                      <input type="text" name="search_text" class="form-control" placeholder="Search">
                      <input type="hidden" name ="search_account"  value="2">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">검색</button>
                      </span>
                      </div>
                    </form>
                </div>
                <!--검색 끝-->
              </div>
            </header>
       		 <section class="scrollable wrapper w-f">
							<table class="admin" style="margin-bottom:20px">
							<caption >자료실</caption>
									<colgroup>
										<col style="width: 10%">
										<col style="width: 30%">
										<col style="width: 30%">
										<col style="width: 20%">
										<col style="width: 10%">
									</colgroup>
									<thead>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>파일</th>
											<th>작성일</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<!--   한 페이지에 10개씩 보여준다    -->
										<c:choose>
											<c:when test="${empty downLists }">
												<tr bgcolor="white" align="center">
													<td colspan="5">등록된 게시물이 없거나 검색한 결과가 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${downLists }" begin="0" end="9" var="list" varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td><a href="<c:url value='/down/view.do?downNo=${list.downNo}'/>">[${list.account}]${list.title}</a></td>
														<td>
														<c:if test="${empty list.file_id}">
															-
														</c:if>
														<a href='<c:url value="/file/down/${list.file_id}.do"></c:url>'>${list.fileName}</a>
														</td>
														<td>${list.createDate}</td>
														<td>${list.hits }</td>
													</tr>
												</c:forEach>

											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
								<table class="admin" style="margin-bottom:20px">
									<caption>공지사항</caption>
									<colgroup>
										<col style="width: 10%">
										<col style="width: 30%">
										<col style="width: 30%">
										<col style="width: 20%">
										<col style="width: 10%">
									</colgroup>
									<thead>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>파일</th>
											<th>작성일</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<!--   한 페이지에 10개씩 보여준다    -->
										<c:choose>
											<c:when test="${empty notiLists }">
												<tr bgcolor="white" align="center">
													<td colspan="5">등록된 게시물이 없거나 검색한 결과가 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${notiLists}" begin="0" end="9" var="list" varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td><a
															href="<c:url value='/noti/view.do?notiNo=${list.notiNo}'/>">${list.title}</a></td>
																<td>
																	<c:if test="${empty list.file_id}">
																		-
																	</c:if>
																<a href='<c:url value="/file/down/${list.file_id}.do"></c:url>'>${list.fileName}</a>
																</td>
														<td>${list.createDate}</td>
														<td>${list.hits}</td>
													</tr>
												</c:forEach>

											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							<table class="admin" style="margin-bottom:20px">
									<caption>동영상</caption>
									<colgroup>
										<col style="width: 10%">
										<col style="width: 10%">
										<col style="width: 10%">
										<col style="width: 15%">
										<col style="width: 40%">
									</colgroup>
									<thead>
										<tr>
											<th>No.</th>
											<th>제목</th>
											<th>작성일</th>
											<th>유튜브 URL</th>
											<th>영상</th>
											
										</tr>
									</thead>
									<tbody>
										<!--   한 페이지에 10개씩 보여준다    -->
										<c:choose>
											<c:when test="${empty videoLists }">
												<tr bgcolor="white" align="center">
													<td colspan="5">등록된 게시물이 없거나 검색한 결과가 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${videoLists}" begin="0" end="9" var="list" varStatus="status">
													<tr>
														<td>${status.index+1}</td>
														<td>${list.title}</td>
														<td>${list.createDate}</td>
														<td>${list.youtube_URL}</td>
												<td><iframe width="450" height="150" src="${list.youtube_URL}" frameborder="0" allowfullscreen></iframe></td>
													</tr>
												</c:forEach>

											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							
 
				</section>
  
            <footer class="panel-footer">
              <div class="row">
                <!--페이징-->
                <!-- <div class="col-sm-9 text-center text-center-xs">                
                  <ul class="pagination pagination-sm m-t-none m-b-none">
                    <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                  </ul>
                </div> -->
                <!--페이징 끝-->
                
         
                	<div class="text-center padder">
											<p>
												<small>copyright 2016. all rights reserved
													SOFTGARDEN Co. Ltd.</small>
											</p>
										</div>
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