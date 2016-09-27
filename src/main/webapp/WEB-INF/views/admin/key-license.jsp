<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <jsp:useBean id="now" class="java.util.Date"/>
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
    
    	  function eclick(pstr,liceNo){
			var f=document.adForm;
			switch (pstr){	
				case 'new':
					/* if (confirm("맞는 날짜입니까?")!=1) {return false;} */
					
					if(f.product_id.value =="제품ID"){
					   alert("제품아이디을 선택하세요");
					
					   return false;
					}
					if(!f.lice_key.value){
					   alert("라이선스 KEY 입력하세요");
					
					   return false;
					}
					
					f.action="<c:url value='/lice/write.do'/>";
					f.submit();	
					break;
				case 'mod':
					var1="f.createDate"+liceNo;
					var2 ="f.product_id"+liceNo;
					var3="f.lice_key"+liceNo;
					
					tstr = eval(var1);
				    tstr1 = eval(var2);
					tstr2 = eval(var3);
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
					   alert("라이선스 KEY를 입력하세요");
					   tstr2.focus();
					   return false;
					}
					tstr.disabled =false;
					f.action="<c:url value='/lice/updete.do?liceNo="+liceNo+"'/>";			
					f.submit();	
					break;
				case 'del':
					if (confirm("정말로 삭제하시겠습니까?")!=1) {return false;}
					f.action="<c:url value='/lice/delete.do?liceNo="+liceNo+"'/>";
					f.submit();
					break;
			}
		  }
		function onlyNumber(){ 
			if((event.keyCode<48)||(event.keyCode>57)) 
			event.returnValue=false; 
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
              <p>라이센스 키 관리</p>
            </header>
            
            <section class="scrollable wrapper w-f">
                <form action="" method="post" id="adForm" name="adForm" enctype="multipart/form-data">
                <input type="hidden" name="writer"	value="${sessionScope.USERID}" class="form-control"> 
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
                                <td><input type="date" name="createDate" value="<fmt:formatDate value="${now}" type="date" pattern="yyyy-MM-dd"/>" class="form-control" ></td>
                                <td><select name="product_id" class="form-control">
                                      
                                      <option selected="selected">제품ID</option>
                                      <c:forEach items="${proLists }" var="list" >
                                      	<option>${list.product_id }</option>
                                      	
                                      </c:forEach>
                                      </select>
                                </td>
                                <td><input type="text" name="lice_key" class="form-control"></td>
                                <td><button type="button" onclick="eclick('new','')" class="btn btn-default"><i class="fa fa-plus-circle"></i> 등록</button></td>
                            </tr>
										<c:choose>
											<c:when test="${empty lists }">
												<tr bgcolor="white" align="center">
													<td colspan="5">등록된 라이선스 KEY가 없어요</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${lists}" begin="0" end="9" var="list"
													varStatus="status">
													<tr>
														<td><input type="date" name="createDate${list.liceNo}" class="form-control"
															value="${list.createDate }"></td>
														<td><select name="product_id${list.liceNo}" class="form-control">
																 <c:forEach items="${proLists }" var="prolist" >
                                								      	<c:choose>
                                								      		<c:when test="${prolist.product_id eq list.product_id}">
                                								      		<option selected="selected">${prolist.product_id }</option>
                                								      		</c:when>
                                								      		<c:otherwise>
                                								      		<option >${prolist.product_id }</option>
                                								      		</c:otherwise>
                                								      	</c:choose>
                                								      	
                               										</c:forEach>
															
														</select></td>
														<td><input name="lice_key${list.liceNo}" type="text" class="form-control"
															value="${list.lice_key }"></td><!-- 6154675F183C44757C6A97C8E39E02E8 -->
														<td><button type="button" onclick="eclick('mod',${list.liceNo})" class="btn btn-info m-r-xs">
																<i class="fa fa-edit"></i> 수정
															</button>
															<button type="button" onclick="eclick('del',${list.liceNo})" class="btn btn-danger">
																<i class="fa fa-minus-circle"></i> 삭제
															</button></td>
													</tr>
												</c:forEach>

											</c:otherwise>
										</c:choose>
									</tbody>
	                </table>
                </form>
                  <h3>※유의사항※</h3>
            <h4>최신 제품ID에 맞는 라이센스를 등록하지 않으면 사용자에게 키를 발급 할 수 없습니다.</h4>
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
								<form action='<c:url value="/lice/search.do"/>' method="post" >
									<select name ="search_account" class="input-sm">
										<option value="0">제품ID</option>
										<option value="1">라이선스 KEY</option>
									</select>
									<div class="input-group">
							
										<input id="Search_input" type="text" name="search_text" class="input-sm form-control"
											placeholder="Search"> 
											<span class="input-group-btn">
											<button id="Search" class="btn btn-sm btn-default" type="submit">검색</button>
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