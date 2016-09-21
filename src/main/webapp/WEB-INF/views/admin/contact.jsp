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
        $("li.menu-5").addClass("active");
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
							<form action="" method="post" id="adForm"
								enctype="multipart/form-data">
								<!-- .accordion -->
				                  <div class="panel-group m-b" id="accordion2">
				                    <div class="panel panel-default">
				                      <div class="panel-heading">
				                        <a class="accordion-toggle clearfix" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">                          
				                            <div class="col-sm-11">안녕하세요. 문의합니다.<br><span>2016-05-08</span></div>
				                            <div class="col-sm-1 check"><i class="fa fa-check-square-o"></i>답변완료</div>
				                        </a>
				                      </div>
				                      <div id="collapseOne" class="panel-collapse in">
				                        <div class="panel-body text-sm">
				                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
				                        </div>
				                      </div>
				                    </div>
				                    <div class="panel panel-default">
				                      <div class="panel-heading">
				                        <a class="accordion-toggle clearfix" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
				                          <div class="col-sm-11">안녕하세요. 문의합니다.<br><span>2016-05-08</span></div>
				                          <div class="col-sm-1"><i class="fa fa-square-o"></i>답변대기</div>
				                        </a>
				                      </div>
				                      <div id="collapseTwo" class="panel-collapse collapse">
				                        <div class="panel-body text-sm">
				                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
				                        </div>
				                      </div>
				                    </div>
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
								<form action='<c:url value="/down/search.do"/>' method="post" >
									<select name ="search_account" class="input-sm">
										<option value="0">제목</option>
										<option value="1">내용</option>
										<option value="2">제목+내용</option>
									</select>
									<div class="input-group">
							
										<input type="text" name="search_text" class="input-sm form-control"
											placeholder="Search"> <span class="input-group-btn">
											<button class="btn btn-sm btn-default" type="submit">검색</button>
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