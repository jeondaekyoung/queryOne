<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
          <div class="col-5"><img src="<c:url value='/resources/images/content-1/database.png'/>" width="100%" alt="지원되는 DB종류"></div>
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
          <h5>Tool 기능 소개</h5>
            <li class="row">                    
                <div class="col-16">
                  <p class="title">Editor</p>
                </div>
                <div class="col-16">
                  <div class="col-4">
                    <img src="<c:url value='/resources/images/tool/01_Editor/cap01.png'/>" width="100%" alt="SQL Editor">
                    
                    <p>SQL Editor</p>
                    <p>SQL 작성과 문서 편집 기능 그리고 실행 결과를 출력하여 편집 및 조작 가능한 다양한 기능을 제공합니다.</p>
                  </div>
                  <div class="col-4">
                    <img src="<c:url value='/resources/images/tool/01_Editor/cap02.png'/>" width="100%" alt="PL/SQL Editor">
                    
                    <p>PL/SQL Editor</p>
                    <p>PL/SQL 문장의 편집, 실행, 디버그 및 조작 가능한 다양한 기능을 제공합니다.</p>
                  </div>
                  <div class="col-4">
                    <img src="<c:url value='/resources/images/tool/01_Editor/cap03.png'/>" width="100%" alt="Plan Editor">
                    
                    <p>Plan Editor</p>
                    <p>SQL Editor의 실행 계획을 좀 더 다양한 형태로 조회하며 런타임 실행계획을 따로 조회하여 서로 비교할 수 있습니다.</p>
                  </div>
                </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                <p class="title">Browser</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/02_Browser/cap01.png'/>" width="100%" alt="Object Browser">
                  
                  <p>Object Browser</p>
                  <p>Table, View, Procedure 등의 스키마 구조를 유형별로 분류하여 관리할 수 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/02_Browser/cap02.png'/>" width="100%" alt="Template Browser">
                  
                  <p>Template Browser</p>
                  <p>각 DBMS에 정의된 SQL Function, PL/SQL 등의 설명, 예제, 문법을 조회하여 보다 편리한 질의 작성환경을 제공합니다.</p>
                </div>
              </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                <p class="title">Export/Import</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/03_Export_Import/cap01.png'/>" width="100%" alt="Data Export/Import">
                  
                  <p>Data Export/Import</p>
                  <p>DB에 저장된 대량의 데이터를 파일로 저장하거나 파일의 내용을 DB에 입력할 때 보다 간편하게 이용할 수 있도록 돕는 도구입니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/03_Export_Import/cap02.png'/>" width="100%" alt="Data Pump">
                  
                  <p>Data Pump</p>
                  <p>Oracle imp, exp 유틸리티를 UI로 구성하여 데이터 입/출력을 편리하게 사용할 수 있도록 지원하는 도구입니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/03_Export_Import/cap03.png'/>" width="100%" alt="Data Loader">
                  
                  <p>Data Loader</p>
                  <p>Oracle Client의 Data Loader로 특정 Object에 업로드 하는 기능을 사용자 관점에서 제공합니다. </p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/03_Export_Import/cap04.png'/>" width="100%" alt="Data Migration">
                  
                  <p>Data Migration</p>
                  <p>상이한 두 database 간의 Table, data, 제약조건 등을 이전하는 기능을 제공합니다.</p>
                </div>
              </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                <p class="title">Dictionary</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/04_Dictionary/cap01.png'/>" width="100%" alt="Data Dictionary">
                  
                  <p>Data Dictionary</p>
                  <p>DBMS의 시스템 카탈로그 뷰를 조건절, 정렬을 통해 조회하는 기능입니다. 보다 빠르게 원하는 정보를 찾을 수 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/04_Dictionary/cap02.png'/>" width="100%" alt="Script Generation">
                  <p>Script Generation</p>
                  <p>Database내에 존재하는 Object들의 모든 생성 Script를 생성해주는 기능을 제공합니다.</p>
                </div>
              </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                <p class="title">Data Integrity</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/05_Data_Integrity/cap01.png'/>" width="100%" alt="Data Compare">
                  
                  <p>Data Compare</p>
                  <p>각 단일 Object 및 Table/View Data를 조회, 비교하여 서로 다른 객체 구조 및 Data를 비교 조회할 수 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/05_Data_Integrity/cap02.png'/>" width="100%" alt="Data Quality">
                  
                  <p>Data Quality</p>
                  <p>테이블과 컬럼에 데이터 값을 분석하여 데이터의 품질을 진단할 수 있습니다.</p>
                </div>
              </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                <p class="title">Diagnose</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/06_Diagnose/cap01.png'/>" width="100%" alt="Top N SQL">
                  
                  <p>Top N SQL</p>
                  <p>Database내에 저장된 Query에 대해 여러 검색 조건을 적용하여 악성 Query를 조회할 수 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/06_Diagnose/cap02.png'/>" width="100%" alt="SQL Advisor">
                  <p>SQL Advisor</p>
                  <p>Oracle Database 직접 제공하는 SQL 튜닝 서비스로, SQL Profile를 이용하여 Query 성능을 향상시키고 Report 와 Script 기능을 제공하여 Query의 문제점과 개선할 점을 제안합니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/06_Diagnose/cap03.png'/>" width="100%" alt="SQL Trace">
                  <p>SQL Trace</p>
                  <p>DBMS에서 생성한 Trace 파일을 읽어, 다차원적인 분석을 시도합니다. 이는 단순 텍스트가 아닌 사용자 관점의 다양한 결과 화면을 제공합니다. (Oracle, Tibero 전용)</p>
                </div>
              </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                <p class="title">Monitor</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/07_Monitor/cap01.png'/>" width="100%" alt="Session Monitor">
                  
                  <p>Session Monitor</p>
                  <p>현재 DB에 접속되어 있는 사용자 세션을 감시하고 차단하는 등 관련 기능을 제공하는 모니터링 도구입니다. 특정 세션과 관련된 SQL문을 Plan Editor와 연동하는 기능도 내재되어 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/07_Monitor/cap02.png'/>" width="100%" alt="Transaction Monitor">
                  <p>Transaction Monitor</p>
                  <p>DB에서 발생하는 세션의 트랜잭션을 모니터링 합니다. 관련 기능은 Session Monitor의 기능과 유사합니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/07_Monitor/cap03.png'/>" width="100%" alt="Lock Monitor">
                  <p>Lock Monitor</p>
                  <p>여러 세션 간 Lock Holder와 Waiter 상태를 트리 구조로 알기 쉽게 보여주고, 문제를 일으키는 세션을 KILL 하는 등 세션 관리를 위한 효율적인 기능을 제공합니다.(Oracle, Tibero 전용)</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/07_Monitor/cap04.png'/>" width="100%" alt="Database Monitor">
                  <p style="margin-top: 5.3em;">Database Monitor</p>
                  <p>DB에서 사용하는 CPU 및 메모리, 논리적/물리적I/O 사용량, 대기 이벤트 발생현황 등을 실시간 그래프로 표출합니다.</p>
                </div>
              </div>
            </li>
            <li class="row">                    
              <div class="col-16">
                  <p class="title">DBA</p>
              </div>
              <div class="col-16">
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap01.png'/>" width="100%" alt="Space Manager">
                  
                  <p>Space Manager</p>
                  <p>DBMS의 DISK 사용량을 물리적인 데이터 파일과 논리적인 테이블스페이스로 구분하여 관리하고, 데이터 파일과 테이블스페이스의 추가, 변경, 삭제 기능을 제공합니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap02.png'/>" width="100%" alt="Security Manager">
                  <p>Security Manager</p>
                  <p>DB 계정을 생성하고 시스템 및 오브젝트 권한을 할당합니다. 여러 개의 권한을 롤(Role)로 묶어서 편리하게 관리할 수 도 있습니다. (DB2 제외)</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap03.png'/>" width="100%" alt="Health Check">
                  <p>Health Check</p>
                  <p>현재 데이터베이스의 메모리, I/O, Top N SQL 등 논리적/물리적 자원 사용 현황을 보고서 형태로 제공합니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap04.png'/>" width="100%" alt="AWR Report">
                  <p>AWR Report</p>
                  <p>AWR(Automatic Workload Repository) Report 는 사용자가 특정 지점(Snapshot)에 혹은 특정 시간대의 DB 작업에 대한 성능 분석을 위해 사용되며 이를 이용하여 성능 분석, 구조 개선, 문제점 해결에 이용 할 수 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap05.png'/>" width="100%" alt="SAlert Log Viewer">
                  
                  <p>Alert Log Viewer</p>
                  <p>Oracle Database 는 운영 시 발생하는 모든 Event를 Alert 로그 파일에 기록합니다. DBA 또는 엔지니어는 데이터베이스가 운영되는 동안 항상 Alert Log 파일을 주시, 분석하여 특별한 문제가 없는지 Alert Log Viewer 로 쉽게 확인하고 분석합니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap06.png'/>" width="100%" alt="LogMiner">
                  <p>LogMiner</p>
                  <p>Oracle Database의 log를 추적하여 Data를 원상 복구하는 기능을 제공합니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap07.png'/>" width="100%" alt="Asm Manager">
                  <p>Asm Manager</p>
                  <p>ASM(Automatic Storage Management)이 구축된 환경의 DB의 정보(disk, instance)를 관리할 수 있습니다.</p>
                </div>
                <div class="col-4">
                  <img src="<c:url value='/resources/images/tool/08_DBA/cap08.png'/>" width="100%" alt="Analyze Manager">
                  <p>Analyze Manager</p>
                  <p>Table, Index, Cluster와 같은 Segment Object의 통계 정보를 생성합니다. 다양한 생성 방법을 선택 할 수 있으며 Script를 별도로 생성할 수 있습니다.</p>
                </div>
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