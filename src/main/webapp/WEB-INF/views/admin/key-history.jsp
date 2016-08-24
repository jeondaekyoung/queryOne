<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                  
                    <!--키워드 검색-->
                    <div class="row text-sm wrapper">
                      <div class="col-sm-12 m-b-xs">
                        <label class="col-sm-2 control-label">키워드 검색</label>
                        <div class="col-sm-2">
                          <select class="input-sm form-control input-s-sm inline">
                              <option value="0">아이디</option>
                              <option value="1">제품명</option>
                              <option value="2">이메일</option>
                          </select>
                        </div>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" id="input-id-1">
                        </div>
                      </div>
                    </div>
                    <!--키워드 검색-->
                    
                    <!--날짜검색-->
                    <div class="line line-dashed line-lg pull-in"></div>                  
                    <div class="row text-sm wrapper">
                      <div class="form-group col-sm-12 m-b-xs">
                          <label class="col-sm-2 control-label">날짜검색</label>
                          <div class="col-sm-10">
                            <input class="input-sm input-s datepicker-input form-control row-r" size="16" type="text" value="12-02-2013" data-date-format="yyyy-mm-dd" >
                            <p class="row-r m-l-sm m-r-sm"> ~ </p>  
                            <input class="input-sm input-s datepicker-input form-control row-r" size="16" type="text" value="12-02-2013" data-date-format="yyyy-mm-dd" >
                              
                            <button type="submit" class="btn btn-s-lg btn-primary pull-right-lg"><i class="fa fa-search"></i> 검색</button>
                          </div>
                      </div>
                    </div>
                    <!--날짜검색 끝-->
                    
                    <div class="line line-dashed line-lg pull-in"></div>
	                <table class="admin">
	                    <colgroup><col style="width:20%"><col style="width:25%"><col style="width:20%"><col style="width:25%"><col style="width:10%"></colgroup>
	                    <thead>
                            <tr>
                                <th>아이디</th>
                                <th>날짜</th>
                                <th>제품명</th>
                                <th>이메일</th>
                                <th>발급횟수</th>
                            </tr>
                        </thead>
                        <tbody><!--   한 페이지에 30개씩 보여준다    -->    
                            <tr>
                                <td>okevary</td>
                                <td>2016-08-18 14:12:24</td>
                                <td>QueryOne</td>
                                <td>YSCHOI@DAESUNGIS.CO.KR</td>
                                <td>55</td>
                            </tr>  
                        </tbody>
	                </table>
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