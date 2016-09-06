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
    <!--
		  function eclick(pstr,pval1){
			var f=document.myform;
			switch (pstr){	
				case 'new':
					if(!f.Product_ID.value){
					   alert("제품ID를 입력하세요");
					   f.Product_ID.focus();
					   return false;
					}
					if(!f.Product_Name.value){
					   alert("제품명을 입력하세요");
					   f.Product_Name.focus();
					   return false;
					}
					if(!f.up_file.value){
					   alert("다운로드파일을 입력하세요");
					   f.up_file.focus();
					   return false;
					}
					f.inc.value = pstr;
					f.action="product_manager_proc.php";
					f.encoding = "multipart/form-data"
					f.submit();	
					break;
				case 'mod':
					tstr = eval("f.Product_ID"+pval1);
				    tstr1 = eval("f.Product_Name"+pval1);
					tstr2 = eval("f.up_file"+pval1);
					if(!tstr.value)	{
					   alert("제품ID를 입력하세요");
					   tstr.focus();
					   return false;
					}
					if(!tstr1.value)	{
					   alert("제품명을 입력하세요");
					   tstr1.focus();
					   return false;
					}
					if(!tstr2.value){
					   alert("다운로드파일을 입력하세요");
					   tstr2.focus();
					   return false;
					}
					f.inc.value = pstr;
					f.Pro_No.value=pval1;
					f.action="product_manager_proc.php";
					f.encoding = "multipart/form-data"
					f.submit();	
					break;
				case 'del':
					if (confirm("정말로 삭제하시겠습니까?")!=1) {return false;}
					f.inc.value = pstr;
					f.Pro_No.value=pval1;
					f.submit();
					break;
			}
		  }
		function onlyNumber(){ 
			if((event.keyCode<48)||(event.keyCode>57)) 
			event.returnValue=false; 
		}
	  //-->

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
              <p>제품분류 키 관리</p>
            </header>
            
            <section class="scrollable wrapper w-f">
                <form action="" method="post" id="adForm" enctype="multipart/form-data">
	                <table class="admin">
	                    <colgroup><col style="width:15%"><col style="width:15%"><col style="width:50%"><col style="width:20%"></colgroup>
	                    <thead>
                            <tr>
                                <th>제품ID</th>
                                <th>제품명</th>
                                <th>다운로드 파일</th>
                                <th>관리</th>
                            </tr>
                        </thead>
                        
                        <tbody>                
                            <tr><!--   한 페이지에 10개씩 보여준다    -->  
                                <td><input type="text" class="form-control"></td>
                                <td><input type="text" class="form-control"></td>
                                <td><input type="file" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s"></td>
                                <td><button type="submit" class="btn btn-default"><i class="fa fa-plus-circle"></i> 등록</button></td>
                            </tr>
										<c:choose>
											<c:when test="${empty notiLists }">
												<tr bgcolor="white" align="center">
													<td colspan="4">등록된 메모가 없어요</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${notiLists}" begin="0" end="9" var="list"
													varStatus="status">
													<tr>
														<td><input type="text" class="form-control"
															value="Q01" disabled></td>
														<td><input type="text" class="form-control"
															value="QueryOne"></td>
														<td><input type="file" class="filestyle"
															data-icon="false" data-classButton="btn btn-default"
															data-classInput="form-control inline input-s"></td>
														<td><button type="submit" class="btn btn-info m-r-xs">
																<i class="fa fa-edit"></i> 수정
															</button>
															<button type="submit" class="btn btn-danger">
																<i class="fa fa-minus-circle"></i> 삭제
															</button></td>
													</tr>
												</c:forEach>

											</c:otherwise>
										</c:choose>

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