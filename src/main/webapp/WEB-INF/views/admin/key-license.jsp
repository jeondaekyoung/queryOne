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
              <p>라이센스 키 관리</p>
            </header>
            
            <section class="scrollable wrapper w-f">
                <form action="" method="post" id="adForm" enctype="multipart/form-data">
	                <table class="admin">
	                    <colgroup><col style="width:15%"><col style="width:15%"><col style="width:50%"><col style="width:20%"></colgroup>
	                    <thead>
                            <tr>
                                <th>날짜</th>
                                <th>제품ID</th>
                                <th>라이선스 KEY</th>
                                <th>관리</th>
                            </tr>
                        </thead>
                        <tbody>      <!--   한 페이지에 10개씩 보여준다    -->            
                            <tr>
                                <td><input type="text" class="form-control"></td>
                                <td><select name="account" class="form-control">
                                      <option>Q01</option>
                                    </select>
                                </td>
                                <td><input type="text" class="form-control"></td>
                                <td><button type="submit" class="btn btn-default"><i class="fa fa-plus-circle"></i> 등록</button></td>
                            </tr>                        
                            <tr>
                                <td><input type="text" class="form-control" value="2016-08-17" disabled></td>
                                <td><select name="account" class="form-control">
                                      <option>Q01</option>
                                    </select>
                                </td>
                                <td><input type="text" class="form-control" value="6154675F183C44757C6A97C8E39E02E8"></td>
                                <td><button type="submit" class="btn btn-info m-r-xs"><i class="fa fa-edit"></i> 수정</button>
                                    <button type="submit" class="btn btn-danger"><i class="fa fa-minus-circle"></i> 삭제</button></td>
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