<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-KR">
<head>
  	<jsp:include page="user/include-head.jsp" flush="false" />
</head>
<body class="container show-grid">

  <!-- 시작: .page-header -->
  <jsp:include page="user/include-top.jsp" flush="false" />
  <!-- 끝: .page-header -->

  <!-- 시작: .page-container -->
  <div class="page-container">
    <!-- 시작: .content-01 -->
    <div class="content-01 carousel slide carousel-fade auto panel-body" id="c-fade">
      <ol class="carousel-indicators out">
        <li data-target="#c-fade" data-slide-to="0" class="active"></li>
        <li data-target="#c-fade" data-slide-to="1" class=""></li>
        <li data-target="#c-fade" data-slide-to="2" class=""></li>
      </ol>
      <div class="slider">
       <ul class="clearfix carousel-inner">
        <!-- slide-1 -->
        <li class="slide slide-1 item active">
          <div class="row">
            <div class="script col-5 prefix-2">
              <h3 class="headline">QueryOne</h3>
              <p class="subline txt-white">SQL 실행부터 DB 관리까지 간편하게</p>
            </div>
            <div class="col-7 prefix-1"><img src="<c:url value='/resources/images/content-1/database.png'/>" alt="지원 database : mysql, mssql, oracle, sybase, greenplum, netezza, altibase, sap hana, sdb, teradata, tibero, vertica,postgreSQL, db2"></div>
          															
          </div>
        </li>
        <!-- //slide-1 -->

        <!-- slide-2 -->
        <li class="slide slide-2 item">
          <div class="wrapper">
            <h3 class="headline">QueryOne 기능</h3>
            <div class="func-01">
              <ul class="row">
                <li class="func-wrap01">
                  <div class="bg">
                    <h4>SQL<br>Editor</h4>
                    <h5>sql문 작성</h5>                    
                  </div>
                  <p>sql 작성과 문서편집 기능 그리고 sql 실행 결과를 출력하여 편집 및 조작이 가능한 다양한 기능을 제공합니다.</p>
                </li>   
                <li class="func-wrap02">
                  <div class="bg">
                    <h4>Object<br>Browser</h4>
                    <h5>스키마 구조 유형별 관리</h5>                    
                  </div>
                  <p>Table,View,Procedure 등의 스키마 구조를 유형별로 분류하여 관리하실 수 있습니다.</p>
                </li>   
                <li class="func-wrap03">
                  <div class="bg">
                    <h4>Data Export / Import 마법사</h4>
                    <h5>자유로운 데이터 이동</h5>                    
                  </div>
                  <p>DB에 저장된 대량의 데이터를 파일로 저장하거나 파일의 내용을 DB에 입력할 때보다 간편하게 이용할 수 있도록 돕는 도구입니다.</p>
                </li>   
                <li class="func-wrap04">
                  <div class="bg">
                    <h4>SQL<br>Trace</h4>
                    <h5>sql 튜닝</h5>                    
                  </div>
                  <p>DBMS에서 생성한 Trace 파일을 읽어, 다차원적인 분석을 시도합니다. 이는 단순 텍스트가 아닌 사용자 관점의 다양한 결과 화면을 제공합니다. (Oracle, Tibero 전용)</p>
                </li>   
                <li class="func-wrap05">
                  <div class="bg">
                    <h4>Session<br>Monitor</h4>
                    <h5>session 관리</h5>                    
                  </div>
                  <p>현재 DB에 접속한 사용자 세션을 감시하고 차단하는 등의 기능을 제공하는 모니터링 도구입니다. 특정 세션과 관련된 SQL문을 SQL Editor와 연동하는 기능도 제공합니다.</p>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <!-- //slide-2 -->

        <!-- slide-3 -->
        <li class="slide slide-3 item">
          <div class="wrapper">
            <h3 class="headline">QueryOne 기능</h3>
            <div class="func-02">
              <ul class="row">
                <li class="func-wrap01">
                  <div class="bg">
                    <h4>Lock<br>Monitor</h4>
                    <h5>Lock관리</h5>
                  </div>
                    <p>세션 간 Lock Holder와 Waiter 상태를 트리 구조로 보여주고, 문제를 일으키는 세션을 KILL 하는 등 효율적인 세션 관리 기능을 제공합니다. (Oracle, Tibero 전용)</p>
                </li>   
                <li class="func-wrap02">
                  <div class="bg">
                    <h4>Space<br>Manager</h4>
                    <h5>db 용량 관리</h5>
                  </div>
                    <p>DBMS의 DISK 사용량을 물리적인 데이터 파일과 논리적인 테이블 스페이스로 구분하여 관리하고, 데이터 파일과 테이블 스페이스의 추가, 변경, 삭제 기능을 제공합니다.</p>
                </li>   
                <li class="func-wrap03">
                  <div class="bg">
                    <h4>Security<br>Manager</h4>
                    <h5>DB 계정 관리</h5>
                  </div>
                    <p>DB 계정을 생성하고 시스템 및 오브젝트 권한을 할당합니다. 여러 개의 권한을 롤(Role)로 묶어서 편리하게 관리할 수도 있습니다. (DB2 제외)</p>
                </li>   
                <li class="func-wrap04">
                  <div class="bg">
                    <h4>Database<br>Monitor</h4>
                    <h5>리소스 사용량을 한눈에</h5>
                  </div>
                    <p>DB에서 사용하는 CPU 및 메모리, 논리적/물리적 I/O 사용량, 대기 이벤트 발생현황 등을 실시간 그래프로 표출합니다.</p>
                </li>   
                <li class="func-wrap05">
                  <div class="bg">
                    <h4>Health<br>Check</h4>
                    <h5>현재 db 상태 체크</h5>
                  </div>
                    <p>현재 데이터베이스의 메모리, I/O, Top N SQL 등 논리적 / 물리적 자원 사용 현황을 보고서 형태로 제공합니다.</p>
                </li>
              </ul> 
            </div>
          </div>
        </li>
        <!-- //slide-3 -->
       </ul>
      </div>
      
      <div class="btn-set">
        <a class="btn-prev left carousel-control" href="#c-fade" data-slide="prev"><img src="<c:url value='/resources/images/slider/btn-prev.png'/>" alt="btn-prev"></a>
        <a class="btn-next right carousel-control" href="#c-fade" data-slide="next"><img src="<c:url value='/resources/images/slider/btn-next.png'/>" alt="btn-next"></a>
      </div>
    </div>
    <!-- 끝: .content-01 -->

    <!-- 시작: .content-02 -->
    <div class="content-02 carousel slide carousel-fade auto panel-body" id="b-fade">
      <ol class="carousel-indicators out">
        <li data-target="#b-fade" data-slide-to="0" class="active"></li>
        <li data-target="#b-fade" data-slide-to="1" class=""></li>
        <li data-target="#b-fade" data-slide-to="2" class=""></li>
      </ol>
      <div class="slider">
       <ul class="carousel-inner">
        <!-- slide-1 -->
        <li class="slide slide-1 item item2 active">
          <div>
            <div class="row script txt-white clearfix">
              <h3 class="col-6 prefix-7 headline clearfix"><span class="bg">QueryOne S</span><br>DB 보안 및 감사 대응을 위한 최적의 솔루션</h3>
            </div>
            <div class="func01">
              <ul class="row">
                <li class="col-2 prefix-3">
                  <div class="ico"><img src="<c:url value='/resources/images/content-2/ico01.svg'/>" alt="아이콘"></div>
                  <p class="txt">DBMS 통함 감사</p>
                </li>
                <li class="col-2">
                  <div class="ico"><img src="<c:url value='/resources/images/content-2/ico02.svg'/>" alt="아이콘"></div>
                  <p class="txt">DB-Query 결재</p>
                </li>
                <li class="col-2">
                  <div class="ico"><img src="<c:url value='/resources/images/content-2/ico03.svg'/>" alt="아이콘"></div>
                  <p class="txt">정책 기반 시스템</p>
                </li>
                <li class="col-2">
                  <div class="ico"><img src="<c:url value='/resources/images/content-2/ico04.svg'/>" alt="아이콘"></div>
                  <p class="txt">DB 관리 도구 결합</p>
                </li>
                <li class="col-2">
                  <div class="ico"><img src="<c:url value='/resources/images/content-2/ico05.svg'/>" alt="아이콘"></div>
                  <p class="txt">이종 시스템 연동</p>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <!-- //slide-1 -->
        <!-- slide-2 -->
        <li class="slide slide-2 row item item2">
          <div class="col-12 prefix-2">
            <h3 class="headline"><span>QueryOne S</span> 구성</h3>
            <div class="func">
              <ul class="row">
                <li class="col-4 prefix-2">
                  <img src="<c:url value='/resources/images/content-2/slide-2-1.png'/>" alt="클라이언트 화면">
                  <h4>Client</h4>
                  <p>SQL 실행 및 결과 출력</p>
                  <p>DB 관리 유틸리티</p>
                  <p>Agent 기능 포함</p>
                </li>   
                <li class="col-4">
                  <img src="<c:url value='/resources/images/content-2/slide-2-2.png'/>" alt="매니저 화면">
                  <h4>Manager</h4>
                  <p>정책 및 결재 라인 설정</p>
                  <p>사용자 그룹 및 권한 관리</p>
                  <p>코드 관리 및 환경 설정</p>
                </li>   
                <li class="col-4">
                  <img src="<c:url value='/resources/images/content-2/slide-2-3.png'/>" alt="에이전트 화면">
                  <h4>Agent</h4>
                  <p>결재 전용 기능 탑재</p>
                  <p>안건 승인 및 반려 기능</p>
                  <p>실시간 알람 기능</p>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <!-- //slide-2 -->
        <!-- slide-3 -->
        <li class="slide slide-3 row item item2">
          <div class="col-14 prefix-1">
            <h3 class="headline"><span>QueryOne S</span> 도입효과</h3>
            <div class="func">
              <p>
                  DB 감사및 결재 체계 구축으로 인해 기업 내 DB 보안 수준을 강화하여<span>소중한 정보 자산 보호</span>
              </p>
              <p class="bg-arrow">Data 관리를 위해 결재를 통한 상시 감사 체계 구축</p>
              <ul class="row prefix-2">
                <li class="func-01"><p>기업 내 모든 DBMS에 대한 접근 통제 강화</p></li>
                <li class="func-02"><p>최소권한의 원칙 적용</p></li>
                <li class="func-03"><p>DB 계정 관리</p></li>
                <li class="func-04"><p>감사 리포팅</p></li>
                <li class="func-05"><p>DB 관리 기능 통합</p></li>
              </ul> 
            </div>
          </div>
        </li>
        <!-- //slide-3 -->
       </ul>
      </div>
      
      <div class="btn-set">
        <a class="btn-prev left carousel-control" href="#b-fade" data-slide="prev"><img src="<c:url value='/resources/images/slider/btn-prev.png'/>" alt="btn-prev"></a>
        <a class="btn-next right carousel-control" href="#b-fade" data-slide="next"><img src="<c:url value='/resources/images/slider/btn-next.png'/>" alt="btn-next"></a>
      </div>
    </div>
    <!-- 끝: .content-02 -->

    <!-- 시작: .content-03 -->
    <div class="content-03">
      <div class="row">
        <div class="col-12 prefix-2 txt-white">
          <h3 class="headline">Video</h3>
        </div>
        <div class="video-list">
        <c:choose>
            	<c:when test="${empty videoLists}">
         	 <img src="<c:url value='/resources/images/noData2.png'/>" style="width:400px; margin:0 auto; display: block;"  alt="등록된 데이터가 없습니다."> 
            	</c:when>
            	<c:otherwise>
            	  <ul class="row">
          <c:forEach items="${videoLists}" begin="0"  end="7" var="videoList" varStatus="status">
            <c:if test="${status.count % 4 == 1 }" var="result">
            <li class="col-3  prefix-2">
            </c:if>
            <c:if test="${not result}">
            <li class="col-3">
            </c:if>
              <iframe src="${videoList.youtube_URL}" width="100%" height="120" frameborder="0"></iframe>
              <p>${videoList.title}</p>
            </li>
          </c:forEach>
            </ul>
            	</c:otherwise>
            	</c:choose>
            	
            
        
        </div>
      </div>
    </div>
    <!-- 끝: .content-03 -->

