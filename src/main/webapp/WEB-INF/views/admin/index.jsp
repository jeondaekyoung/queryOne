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
              <p>최근 게시물</p>
            </header>
       		 <section class="scrollable wrapper w-f">
       		 <div><iframe width="560" height="315" src="https://www.youtube.com/embed/HtwK5wzmb5E" frameborder="0" allowfullscreen ></iframe></div>
              <div><iframe width="560" height="315" src="https://www.youtube.com/embed/p4XTMvagQ2Q" frameborder="0" allowfullscreen></iframe></div>
              <div><iframe width="560" height="315" src="https://www.youtube.com/embed/Ibb5RhoKfzE" frameborder="0" allowfullscreen></iframe></div>
              <div><iframe width="560" height="315" src="https://www.youtube.com/embed/42Gtm4-Ax2U" frameborder="0" allowfullscreen></iframe></div>
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