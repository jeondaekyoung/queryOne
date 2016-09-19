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
        $("li.menu-3").addClass("active");
	});
	function eclick(pstr) {
		var f = document.adForm;
		switch (pstr) {
		case 'mod':
			if (!f.title.value) {
				alert("제목을 입력하세요.");

				return false;
			}
			
			if($("#editor").html()!=0){
				$("#editorContent").val($("#editor").html());
				}
			
			if (!f.content.value) {
				alert("내용을 입력하세요.");

				return false;
			}
			f.submit();
			break;
		case 'cancel':
			history.back();

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
							<p>공지사항</p>
						</header>

						<section class="scrollable wrapper w-f">

							<form action="<c:url value="/noti/edit.do"/>" method="post"
								id="adForm" name="adForm" class="form-horizontal"
								enctype="multipart/form-data">
								<!-- 작성자 -->
								<input type="hidden" name="writer"	value="${sessionScope.USERID}" class="form-control"> 
								<input type="hidden" name="notiNo" value="${notice.notiNo}" class="form-control"> 
								<input type="hidden"	name="file_id" value="${notice.file_id}" class="form-control">
								<input type="hidden" name="content" id="editorContent"class="form-control" />
								<!--제목-->
								<div class="form-group">
									<label class="col-sm-2 control-label">제목</label>
									<div class="col-sm-10">
										<input type="text" value="${notice.title}" name="title"
											class="form-control">
									</div>
								</div>
								<!--제목 끝-->

								<!--내용-->
								<%-- <div class="line line-dashed line-lg pull-in"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">내용</label>
									<div class="col-sm-10">
										<textarea id="editor" name="content" class="form-control"
											style="overflow: scroll; height: 450px; max-height: 450px"
											contenteditable="true">${notice.content}</textarea>
									</div>
								</div> --%>
								<div class="form-group">
								  <label class="col-sm-2 control-label"></label>
                      <div class="col-sm-10">
                        <div class="btn-toolbar m-b-sm btn-editor" data-role="editor-toolbar" data-target="#editor">
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                              <ul class="dropdown-menu">
                              </ul>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                              <ul class="dropdown-menu">
                              <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                              <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                              <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                              </ul>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                          </div>
                          <div class="btn-group">
                          <a class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                            <div class="dropdown-menu">
                              <div class="input-group m-l-xs m-r-xs">
                                <input class="form-control input-sm" placeholder="URL" type="text" data-edit="createLink"/>
                                <div class="input-group-btn">
                                  <button class="btn btn-default btn-sm" type="button">Add</button>
                                </div>
                              </div>
                            </div>
                            <a class="btn btn-default btn-sm" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                          </div>
                          
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                            <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                          </div>
                          <div class="btn-group">
                            <a class="btn btn-default btn-sm" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                            <a class="btn btn-default btn-sm" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                          </div>
                          <input type="text" class="form-control-trans pull-left" data-edit="inserttext"  id="voiceBtn" x-webkit-speech="" style="width:25px;height:28px;">
                        </div>
                        <div id="editor" class="form-control" style="overflow:scroll;height:450px;max-height:450px">
                          ${notice.content}
                        </div>
                      </div>
                    </div>
								<!--내용 끝-->

								<!--첨부파일-->
								<div class="line line-dashed line-lg pull-in"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">첨부파일</label>
									<div class="col-sm-10">
										<input type="file" class="filestyle" name="file" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s"> 
										이전파일 :
										<c:if test="${empty notice.fileName}" var="result">
											 -
											</c:if>
										<c:if test="${!result}">
											<a href='<c:url value="/file/down/${notice.file_id}.do" />'	class="btn btn-info"><i class="fa fa-notice"></i>${notice.fileName} 다운로드</a>
										</c:if>
									</div>
								</div>
								<!--첨부파일 끝-->

								<!--버튼그룹-->
								<div class="line line-dashed line-lg pull-in"></div>
								<div class="form-group">
									<div class="col-sm-4 col-sm-offset-2">
										<button type="button" onclick="eclick('cancel')" class="btn btn-default">
											<i class="fa fa-times"></i> 취소
										</button>
										<button type="button" onclick="eclick('mod')" class="btn btn-primary">
											<i class="fa fa-pencil"></i> 등록
										</button>
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