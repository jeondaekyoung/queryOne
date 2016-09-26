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
    <div class="detail-01 queryone-s">
      <div class="top">
      	<div class="row">
	      	<div class="col-12 prefix-2">
	      		<h3>QueryOne S</h3>
	      		<h4>Database End-point Control(DEC)</h4>
	      	</div>
      	</div>
      </div>
      <div class="row">
        <!-- 시작: .q-2 -->
        <div class="q-2">
            <h5 class="col-12 prefix-2">Database End-point Control(DEC)의 필요성</h5>
            <ul class="row">
            	<li class="col-4 prefix-2">
            		<img src="<c:url value='/resources/images/detail/img00.jpg'/>" alt="보안 필요성 1" height="96">
            		<p class="title">정보 유출 및 보안사고 급증</p>
            		<p>IT-아웃소싱 및 ON-SITE 개발자 증가<br>
            			평생 직장 개념 붕괴로 인한 피고용자의 도덕적 해이<br>
            			전체 보안 사고중 내부자에 의한 정보 유출 비율 70%이상
            		</p>
            	</li>
            	<li class="col-4">
            		<img src="<c:url value='/resources/images/detail/img01.jpg'/>" alt="보안 필요성 2" height="96">
            		<p class="title">DEC 관련 법률 및 규정 제정 및 확대</p>
            		<p>전자금융  감독규정 13조, 15조, 27조, 28조, 전자금융감독규정 시행세칙 22조, 개인정보보호법(점검항목)</p>
            	</li>
            	<li class="col-4">
            		<img src="<c:url value='/resources/images/detail/img02.jpg'/>" alt="보안 필요성 3" height="96">
            		<p class="title">결재를 기반으로 DB작업을 수행할 수 있는<br>통합보안 DB Tool 필요</p>
            		<p>DB 사용 Application상에서 이뤄지는 파일 다운로드, 클립보드 카피에 대한 관리 필요성 증대 </p>
            	</li>
           	</ul>
           	<ul class="row">
            	<li class="col-4 prefix-2">
            		<img src="<c:url value='/resources/images/detail/img03.jpg'/>" alt="보안 필요성 4" height="96">
            		<p class="title">원장변경관리에 대한 필요성 증대 <span class="d-block txt-sm">(DB 원장에 대한 DML 관리의 프로세스화)</span></p>
            		<p>원장 변경시 요구되는 결재 수준을 만족 시키며, 수행자를 지정 관리 할 수 있도록 구현해야 하는 상황에 적합한 솔루션</p>
            	</li>
            	<li class="col-4">
            		<img src="<c:url value='/resources/images/detail/img04.jpg'/>" alt="보안 필요성 5" height="96">
            		<p class="title">DB 계정 관리 필요</p>
            		<p>QueryOne S는 사용자에게, DB계정을 노출 시키지 않고, QueryOne S 의 계정으로 사용 DB를 매칭시켜주는 방법을 통해 계정을 관리함으로써, DB계정 패스워드 주기적 변경, 패스워드 분배 관리 등의 번거로움 없이 사용 가능</p>
            	</li>
            	<li class="col-4">
            		<img src="<c:url value='/resources/images/detail/img05.jpg'/>" alt="보안 필요성 6" height="96">
            		<p class="title">DB Tool 기능 분배</p>
            		<p>QueryOne S는 DB Tool 기능을 세분화 시켜, 인원별 그룹별 분배가 가능</p>
            	</li>
            </ul>
        </div>
        <!-- 끝: .q-2 -->

        <!-- 시작: .q-1 -->
      	<div class="row q-1">
      		<div class="col-10 prefix-3 news">
	      		<h5>Queryone S의 특징?</h5>
	      		<p>QueryOne S는 15종의 DBMS를 지원하는 DB Tool인 QueryOne을 기반으로 DB 사용에 대한 결재솔루션입니다.</p>
	      		<p class="txt-darkblue">DB Tool 입장에서는 수평적으로는 14종의 DBMS를 지원하지만, 단순 ODBC 커넥션 기반 Editor수준의 Tool이 아닌, 각 DBMS에서 제공하는 특별 기능을 지원합니다. 예를 들자면, Oracle의 PL/SQL Editor, 튜닝을 위한 SQL Advisor, Top N SQL, Health Check 리포트 등 타 상용 DB Tool 기능 이상을 제공합니다.
					<br>또한 Multi-DBMS환경에 필요한 이기종 DBMS간 데이터 마이그레이션 기능을 제공하며, 간단하게 테스트 데이터 변환 기능도 제공합니다.</p>
	      		<p>그리고, QueryOne S의 보안 및 관리적인 특징은 크게 6가지로 분류 할 수 있습니다.</p>
	      		
	      		<div class="panel-group" id="accordion2">
		            <div class="panel panel-default">
		              <div class="panel-heading">
		                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
		                  <span>1) DBMS 계정 관리의 편의성을 제공합니다.</span>
		                </a>
		              </div>
		              <div id="collapseOne" class="panel-collapse collapse">
		                <div class="panel-body col-14 prefix-2">
		                	QueryOne S의 DBMS계정 관리 기준은 사용자가 모르게 입니다. 사용자는 QueryOne S의 계정만으로 DBMS에 접근하게 되며, 이때, 관리자가 사용자가 사용 가능한 DBMS를 사전에 할당 시켜줌으로써, DBMS계정 노출을 원천적으로 막아줍니다.
		                </div>
		              </div>
		            </div>
		            <div class="panel panel-default">
		              <div class="panel-heading">
		                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
		                  <span>2) DBMS 변경에 관한 프로세스를 갖고 있습니다.</span>
		                </a>
		              </div>
		              <div id="collapseTwo" class="panel-collapse collapse">
		                <div class="panel-body col-14 prefix-1">
					                원장에 대한 변경이나, 개인정보 데이터 변경 등의 리스크 있는 작업에 대한 별도 프로세스를 갖고 있습니다. 운영DBMS에 대한 변경작업 프로세스는 개발자가 해당 DML문에 대한 결재를 받고 이를 DBA에게 전달하여, DBA가 수행토록 하는 프로세스를 갖고 있으며, 이는 전자금융감독규정이나 개인정보보호법의 관련 내용을 준수합니다. 또한 변경, 추가, 삭제에 대한 작업은 사전/사후 이미지 저장 및 수행 쿼리에 대한 저장을 통해 사후 감사자료로 활용이 가능합니다.
		                </div>
		              </div>
		            </div>
		            <div class="panel panel-default">
		              <div class="panel-heading">
		                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
		                  <span>3) DBMS 조회에 대한 관리가 가능합니다.</span>
		                </a>
		              </div>
		              <div id="collapseThree" class="panel-collapse collapse">
		                <div class="panel-body col-14 prefix-1">
					                개인정보가 포함된 DBMS에 대한 과다 조회를 한다든지, 민감한 데이터는 마스킹 처리를 한다든지 하는 방안을 통해서, DBMS안의 데이터 유출에 대한 관리 기능도 제공합니다. 하지만 차단이나 허용이라는 이분법적인 관리를 주로 하는 DB접근제어와는 다르게, QueryOne S는 필요에 의해 해당 내용으로 금지된 테이블이라도 결재를 받으면, 해당 승인 건에 대해서는 차단된 데이터라도 조회가 가능하도록 운영이 가능합니다. 또, 1,000건 이상 조회가 불가능한 테이블이라도, 결재를 통해 10,000건 이상 조회를 할 수 있도록 사용이 가능합니다. 한마디로, 차단/허용이 아니라, 차단된 내용이지만 결재를 통해서 허용. 등 DBMS에 대한 운영을 유연하게 할 수 있다는 점이 QueryOne S의 큰 장점입니다.
		                </div>
		              </div>
		            </div>
		            <div class="panel panel-default">
		              <div class="panel-heading">
		                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapse4">
		                  <span>4) 수행 결과 및 쿼리에 대한 로깅이 가능합니다.</span>
		                </a>
		              </div>
		              <div id="collapse4" class="panel-collapse collapse">
		                <div class="panel-body col-14 prefix-1">
		                	QueryOne S는 수행되었던 쿼리를 언제, 어디서, 누가, 무엇을, 어떻게, 왜 라는 5W1H의 조건에 맞게 로깅을 하고 있습니다. 특히 DB접근제어에서 관리가 힘들었던 “왜?”라는 부분은 결재를 통해 사유를 남김으로써, 감사를 받을 때에도, 사용자는 DB작업에 정당성을 인정 받게 되며, 이를 통해 관리자는 DBMS를 안전하게 관리 할 수 있습니다. 리포트 종류 또한 여러 형태로 제공 가능합니다. 기본 제공하는 리포트 외에, 사용자 지정 리포트 기능을 통해, 필요에 맞게 가공 생성할 수 있습니다.
		                </div>
		              </div>
		            </div>
		            <div class="panel panel-default">
		              <div class="panel-heading">
		                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapse5">
		                  <span>5) QueryOne S는 DB Tool 기능 분배 기능을 갖고 있습니다.</span>
		                </a>
		              </div>
		              <div id="collapse5" class="panel-collapse collapse">
		                <div class="panel-body col-14 prefix-1">
		               	 QueryOne S는 관리자가 사용 가능한 Tool 기능을 인원별 그룹별 분배시켜줄 수 있어, 기능별 권한 관리 체계를 갖고 있습니다.		                
		                </div>
		              </div>
		            </div>
		            <div class="panel panel-default">
		              <div class="panel-heading">
		                <a class="accordion-toggle row" data-toggle="collapse" data-parent="#accordion2" href="#collapse6">
		                  <span>6) 마지막으로 QueryOne S는 우수한 사내 시스템과의 연동을 제공함으로써 편리한 운영 및 사용 환경을 제공합니다.</span>
		                </a>
		              </div>
		              <div id="collapse6" class="panel-collapse collapse">
		                <div class="panel-body col-14 prefix-1">
		             	   문서관리시스템(DRM)과의 연동, 내부 그룹웨어와의 연동, SMS 연동 등 연동을 원활하게 지원할 수 있는 확장 커넥터를 제공합니다.		                
		                </div>
		              </div>
		            </div>
		          </div>
      		</div>
      	</div>
      	<!-- 끝: .q-1 -->

      	<!-- 시작: .q-3 -->
        <div class="q-3 row">
            <div class="col-12 prefix-2 row">
           	  <h5>전자금융감독규정 기준 QueryOne S 기능</h5>
              <table>
              	<colgroup>
              		<col style="width: 16%">
              		<col style="width: 16%">
              		<col style="width: 68%">
              	</colgroup>
              	<thead>
              		<tr>
              			<th>분류</th>
              			<th>기능</th>
              			<th>관련 법규</th>
              		</tr>
              	</thead>
              	
              	<tbody>
              		<tr>
              			<th>DB 계정 관리</th>
              			<td>가상계정</td>
              			<td>13조 2. 외부사용자에게 사용자계정을 부여하는 경우 최소한의 작업권한만 할당하고 적절한 통제장치를 갖출 것</td>
              		</tr>
              		<tr>
              			<th rowspan="2">DB 변경 차단/통제</th>
              			<td>원장 변경 프로세스</td>
              			<td rowspan="2">28조 3. ② 금융회사 또는 전자금융업자는 전산원장, 주요정보 또는 이용자 정보 등이 저장된 정보처리시스템에 대한 중요작업 수행 시 책임자가 이중확인을 해야 한다.<개정 2013.12.3.></td>
              		</tr>
              		<tr>
              			<td>DML/DDL/DCL 통제</td>
              		</tr>
              		<tr>
              			<th rowspan="4">DB 조회 차단/통제</th>
              			<td>접근 DB 관리</td>
              			<td>13조 2. 외부사용자에게 사용자계정을 부여하는 경우 최소한의 작업권한만 할당하고 적절한 통제장치를 갖출 것</td>
              		</tr>
              		<tr>
              			<td>최대 조회 관리</td>
              			<td>13조 10. 이용자 정보의 조회·출력에 대한 통제를 하고 테스트 시 이용자 정보 사용 금지(다만, 부하 테스트 등 사용이 불가피한 경우 이용자 정보를 변환하여 사용하고 테스트 종료 즉시 삭제하여야 한다)<개정 2013.12.3.></td>
              		</tr>
              		<tr>
              			<td>다운로드 관리</td>
              			<td>13조 13. 단말기에 이용자 정보 등 주요정보를 보관하지 아니하고, 단말기를 공유하지 아니할 것(다만, 불가피하게 단말기에 보관할 필요가 있는 경우 보관사유, 보관기간 및 관리 비밀번호 등을 정하여 책임자의 승인을 받아야 한다)</td>
              		</tr>
              		<tr>
              			<td>마스킹</td>
              			<td></td>
              		</tr>
              		<tr>
              			<th rowspan="3">로깅</th>
              			<td>사용 기록 관리</td>
              			<td>14조 3. 금융회사 또는 전자금융업자는 단말기를 통한 이용자 정보 조회 시 사용자, 사용일시, 변경·조회내용, 접속방법이 정보처리시스템에 자동적으로 기록되도록 하고, 그 기록을 1년 이상 보존하여야 한다.<개정 2013.12.3.></td>
              		</tr>
              		<tr>
              			<td>조회 결과 저장</td>
              			<td></td>
              		</tr>
              		<tr>
              			<td>데이터 변경 전후 기록</td>
              			<td>27조 2. ② 제1항의 절차에는 변경 대상 및 방법, 변경 권한자 지정, 변경 전후내용 자동기록 및 보존, 변경내용의 정당여부에 대한 제3자 확인 등이 포함되어야 한다.</td>
              		</tr>
              		<tr>
              			<th>DB Tool 관리</th>
              			<td>Tool 기능 분배</td>
              			<td>15조 4. 내부통신망에서의 파일 배포기능은 통합 및 최소화하여 운영하고, 이를 배포할 경우에는 무결성 검증을 수행할 것<신설 2013.12.3.></td>
              		</tr>
              	</tbody>
              </table>
            </div>
        </div>
        <!-- 끝: .q-3 -->
        
        
      	<!-- 시작: .q-3 -->
        <div class="q-3 row" style="background: #eee;">
            <div class="col-12 prefix-2 row">
            	<h5>구축사례</h5>
            	<ul class="ex">
            		<li>접근제어 솔루션은 QueryOne을 제외한 타 쿼리 툴 차단 기능 사용</li>
            		<li>접근 권한 및 결재는 QueryOne 기능  사용</li>
            		<li>OTP 서버와 연동하여 2채널 인증 지원, 매일 1회 인사 DB 연동으로 사용자 정보 자동 갱신</li>
            	</ul>
            	<img src="<c:url value='/resources/images/detail/ex.jpg'/>" alt="구축 사례 이미지" width="100%" class="img-ex">
            </div>
        </div>
        <!-- 끝: .q-3 -->
        
        <!-- 시작: .q-3 -->
        <%-- <div class="q-3 row">
            <ul class="col-12 prefix-2 row">
                <li class="col-16 row">
                	<div class="col-2 ico"><img src="<c:url value='/resources/images/content-2/ico01.svg'/>" alt="아이콘"></div>
                    <div class="col-12 prefix-1">
                        <p class="title">DBMS 통합 감사</p>
                        <p>QueryOne S는 관리되는 모든 DBMS에 대하여 계정과 권한을 통합으로 관리합니다. 또한 사전/사후 이미지 저장과 사용 기록 관리 등 감사 대상이 되는 기능 외, 긴급 결재, 보고서 등 업무 편의를 위한 기능을 제공합니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                	<div class="col-2 ico"><img src="<c:url value='/resources/images/content-2/ico02.svg'/>" alt="아이콘"></div>
                    <div class="col-12 prefix-1">
                        <p class="title">DB-Query 결재</p>
                        <p>QueryOne S는 SQL 실행 및 DB 사용 권한을 점검하여 인가된 사용자에게만 접근을 허가합니다. 이를 위해 사전 정의된 정책에 의해 사용 승인 받아 권한을 획득하는 결재 기능을 제공합니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                	<div class="col-2 ico"><img src="<c:url value='/resources/images/content-2/ico03.svg'/>" alt="아이콘"></div>
                    <div class="col-12 prefix-1">
                        <p class="title">정책 기반 시스템</p>
                        <p>기업 및 기관에서 사용되는 DB는 사용 목적과 내부 구조에 따라 접근 방식이나 부여되는 권한이 모두 다르므로 획일화된 방법으로는 통제할 수 없습니다. Query One S는 정책 관리 기능은 DB와 사용자간 권한을 세부적으로 제어합니다.</p>
                    </div>
                </li>
                <li class="col-16 row">
                	<div class="col-2 ico"><img src="<c:url value='/resources/images/content-2/ico04.svg'/>" alt="아이콘"></div>
                    <div class="col-12 prefix-1">
                        <p class="title">DB 관리 도구 결합</p>
                        <p>QueryOne S는 QueryOne과 결합되어 있어서 Query뿐 아니라 DB 관련 모든 기능을 제어하며, DB 계정의 노출을 방지합니다.</p>
                    </div>
                <li class="col-16 row">
                	<div class="col-2 ico"><img src="<c:url value='/resources/images/content-2/ico05.svg'/>" alt="아이콘"></div>
                    <div class="col-12 prefix-1">
                        <p class="title">이종 시스템 연동</p>
                        <p>QueryOne S는 기업 시스템과 연동하는 기능을 갖추고 있습니다. 이러한 기능은 공용 정보의 이중화 관리를 방지하여 관리자의 업무량을 경감시키며, 외부 기능과의 연동으로 전체적인 보안 성능을 향상 시킬 수 있습니다.</p>
                    </div>
                </li>
            </ul>
        </div> --%>
        <!-- 끝: .q-3 -->
      </div>
    </div>
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>