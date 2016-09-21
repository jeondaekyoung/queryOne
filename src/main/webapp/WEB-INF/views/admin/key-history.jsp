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
        $("li.menu-1").addClass("active");
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
              <p>라이센스 키 발급내역</p>
            </header>
            
            <section class="scrollable wrapper w-f">
                
                <form action="" method="post" id="adForm" enctype="multipart/form-data">
                  
                <!--날짜검색-->
                    <div class="row text-sm wrapper">
                      <div class="form-group col-sm-12 m-b-xs">
                          <label class="col-sm-2 control-label">날짜검색</label>
                          <div class="col-sm-10">
                            <input class="input-sm input-s datepicker-input form-control row-r" size="16" type="text" value="2016-09-20" data-date-format="yyyy-mm-dd" >
                            <p class="row-r m-l-sm m-r-sm"> ~ </p>  
                            <input class="input-sm input-s datepicker-input form-control row-r" size="16" type="text" value="2016-09-20" data-date-format="yyyy-mm-dd" >
                            	<p class="row-r m-l-sm m-r-sm"></p>
                            	<a class="btn btn-info" href="<c:url value='lice/history/search.do?when=1d'/>" >오늘</a>
								<a class="btn btn-info" href="<c:url value='lice/history/search.do?when=1w'/>" >일주일</a>
								<a class="btn btn-info" href="<c:url value='lice/history/search.do?when=1m'/>" >한달</a>
								<a class="btn btn-info" href="<c:url value='lice/history/search.do?when=2m'/>" >두달</a>
								
                            <button type="submit" class="btn btn-s-lg btn-primary pull-right-lg"><i class="fa fa-search"></i> 검색</button>   
                            	
                            
                            
                          </div>
                          
                          
                      </div>
                    </div>
                    <!--날짜검색 끝-->
                    <div class="line line-dashed line-lg pull-in"></div>
                    <label class="col-sm-3 control-label"> 총 발급 횟수</label>
                    <p class="text-warning text-md">
                    	${history_sum }
                    </p> 
                    <div class="line line-dashed line-lg pull-in"></div>
	                <table class="admin">
	                    <colgroup><col style="width:30%"><col style="width:30%"><col style="width:40%"></colgroup>
	                    <thead>
                            <tr>
                                <th>날짜</th>
                                <th>라이센스 키</th>
                                <th>발급 횟수</th>
                            </tr>
                        </thead>
                        <tbody><!--   한 페이지에 30개씩 보여준다    -->
								<c:choose>
									<c:when test="${empty lists}">
										<tr bgcolor="white" align="center">
											<td colspan="3">검색된 결과가 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${lists}" begin="0" end="9" var="list"
											varStatus="status">
											<tr>
												
												<td>${list.hitDate }</td>
												<td>${list.lice_key }</td>
												<td>${list.hits }</td>
											</tr>
										</c:forEach>

									</c:otherwise>
								</c:choose>
						</tbody>
	                </table>
                </form>
            </section>
              
            <footer class="panel-footer">
      			 	<div class="text-center padder">
											<p>
												<small>copyright 2016. all rights reserved
													SOFTGARDEN Co. Ltd.</small>
											</p>
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