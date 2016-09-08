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
        $("li.menu-4").addClass("active");
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
              <p>동영상</p>
            </header>
  

            <section class="scrollable wrapper w-f">
                <form action="<c:url value='/noti/list.do'/>" method="post" id="adForm" name="adForm" enctype="multipart/form-data">
	                <!-- 작성자 -->
								<input type="hidden" name="writer"
									value="${sessionScope.USERID}" class="form-control">
	                <table class="admin">
	                    <colgroup>
	                    <col style="width:20%">
	                    <col style="width:30%">
	                    <col style="width:30%">
	                    <col style="width:20%">
	                    </colgroup>
	                    <thead>
                            <tr>
                            	<th>No.</th>
                                <th>제목</th>
                                <th>유튜브 URL</th>
                                <th>관리</th>
                            </tr>
                        </thead>
                        <tbody>                
                            <tr><!--   한 페이지에 10개씩 보여준다    -->  
                            	<td>-</td>
                                <td><input type="text" name="title" class="form-control"></td>
                                <td><input type="text" name="youtube_URL" class="form-control"></td>
                                <td><button type="button" onclick="othersubmit(1)" class="btn btn-default"><i class="fa fa-plus-circle"></i> 등록</button></td>
                            </tr>      
                                    <c:choose>
											<c:when test="${empty lists }">
											<td colspan="4">등록된 게시물이 없어요</td>
											</c:when>
											<c:otherwise>
												<c:forEach items="${lists}" var="list" varStatus="status">
														
													<tr>
														<td>${totalRecordCount - (((nowPage - 1) * pageSize) + status.index)}</td>
														<td><input type="text" name="title_edit${list.videoNo }" class="form-control" value="${list.title }"></td>
														<td><input type="text"  name="youtube_URL_edit${list.videoNo }"  class="form-control" value="${list.youtube_URL}">
														</td>
														<td>
														<button type="button" onclick="othersubmit(2,'${list.videoNo}')"class="btn btn-info m-r-xs"><i class="fa fa-edit"></i> 수정</button>
														<button type="button" onclick="othersubmit(3,'${list.videoNo}')"class="btn btn-danger">	<i class="fa fa-minus-circle"></i> 삭제</button>
														</td>
													</tr>
												</c:forEach>
											</c:otherwise>
											</c:choose>
											          
                            
                        </tbody>
	                </table>
                </form>
                <h3>※유의사항※</h3>
            <h4>유튜브에서 해당 동영상의 공유 URL은 소스코드에 있는 src속성에 있는 URL를 등록하셔야 합니다.</h4>
            
            </section>
            
            
                      <script>
function othersubmit(n,videoNo){
if(n==1){
 document.adForm.action="<c:url value='/video/write.do'/>";
 }
if(n==2){
 document.adForm.action="<c:url value='/video/update.do?videoNo="+videoNo+"'/>";
}
if(n==3){
 document.adForm.action="<c:url value='/video/delete.do?videoNo="+videoNo+"'/>";
}
document.adForm.submit();
}
</script>
              
            <footer class="panel-footer">
              <div class="row">
                <!--페이징-->
                <div class="col-sm-9 text-center text-center-xs">                
                  ${pagingString}			
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
                      <input type="text" class="input-sm form-control" placeholder="Search">
                      <span class="input-group-btn">
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