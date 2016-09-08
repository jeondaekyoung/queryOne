<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <!-- 시작: .q-2 -->
        <div class="col-12 prefix-2 q-2">
            <div class="col-5"><img src="images/content-1/database.png" width="100%" alt="지원되는 DB종류"></div>
            <div class="col-10 prefix-1">
                <h5>DB관리 기능통합 (Integrated Database Management)</h5>
                <p>
                    QueryOne은 기존 관리 도구와 달리 DBMS 독립적인 관리 도구입니다.<br>
                    QueryOne 으로 Oracle, MS-SQL, DB2, Sybase, My-SQL 등 여러 DBMS를 동시에 관리할 수 있습니다
                </p>
            </div>
        </div>
        <!-- 끝: .q-2 -->
          
        <!-- 시작: .q-1 -->
        <div class="col-16 q-1">
            <h5>QueryOne으로 SQL실행부터 DB관리까지 간편하게!</h5>
            <p>
                QueryOne은 데이터베이스에 접속하여 SQL를 실행하고 DB의 기능을 보다 편리하게 이용할 수 있도록 지원하는 DB 관리 도구입니다.<br>
                DB를 공부하는 학생부터 소프트웨어를 개발하는 개발자, DB관리자까지 QueryOne을 이용하여 DB를 관리해 보세요.
            </p>
        </div>
        <!-- 끝: .q-1 -->
          
        <!-- 시작: .q-3 -->
        <div class="q-3 row">
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
        </div>
        <!-- 끝: .q-3 -->
      </div>
    </div>
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>