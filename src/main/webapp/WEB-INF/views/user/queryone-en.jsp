<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-KR">
<head>
  	<jsp:include page="include-head.jsp" flush="false" />
</head>
<script>
var bFlag = false;
function eclick(pstr,key) {
	switch (pstr) {
	case 'pro':
		alert("Thank you for downloading. Please accept the License key.");
		bFlag =true;
		break;
	case 'lice':
		if(key=="null"){
			alert("License key is being prepared.");
			return;
		}
		
			$("#myModal").css({'display' : 'block'});
			$("#modal_value").html(key);
		
		break;
	case 'nof':
		alert("Product files are being prepared.");
	}
	
}
function modal_button(){
	$("#myModal").css({'display' : 'none'});
	var param = {
			lice_key : "${licence.lice_key }"
		};
		$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath}/lice/history/inNup.do',
			cache : false,
			data : param,
			timeout : 60000
		}); 
}
</script>
<body class="container show-grid">

  <!-- 시작: .page-header -->
  <jsp:include page="include-top.jsp" flush="false" />
  <!-- 끝: .page-header -->

  <!-- 시작: .page-container -->
  <div class="page-container">
    <!-- 시작: .content-01 -->
    <div class="detail-01 queryone">
      <div class="top">
      	<div class="row">
	      	<div class="col-12 prefix-2">
	      		<h3>QueryOne</h3>
	      		<h4>Database Total Managing Tool</h4>
	      	</div>
      	</div>
      </div>
      <div class="row">
      <!-- 시작: .content-02 -->
	    <div class="content-02 carousel slide carousel-fade auto panel-body" id="b-fade">
	      <div class="slider">
	       <ul class="carousel-inner">
	        <!-- slide-1 -->
	        <li class="slide slide-1 item active">
	          <div>
	            <div class="row script txt-white clearfix">
	              <h3 class="col-6 prefix-5 headline clearfix txt-normal"><span class="bg">QueryOne</span><br>QueryOne is the solution to excute query and manage DB for 15 DBMS</h3>
	            </div>
	            <div class="func01">
	              <ul class="row">
	                <li class="col-2 prefix-1">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_01.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Multi-DB</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_02.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Managing Query</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_03.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Managing Data</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_04.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Managing DB</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_05.svg'/>" alt="아이콘"></div>
	                  <p class="txt">SQL Tuning</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_06.svg'/>" alt="아이콘"></div>
	                  <p class="txt">DB Monitoring</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_07.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Quality Management</p>
	                </li>
	              </ul>
	            </div>
	          </div>
	        </li>
	        <!-- //slide-1 -->
	        
	       </ul>
	      </div>
	    </div>	    
	    <!-- 끝: .content-02 -->
	    
	    <div class="content-02 h-auto">
	        <!-- slide-2 -->
	        <div class="slide-2 row">
	          <div class="col-16">
	            <h3 class="headline"><span>QueryOne</span> running page</h3>
	            <div class="func">
	              <ul class="row">
	                <li class="col-4 prefix-2">
	                  <img src="<c:url value='/resources/images/detail/queryone2-01.jpg'/>" width="100%" alt="SQL Editor">
	                  <h4 class="txt-darkblue p-sm">SQL Editor</h4>
	                  <ul>
		                  <li class="txt-sm">Sql Editing and Executing</li>
		                  <li class="txt-sm">Bind Variable, Sql Formatting, Syntax Check, Explain Plan</li>
		                  <li class="txt-sm">Auto Complete, Intellisence</li>
		                  <li class="txt-sm">SQL History and Named SQL for Managing personal SQL</li>
		                  <li class="txt-sm">Output Remanufacture(ex. Max, Min, Sum, Pivot)</li>
	                  </ul>
	                </li>   
	                <li class="col-4">
	                  <img src="<c:url value='/resources/images/detail/queryone2-02.jpg'/>" width="100%" alt="Space Manager, Security Manager">
	                  <h4 class="txt-darkblue p-sm">Space Manager</h4>
	                  <ul>
		                  <li class="txt-sm">Economically managing Data space like Tablespace and Data file</li>
		                  <li class="txt-sm">Quering Usage - Total, Used, Free</li>
		                  <li class="txt-sm">Support Tablespace File Managing - Create, Alter and Drop</li>
	                  </ul>
	                  
	                  <h4 class="txt-darkblue p-sm">Security Manager</h4>
	                  <ul>
		                  <li class="txt-sm">Quering and Editing User info - User, Role</li>
		                  <li class="txt-sm">Granting and Revoking Privilege - User, Role</li>
		                  <li class="txt-sm">Quering User's Object Privilege</li>
	                  </ul>
	                </li>   
	                <li class="col-4">
	                  <img src="<c:url value='/resources/images/detail/queryone2-03.jpg'/>" width="100%" alt="Database Monitor, Session Monitor">
	                  <h4 class="txt-darkblue p-sm">Database Monitor</h4>
	                  <ul>
		                <li class="txt-sm">Show DB Statistics Data by Chart</li>
		                <li class="txt-sm">Show Detail DB Statistic</li>
	                  </ul>
	                  
	                  <h4 class="txt-darkblue p-sm">Session Monitor</h4>
	                  <ul>
	                    <li class="txt-sm">Quering Session by each DB</li>
		                <li class="txt-sm">Show Detail Session</li>
		                <li class="txt-sm">Disconnecting problematic Session</li>
		                <li class="txt-sm">Check the last executed query</li>	                  
	                  </ul>
	                </li>
	              </ul>
	            </div>
	          </div>
	        </div>
	        <!-- //slide-2 -->
	    </div>
	    <!-- 끝: .content-02 -->
	    
	    <div class="content-02 h-auto">
	        <!-- slide-2 -->
	        <div class="slide-2 row bg-ltgrey">
	          <div class="col-10 prefix-3">
	            <h3 class="headline"><span>QueryOne</span> detail function</h3>
	            <div class="func">
	              <table>
	              	<thead>
	              		<tr>
	              			<th></th>
	              			<th>Tool</th>
	              			<th>Main Function</th>
	              		</tr>
	              	</thead>
	              	
	              	<tbody>
	              	<!-- query 관리 -->
	              		<tr>
	              			<th rowspan="4">Managing Query</th>
	              			<td rowspan="2">SQL Editor</td>
	              			<td>Auto Complete, Intelli-Sense, Bookmark, SQL Formatting</td>
	              		</tr>
	              		<tr>
	              			<td>Output Remanufacture, Filtering, Grouping, Pivot, Image Viewer</td>
	              		</tr>
	              		<tr>
	              			<td>PL/SQL Editor</td>
	              			<td>PL/SQL Debugging, Compile, Ref Cursor</td>
	              		</tr>
	              		<tr>
	              			<td>Data Dictionary</td>
	              			<td>Quering Dictionary</td>
	              		</tr>
	              		
	              	<!-- query 관리 -->
	              	
	              	<!-- data 관리 -->
	              		<tr>
	              			<th rowspan="5">Managing Data</th>
	              			<td rowspan="2">Data Export</td>
	              			<td>Support text, csv xls(x) Format and Script Function, Support Binary Format</td>
	              		</tr>
	              		<tr>
	              			<td>Dividing saving for Massive data(Over 4G)</td>
	              		</tr>
	              		<tr>
	              			<td>Data Import</td>
	              			<td>Bulk Insert(Oracle, MS-SQL)</td>
	              		</tr>
	              		<tr>
	              			<td>Data Pump</td>
	              			<td>Oracle Client exp, imp Utility</td>
	              		</tr>
	              		<tr>
	              			<td>Data Loader</td>
	              			<td>DBMS Client Loader</td>
	              		</tr>
	              	<!-- data 관리 -->
	              	
	              	<!-- 품질 관리 -->
	              		<tr>
	              			<th rowspan="2">Managing Data</th>
	              			<td>Data Compare</td>
	              			<td>Data Script( Ex.Table, View)</td>
	              		</tr>
	              		<tr>
	              			<td>Script Generation</td>
	              			<td>Generating Object Script - Etc.Table, View, Procedure</td>
	              		</tr>
	              	<!-- 품질 관리 -->
	              	
	              	<!-- sql 튜닝  -->
	              		<tr>
	              			<th rowspan="5">Tuning SQL</th>
	              			<td>Top N SQL</td>
	              			<td>Search vicious query, Suppling various search condition</td>
	              		</tr>
	              		<tr>
	              			<td>SQL Trace</td>
	              			<td>Analyzing Real time Trace File, Secure FTP</td>
	              		</tr>
	              		<tr>
	              			<td rowspan="2">Plan Editor</td>
	              			<td>Explain Plan , Quering Runtime Explain Plan</td>
	              		</tr>
	              		<tr>
	              			<td>Support Grid, Text and Tree View</td>
	              		</tr>
	              		<tr>
	              			<td>SQL Advisor</td>
	              			<td>Oracle SQL Tunning Advisor</td>
	              		</tr>
	              	<!-- sql 튜닝 -->
	              	
	              	<!-- DB 모니터링 -->
	              		<tr>
	              			<th rowspan="4">DB monitoring</th>
	              			<td>Session Monitor</td>
	              			<td>Quering Session Info, Process, I/O, Wait Event and All Cursor</td>
	              		</tr>
	              		<tr>
	              			<td>Transaction Monitor</td>
	              			<td>Support Transaction monitoring and management tool</td>
	              		</tr>
	              		<tr>
	              			<td>Lock Monitor</td>
	              			<td>Lock Monitoring and Removing tool</td>
	              		</tr>
	              		<tr>
	              			<td>Database Monitor</td>
	              			<td>Show DB resource usage by real time graph</td>
	              		</tr>
	              	<!-- DB 모니터링 -->
	              	
	              	<!-- DB 관리 -->
	              		<tr>
	              			<th>DB monitoring</th>
	              			<td>Space Manager</td>
	              			<td>Managing DB spcae and Usage</td>
	              		</tr>
	              	<!-- DB 관리 -->
	              	
	              	<!-- 브라우저 -->
	              		<tr>
	              			<th rowspan="2">Browser</th>
	              			<td>Object Browser</td>
	              			<td>Quering Object info and property, Generating Script, Create / Alter/ Drop Object - Etc.Table, Index, View</td>
	              		</tr>
	              		<tr>
	              			<td>Templete Browser</td>
	              			<td>Syntax Guide and Example</td>
	              		</tr>
	              	<!-- 브라우저 -->
	              	</tbody>
	              </table>
	            </div>
	          </div>
	        </div>
	        <!-- //slide-2 -->
	    </div>
	    <!-- 끝: .content-02 -->
	    
	    <div class="content-02 h-auto">
	        <!-- slide-2 -->
	        <div class="slide-2 row">
	          <div class="col-10 prefix-3">
	            <h3 class="headline"><span>QueryOne</span> Reference</h3>
	            <p class="txt-center">QueryOne is used by 5000 Users and 50 client companies</p>
	            <div class="func">
	              <img src="<c:url value='/resources/images/detail/client.png'/>" alt="customer:Bank, University, City Office, Insurance Co., Financial Co., GKL, Sampyo, Daou, K Data" width="100%">
	            </div>
	          </div>
	        </div>
	        <!-- //slide-2 -->
	    </div>
	    <!-- 끝: .content-02 -->
	    
	    <!-- 다운로드 -->
	    <div class="wrapper">
	      <!-- 시작: .q-2 -->
          <div class="col-12 prefix-2 q-2">
	        <h3 class="headline"><span style="text-align:center;color:#4C67AD;display:inline-block;width:100%">Download</span></h3>
	    	<div class="script txt-center">
              <p class="subline">QueryOne provides a <span>100-day free</span> trial license.<br>The Data Server Provider is built-in, so you do not need to install a separate DB client.</p>
            </div>
            <div class="down-btn-group">
              <ul class="row">
                <li class="col-3 prefix-5 btn01">
                  <c:choose>
                	<c:when test="${empty product }">
                	  <button type="button" onclick="eclick('nof','')" >Download<br>QueryOne</button>
                	</c:when>
                	<c:otherwise>
                	  <a href="<c:url value='/file/down/${product.file_id}'/>"><button type="button" onclick="eclick('pro','')" >Download<br>QueryOne</button></a>
                	</c:otherwise>
                  </c:choose>                  
                </li>
                <li class="col-3 btn02">
                  <c:if test="${empty licence}" var="lice_result">
                 	<button type="button" onclick="eclick('lice','null'); ">Download<br>License Key</button>	
                  </c:if>
                  <c:if test="${not lice_result}">                    
                  	  <button type="button" onclick="eclick('lice','${licence.lice_key}'); ">Download<br>License Key</button>            
                  </c:if>                  
                </li>
              </ul>
            </div>
          </div>
       </div>
       <!-- 끝: .q-2 -->
            
       <!-- The Modal -->
 	   <div id="myModal" class="modal">
		   <!-- Modal content --> 
		   <div class="modal-content" id="modal">
		     <h3>License Key is downloaded.</h3>
		     <p id="modal_value">License Key</p>
		     <div class="row">
		       <a id="inNup">
		         <button type="button" id="modal_button" onclick="modal_button()" class="col-4 prefix-6 ok">OK</button>
		       </a>
		     </div>
		   </div>		
		</div>
      </div>
      <!-- 다운로드 -->
      
    </div>
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>