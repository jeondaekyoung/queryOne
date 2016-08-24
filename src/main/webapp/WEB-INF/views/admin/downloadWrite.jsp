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
              <p>자료실</p>
            </header>
            
            <section class="scrollable wrapper w-f">                
                <form action="" method="post" id="adForm" class="form-horizontal" enctype="multipart/form-data">
                    
                    <!--구분-->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">구분</label>
                      <div class="col-sm-10">
                        <select name="account" class="form-control col-lg-4">
                          <option>패치</option>
                          <option>문서</option>
                        </select>
                      </div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>                    
                    <!--구분 끝-->
                    
                    <!--제목-->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">제목</label>
                      <div class="col-sm-10">
                        <input type="text"  class="form-control">
                      </div>
                    </div>
                    <!--제목 끝-->                    
                    
                    <!--내용-->
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">내용</label>
                        <div class="col-sm-10">
                            <div id="editor" class="form-control" style="overflow:scroll;height:450px;max-height:450px" contenteditable="true">
                              Go ahead&hellip;
                            </div>
                        </div>
                    </div>
                    <!--내용 끝-->
                    
                    <!--첨부파일-->
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                      <label class="col-sm-2 control-label">첨부파일</label>
                      <div class="col-sm-10">
                        <input type="file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s">
                      </div>
                    </div>
                    <!--첨부파일 끝-->
                              
                    <!--버튼그룹-->      
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                      <div class="col-sm-4 col-sm-offset-2">
                        <button type="submit" class="btn btn-default"><i class="fa fa-times"></i> 취소</button>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-pencil"></i> 등록</button>
                      </div>
                    </div>
                    <!--버튼그룹 끝-->
                </form>
            </section>
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