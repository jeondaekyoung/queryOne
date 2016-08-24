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
        $("li.menu-3").addClass("active");
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
              <p>공지사항</p>
            </header>
            
            <section class="scrollable wrapper w-f">

                <!--조회수-->
                <div class="clearfix form-group">
                  <label class="col-sm-2 control-label">조회수</label>
                  <div class="col-sm-10">
                    <p class="form-control-static">454</p>
                  </div>
                </div>
                <!--조회수 끝-->

                <!--작성일자-->
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="clearfix form-group">
                  <label class="col-sm-2 control-label">작성일자</label>
                  <div class="col-sm-10">
                    <p class="form-control-static">2016-06-22</p>
                  </div>
                </div>
                <!--작성일자 끝-->

                <!--제목-->
                <div class="line line-dashed line-lg pull-in"></div>                    
                <div class="clearfix form-group">
                  <label class="col-sm-2 control-label">제목</label>
                  <div class="col-sm-10">
                    <p class="form-control-static">쿼리원 2.1.1.40 패치파일입니다. (삭제 금지)</p>
                  </div>
                </div>
                <!--제목 끝-->                    

                <!--내용-->
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="clearfix form-group">
                    <label class="col-sm-2 control-label">내용</label>
                    <div class="col-sm-10">
                        <div id="editor" class="form-control" style="overflow:scroll;height:450px;max-height:450px" contenteditable="false">
                            1. 첨부파일을 다운받습니다.<br>
                            2. 쿼리원이 설치된 폴더 아래 bin 폴더에 복사합니다.<br>
                            3. QueryOne.exe를 실행하면 압축이 풀리면서 자동 업데이트가 됩니다.
                        </div>
                      </div>
                </div>
                <!--내용 끝-->

                <!--첨부파일-->
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="clearfix form-group">
                  <label class="col-sm-2 control-label">첨부파일</label>
                  <div class="col-sm-10">
                    <p class="form-control-static">- (첨부파일 없을 때 대쉬로 표시)</p>
                  </div>
                </div>
                <!--첨부파일 끝-->

                <!--버튼그룹-->      
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="clearfix form-group">
                  <div class="col-sm-4 col-sm-offset-2">
                    <button type="submit" class="btn btn-danger"><i class="fa fa-minus-circle"></i> 삭제</button>
                    <a href="noticeEdit.jsp" class="btn btn-primary"><i class="fa fa-edit"></i> 수정</a>
                  </div>
                </div>
                <!--버튼그룹 끝-->
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