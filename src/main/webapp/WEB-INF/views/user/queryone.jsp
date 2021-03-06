<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-KR">
<head>
  	<jsp:include page="include-head.jsp" flush="false" />
</head>
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
	      		<h4>데이터베이스 통합 관리도구</h4>
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
	              <h3 class="col-6 prefix-5 headline clearfix txt-normal"><span class="bg">QueryOne</span><br>하나의 애플리케이션으로 15종의 DBMS에 접속하여<br>쿼리 실행 및 DB 관리 작업을 할 수 있는 제품 입니다.</h3>
	            </div>
	            <div class="func01">
	              <ul class="row">
	                <li class="col-2 prefix-1">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_01.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Multi-DB 지원</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_02.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Query 관리</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_03.svg'/>" alt="아이콘"></div>
	                  <p class="txt">Data 관리</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_04.svg'/>" alt="아이콘"></div>
	                  <p class="txt">DB 관리</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_05.svg'/>" alt="아이콘"></div>
	                  <p class="txt">SQL 튜닝</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_06.svg'/>" alt="아이콘"></div>
	                  <p class="txt">DB 모니터링</p>
	                </li>
	                <li class="col-2">
	                  <div class="ico"><img src="<c:url value='/resources/images/detail/q_ico_07.svg'/>" alt="아이콘"></div>
	                  <p class="txt">품질 관리</p>
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
	            <h3 class="headline"><span>QueryOne</span> 사용화면</h3>
	            <div class="func">
	              <ul class="row">
	                <li class="col-4 prefix-2">
	                  <img src="<c:url value='/resources/images/detail/queryone2-01.jpg'/>" width="100%" alt="SQL Editor 화면">
	                  <h4 class="txt-darkblue p-sm">SQL Editor</h4>
	                  <ul>
		                  <li class="txt-sm">SQL 편집 및 실행 기능</li>
		                  <li class="txt-sm">Bind 변수, SQL Formatting, 문법 검사, 실행 계획 등의 기본적인 기능 지원</li>
		                  <li class="txt-sm">자동 완성 기능과 Intellisence 기능 지원</li>
		                  <li class="txt-sm">SQL History와 개인 SQL 관리를 위한 Named SQL 제공</li>
		                  <li class="txt-sm">결과창 내에서 결과값 재가공 기능 제공(MAX, min, SUM, Pivot 기능 등)</li>
	                  </ul>
	                </li>   
	                <li class="col-4">
	                  <img src="<c:url value='/resources/images/detail/queryone2-02.jpg'/>" width="100%" alt="Space Manager, Security Manager 화면">
	                  <h4 class="txt-darkblue p-sm">Space Manager</h4>
	                  <ul>
		                  <li class="txt-sm">테이블 스페이스, 데이터 파일 등의 데이터 공간을 효율적으로 관리</li>
		                  <li class="txt-sm">전체공간(Total), 사용한 공간(Used), 남은 공간(Free) 등으로나누어 사용현황을 조회. 테이블스페이스의 파일 생성/변경/삭제가 가능</li>
	                  </ul>
	                  
	                  <h4 class="txt-darkblue p-sm">Security Manager</h4>
	                  <ul>
		                  <li class="txt-sm">User, Role 등의 사용자에 대한 정보를 조회 및 변경</li>
		                  <li class="txt-sm">User, Role등의 생성, 수정, 삭제 및 권한부여, 권한제거 등의 조작이 가능</li>
		                  <li class="txt-sm">User, Role등에 부여된 권한을 Object기준으로 조회가 가능</p>
	                  </ul>
	                </li>   
	                <li class="col-4">
	                  <img src="<c:url value='/resources/images/detail/queryone2-03.jpg'/>" width="100%" alt="Database Monitor, Session Monitor 화면">
	                  <h4 class="txt-darkblue p-sm">Database Monitor</h4>
	                  <ul>
		                <li class="txt-sm">DB내의 통계 데이터들을 차트로 확인</li>
		                  <li class="txt-sm">각 차트의 더블클릭으로 상세 내용 확인 가능</li>
	                  </ul>
	                  
	                  <h4 class="txt-darkblue p-sm">Session Monitor</h4>
	                  <ul>
	                    <li class="txt-sm">각 DB별로 세션 접속 상태를 조회 가능</li>
		                  <li class="txt-sm">상세 세션 정보 조회와 문제가 있는 세션의 접속을 끊을 수 있으며 최종 실행된 Query를 확인이 가능</li>
		                  <li class="txt-sm">일정 시간 간격으로 갱신하여 모니터링</li>
		                  
	                  </ul>
	                </li>
	              </ul>
	            </div>
	          </div>
	        </div>
	        <!-- //slide-2 -->
	    </div>
	    <!-- 끝: .content-02 -->
	    
	    <!-- 끝: .content-02 -->
	    <div class="content-02 h-auto">
	        <!-- slide-2 -->
	        <div class="slide-2 row bg-ltgrey">
	          <div class="col-10 prefix-3">
	            <h3 class="headline"><span>QueryOne</span> 세부 기능</h3>
	            <div class="func">
	              <table>
	              	<thead>
	              		<tr>
	              			<th>분류</th>
	              			<th>메뉴</th>
	              			<th>주요 기능</th>
	              		</tr>
	              	</thead>
	              	
	              	<tbody>
	              	<!-- query 관리 -->
	              		<tr>
	              			<th rowspan="4">Query 관리</th>
	              			<td rowspan="2">SQL Editor</td>
	              			<td>Auto Complete, Intelli-Sense, Bookmark, SQL Formatting</td>
	              		</tr>
	              		<tr>
	              			<td>실행 결과 조작, Filtering, Grouping, Pivot, Image Viewer</td>
	              		</tr>
	              		<tr>
	              			<td>PL/SQL Editor</td>
	              			<td>PL/SQL Debugging, Compile, Ref Cursor 지원</td>
	              		</tr>
	              		<tr>
	              			<td>Data Dictionary</td>
	              			<td>Dictionary 조회</td>
	              		</tr>
	              		
	              	<!-- query 관리 -->
	              	
	              	<!-- data 관리 -->
	              		<tr>
	              			<th rowspan="5">Data 관리</th>
	              			<td rowspan="2">Data Export</td>
	              			<td>text, csv xls(x) 포맷과 Script 기능 제공, Binary 포맷 지원</td>
	              		</tr>
	              		<tr>
	              			<td>대용량 데이터(4G 이상)의 경우 파일 분할 저장</td>
	              		</tr>
	              		<tr>
	              			<td>Data Import</td>
	              			<td>Bulk Insert(Oracle, MS-SQL) 지원</td>
	              		</tr>
	              		<tr>
	              			<td>Data Pump</td>
	              			<td>Oracle Client의 exp, imp Utility 지원</td>
	              		</tr>
	              		<tr>
	              			<td>Data Loader</td>
	              			<td>DBMS Client의 Loader 기능 지원</td>
	              		</tr>
	              	<!-- data 관리 -->
	              	
	              	<!-- 품질 관리 -->
	              		<tr>
	              			<th rowspan="2">Data 관리</th>
	              			<td>Data Compare</td>
	              			<td>Data 및 Script(Table, View등) 비교 및 동기화 구문 생성</td>
	              		</tr>
	              		<tr>
	              			<td>Script Generation</td>
	              			<td>Table, View, Procedure등 Object에 대한 Script 생성 기능</td>
	              		</tr>
	              	<!-- 품질 관리 -->
	              	
	              	<!-- sql 튜닝  -->
	              		<tr>
	              			<th rowspan="5">SQL 튜닝</th>
	              			<td>Top N SQL</td>
	              			<td>악성 쿼리 검색, 다양한 검색 조건 제공</td>
	              		</tr>
	              		<tr>
	              			<td>SQL Trace</td>
	              			<td>실시간 Trace 파일 분석, Secure FTP 지원</td>
	              		</tr>
	              		<tr>
	              			<td rowspan="2">Plan Editor</td>
	              			<td>예상 실행 계획, 런타임 실행 계획 조회</td>
	              		</tr>
	              		<tr>
	              			<td>Grid, Text, Tree 형태의 View 제공</td>
	              		</tr>
	              		<tr>
	              			<td>SQL Advisor</td>
	              			<td>오라클 SQL Tunning Advisor 기능 지원</td>
	              		</tr>
	              	<!-- sql 튜닝 -->
	              	
	              	<!-- DB 모니터링 -->
	              		<tr>
	              			<th rowspan="4">DB 모니터링</th>
	              			<td>Session Monitor</td>
	              			<td>Session Info, Process, I/O, Wait Event, All Cursor등 조회</td>
	              		</tr>
	              		<tr>
	              			<td>Transaction Monitor</td>
	              			<td>트랜잭션 모니터링 및 관리 도구 제공</td>
	              		</tr>
	              		<tr>
	              			<td>Lock Monitor</td>
	              			<td>Lock 모니터링 및 제거 기능 제공</td>
	              		</tr>
	              		<tr>
	              			<td>Database Monitor</td>
	              			<td>DB 리소스 사용량을 그래프로 실시간 표출</td>
	              		</tr>
	              	<!-- DB 모니터링 -->
	              	
	              	<!-- DB 관리 -->
	              		<tr>
	              			<th>DB 모니터링</th>
	              			<td>Space Manager</td>
	              			<td>DB 저장 공간 및 사용량 관리 기능</td>
	              		</tr>
	              	<!-- DB 관리 -->
	              	
	              	<!-- 브라우저 -->
	              		<tr>
	              			<th rowspan="2">브라우저</th>
	              			<td>Object Browser</td>
	              			<td>Object 정보 및 속성 조회, Script 출력 기능, 테이블 생성/수정 기능</td>
	              		</tr>
	              		<tr>
	              			<td>Templete Browser</td>
	              			<td>문법 작성 가이드 및 예제 제공</td>
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
	    
	    <!-- 끝: .content-02 -->
	    <div class="content-02 h-auto">
	        <!-- slide-2 -->
	        <div class="slide-2 row">
	          <div class="col-10 prefix-3">
	            <h3 class="headline"><span>QueryOne</span> 레퍼런스</h3>
	            <p class="txt-center">QueryOne은 50여 고객사에서 5,000여명이 사용하고 있는 DB관리 툴입니다.<br>QueryOne은 다양한 용도에 맞게 다양한 DBMS를 사용하는 시장에 상황을 위해 개발된 DB Tool입니다.</p>
	            <div class="func">
	              <img src="<c:url value='/resources/images/detail/client.png'/>" alt="고객:신한은행,라이나생명,동대문구,신한금융지주회사,삼성생명,현대라이프,양산시,신한금융투자,그랜드코리아레저,샘표,고양시,dgb생명,제주은행,저축은행중앙회,다우기,한국데이터진흥원,부산과기대,서울대,이화여대" width="100%">
	            </div>
	          </div>
	        </div>
	        <!-- //slide-2 -->
	    </div>
	    <!-- 끝: .content-02 -->
	    
        <!-- 시작: .q-2 -->
        <!-- <div class="col-12 prefix-2 q-2">
            <div class="col-5"><img src="images/content-1/database.png" width="100%" alt="지원되는 DB종류"></div>
            <div class="col-10 prefix-1">
                <h5>DB관리 기능통합 (Integrated Database Management)</h5>
                <p>
                    QueryOne은 기존 관리 도구와 달리 DBMS 독립적인 관리 도구입니다.<br>
                    QueryOne 으로 Oracle, MS-SQL, DB2, Sybase, My-SQL 등 여러 DBMS를 동시에 관리할 수 있습니다
                </p>
            </div>
        </div> -->
        <!-- 끝: .q-2 -->
          
        <!-- 시작: .q-1 -->
        <!-- <div class="col-16 q-1">
            <h5>QueryOne으로 SQL실행부터 DB관리까지 간편하게!</h5>
            <p>
                QueryOne은 데이터베이스에 접속하여 SQL를 실행하고 DB의 기능을 보다 편리하게 이용할 수 있도록 지원하는 DB 관리 도구입니다.<br>
                DB를 공부하는 학생부터 소프트웨어를 개발하는 개발자, DB관리자까지 QueryOne을 이용하여 DB를 관리해 보세요.
            </p>
        </div> -->
        <!-- 끝: .q-1 -->
          
        <!-- 시작: .q-3 -->
        <!-- <div class="q-3 row">
            <ul class="col-12 prefix-2 row">
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/01_Editor/cap01.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">1. SQL문 작성을 위한 SQL Editor</p>
                        <p>SQL Editor를 통하여 SQL 작성과 문서 편집 기능 그리고 SQL 실행 결과를 출력하여 편집 및 조작이 가능한 다양한 기능을 제공합니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/02_Browser/cap01.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">2. 스키마 구조의 유형별 관리를 위한 Object Browser</p>
                        <p>Object Browser를 통하여 Table, View, Procedure 등의 스키마 구조를 유형별로 분류하여 관리하실 수 있습니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/03_Export_Import/cap01.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">3. DB와 파일간 데이터 이동을 자유롭게</p>
                        <p>Data Export/Import 마법사는 DB에 저장된 대량의 데이터를 파일로 저장하거나 파일의 내용을 DB에 입력할 때 보다 간편하게 이용할 수 있도록 돕는 도구입니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/06_Diagnose/cap01.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">4. SQL 튜닝을 위한SQL Trace</p>
                        <p>SQL Trace는 DBMS에서 생성한 Trace 파일을 읽어, 다차원적인 분석을 시도합니다. 이는 단순 텍스트가 아닌 사용자 관점의 다양한 결과 화면을 제공합니다. (Oracle, Tibero 전용)</p>
                    </div>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/07_Monitor/cap01.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">5. Session 광리를 돕는 Session Monitor</p>
                        <p>Session Monitor는 현재 DB에 접속되어 있는 사용자 세션을감시하고 차단하는 등 관련 기능을 제공하는 모니터링 도구입니다. 특정 세션과 관련된 SQL문을 SQL Editor와 연동하는 기능도 내재되어 있습니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/07_Monitor/cap02.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">6. Lock 관리를 위한 Lock Monitor</p>
                        <p>Lock Monitor는 여러 세션 간 Lock Holder와 Waiter 상태를 트리 구조로 알기 쉽게 보여주고, 문제를 일으키는 세션을 KILL 하는 등 세션 관리를 위한 효율적인 기능을 제공합니다. (Oracle, Tibero 전용)</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/08_DBA/cap01.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">7. DB 용량 관리를 위한 Space Manager</p>
                        <p>Space Manager는 DBMS의 DISK 사용량을 물리적인 데이터 파일과 논리적인 테이블스페이스로 구분하여 관리하고, 데이터 파일과 테이블스페이스의 추가, 변경, 삭제 기능을 제공합니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/08_DBA/cap02.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">8.  계정 관리를 위한 Security Manager</p>
                        <p>Security Manager에서는 DB 계정을 생성하고 시스템 및 오브젝트 권한을 할당합니다. 여러 개의 권한을 롤(Role)로 묶어서 편리하게 관리할 수 도 있습니다. (DB2 제외)</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/07_Monitor/cap03.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">9. Database Monitor로 리소스 사용량을 한눈에</p>
                        <p>Database Monitor는 DB에서 사용하는 CPU 및 메모리, 논리적/물리적I/O 사용량, 대기 이벤트 발생현황 등을 실시간 그래프로 표출합니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                    <div class="col-6"><img src="images/tool/08_DBA/cap03.png" width="365" height="216" alt=""></div>
                    <div class="col-10">
                        <p class="title">10. 현재 DB 상태를 Health Check 보고서로</p>
                        <p>Health Check는 현재 데이터베이스의 메모리, I/O, Top N SQL 등논리적/물리적 자원 사용 현황을 보고서 형태로 제공합니다.</p>
                    </div>
                </li>
            </ul>
        </div> -->
        <!-- 끝: .q-3 -->
      </div>
    </div>
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>