<script type="text/javascript">
	var bFlag = false;
function eclick(pstr,key) {
	switch (pstr) {
	case 'pro':
		alert("다운로드해주셔서 감사합니다. 발급키를 받아주세요.");
		bFlag =true;
		break;
	case 'lice':
		if(bFlag){
			alert("발급키는 "+key +" 입니다.");	
		}
		else{
			alert("제품을 먼저  다운로드 해주세요.");
		}
		break;
	case 'nof':
		alert("파일 준비 준비중입니다.");
	}
	
}
function view(no) {
	var f = document.hitsForm;
	var input=f.downNo.value;
	f.downNo.value = no;
	f.submit();
}
</script>
    <!-- 시작: .content-04 -->
    <div class="content-04 carousel slide carousel-fade panel-body" id="a-fade">
      <ol class="carousel-indicators out">
        <li data-target="#a-fade" data-slide-to="0" class="active"></li>
        <li data-target="#a-fade" data-slide-to="1" class=""></li>
      </ol>
      <div class="slider">
       <ul class="carousel-inner">
        <!-- slide-1 -->
        <li class="slide slide-1 item active">
          <div class="wrapper">
            <div class="script txt-white">
              <h3 class="headline">Download</h3>
              <p class="subline">QueryOne은 <span>100일간 무상</span>으로 사용할 수있는 평가판 라이선스를 제공합니다.<br>Data Server Provider가 내장되어 있으므로 별도의 DB Client를 설치하실 필요가 없습니다.</p>
            </div>
            <div class="down-btn-group">
              <ul class="row">
                <li class="col-3 prefix-5 btn01">
                	<c:choose>
                	<c:when test="${empty product }">
                	<button type="button" onclick="eclick('nof','')" >Query One<br>다운받기 </button>
                	</c:when>
                	<c:otherwise>
                	<a href="<c:url value='/file/product/${product.file_id}?proNo=${product.proNo}'/>"><button type="button" onclick="eclick('pro','')" >Query One<br>다운받기 </button></a>
                	</c:otherwise>
                	</c:choose>
                  
                </li>
                <li class="col-3 btn02">
                  <%-- <a href="<c:url value='/file/down/${lice.file_id}' />" > --%>
                  <button type="button" onclick="eclick('lice','${licencekey.lice_key}')">License Key<br>발급받기</button>
                  <!-- </a> -->
                </li>
              </ul>
            </div>
            <!-- <p class="subline">라이선스 발급 요청을 하게되면 <span>등록 시 작성한 E-mail</span>로 자동 발송됩니다.</p>
            <p class="subline">제품 구입 문의 : sales@softgarden.co.kr</p> -->
          </div>
        </li> 
        <!-- //slide-1 -->
        <!-- slide-2 -->
        <li class="slide slide-2 item">
          <div class="">
            <h3 class="headline">Download</h3>
            <div class="row">
  				<c:choose>
            	<c:when test="${empty downLists}">
         	 <img src="<c:url value='/resources/images/noData2.png'/>" style="width:400px; margin:0 auto; display: block;"  alt="등록된 데이터가 없습니다."> 
            	</c:when>
           	 <c:otherwise>
           	    <ul class="col-8 prefix-4">
              <!-- 관리자에서 올린 파일다운로드 -->
              
                <c:forEach items="${downLists}" var="list">
                <c:if test="${not empty list.fileName }">
                <li class="li-download">
                 <a href="<c:url value='/file/downNhit/${list.file_id}/${list.downNo}'/>">
                 <button type="button"  >${list.fileName} 다운받기 </button>
                 </a>
				</li>
				</c:if>
                </c:forEach>                
              </ul>
           	 </c:otherwise>
           	 </c:choose>
            </div>
          </div>
        </li>
        <!-- //slide-2 -->
       </ul>
      </div>
      
      <div class="btn-set">
        <a class="btn-prev left carousel-control" href="#a-fade" data-slide="prev"><img src="<c:url value='/resources/images/slider/btn-prev.png'/>" alt="btn-prev"></a>
        <a class="btn-next right carousel-control" href="#a-fade" data-slide="next"><img src="<c:url value='/resources/images/slider/btn-next.png'/>" alt="btn-next"></a>
      </div>
    </div>
    <!-- 끝: .content-04 -->

    <!-- 시작: .content-05 -->
    <div class="content-05">
      <div class="">
        <div class="">
          <h3 class="headline">News</h3>
          
          <div class="news-list">
            <c:choose>
            <c:when test="${empty notiLists}">
          <img src="<c:url value='/resources/images/noData.jpg'/>" style="width:400px; margin:0 auto; display: block;"  alt="등록된 데이터가 없습니다."> 
            </c:when>
            <c:otherwise>
              <ul class="row">
            
             <c:forEach items="${notiLists}" begin="0"  end="2" var="notiList" varStatus="status">
	             <c:if test="${status.count == 1 }" var="result">
	            <li class="col-4  prefix-2">
	            </c:if>
	            <c:if test="${not result}">
	            <li class="col-4">
	            </c:if>
	         	   <a href="<c:url value='/user/newsHits.do?notiNo=${notiList.notiNo }'/>">
	         	   
	         	    <img src="<c:url value='/resources/images/content-5/news_0${status.index+1}.jpg'/>" alt="공지사항1" width="100%" height="192">
	         	   
                    <p>${notiList.title }</p>
                </a>
              </li>     
             </c:forEach>
             
            </ul>
            </c:otherwise>
            </c:choose>
            
          
          </div>
        </div>
      </div>
    </div>
    <!-- 끝: .content-05 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="user/include-bottom.jsp" flush="false" />
</body>
</html>