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
    <div class="content-01 carousel slide auto panel-body" id="c-fade">
      <ol class="carousel-indicators out">
        <li data-target="#c-fade" data-slide-to="0" class="active"></li>
        <li data-target="#c-fade" data-slide-to="1" class=""></li>
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
        <li class="slide slide-1 slide-4 item">
          <div class="row">
            <div class="script col-5 prefix-2">
              <h3 class="headline">다양한 <span>DBMS</span>를<br><span>QueryOne</span> 하나면 <span>OK</span></h3>
                <ul>
                  <li class="subline txt-white">QueryOne은 기존 관리 도구와 달리 DBMS 독립적인 관리 도구입니다.</li>
                  <li class="subline txt-white">QueryOne 제품 하나로 Oracle, MS-SQL, DB2, Sybase, My-SQL 등 여러 DBMS를 동시에 관리할 수 있습니다.</li>
                </ul>
            </div>
            <div class="col-7 prefix-1">
                <h4>현재 지원 DBMS 목록</h4>
                <img src="<c:url value='/resources/images/content-1/database-list.png'/>" width="100%" alt="지원 database : mysql, mssql, oracle, sybase, greenplum, netezza, altibase, sap hana, sdb, teradata, tibero, vertica,postgreSQL, db2"></div>
          </div>
        </li>
        <!-- //slide-2 -->
       </ul>
      </div>
      
      <div class="btn-set">
        <a class="btn-prev left carousel-control" href="#c-fade" data-slide="prev"><img src="<c:url value='/resources/images/slider/btn-prev.png'/>" alt="btn-prev"></a>
        <a class="btn-next right carousel-control" href="#c-fade" data-slide="next"><img src="<c:url value='/resources/images/slider/btn-next.png'/>" alt="btn-next"></a>
      </div>
    </div>
    <!-- 끝: .content-01 -->

    <!-- 시작: .content-02 -->
    <div class="content-02 carousel slide auto panel-body" id="b-fade">
      <ol class="carousel-indicators out">
        <li data-target="#b-fade" data-slide-to="0" class="active"></li>
        <li data-target="#b-fade" data-slide-to="1" class=""></li>
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
        
        <!-- slide-3 -->
        <li class="slide slide-3 row item item2">
          <div class="col-14 prefix-1">
            <h3 class="headline"><span>QueryOne S</span> 도입효과</h3>
            <div class="func">
              <p>
                  DB 감사및 결재 체계 구축으로 인해 기업 내 DB 보안 수준을 강화하여<span>소중한 정보 자산 보호</span>
              </p>
              <p class="bg-arrow">Data 관리를 위해 결재를 통한 상시 감사 체계 구축</p>
              <ul class="row">
                <li class="func-01"><p>기업 내 모든 DBMS에 대한<br>접근 통제 강화</p></li>
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
        <!-- 끝: .video-list -->
      </div>
      <!-- 끝: .row -->
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
		if(key=="null"){
			alert("발급키 준비 중입니다.");
			return;
		}
		
			$("#myModal").css({'display' : 'block'});
			$("#modal_value").html(key);
		
		break;
	case 'nof':
		alert("파일 준비 준비중입니다.");
	}
	
}

function modal_button(){
	$("#myModal").css({'display' : 'none'});
	$("#inNup").attr("href","<c:url value='/lice/history/inNup.do?lice_key=${licence.lice_key }' />");
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
                	  <a href="<c:url value='/file/down/${product.file_id}'/>"><button type="button" onclick="eclick('pro','')" >Query One<br>다운받기 </button></a>
                	</c:otherwise>
                  </c:choose>                  
                </li>
                <li class="col-3 btn02">
                  <c:if test="${empty licence}" var="lice_result">
                 	<button type="button" onclick="eclick('lice','null'); ">License Key<br>발급받기</button>	
                  </c:if>
                  <c:if test="${not lice_result}">
                    
                  	  <button type="button" onclick="eclick('lice','${licence.lice_key}'); ">License Key<br>발급받기</button>
            
                  </c:if>                  
                </li>
              </ul>
            </div>
              <!-- The Modal -->
    <div id="myModal" class="modal">

      <!-- Modal content --> 
      <div class="modal-content" id="modal">
        <h3>라이센스 키가 발급되었습니다.</h3>
        <p id="modal_value">라이센스 키</p>
          <div class="row">
            <a id="inNup"  >
            <button type="button" id="modal_button" onclick="modal_button()" class="col-4 prefix-6 ok">확인</button>
                  	</a>
            <!--<button type="button" class="col-4 prefix-4 ok">확인</button>
            <button type="button" class="col-4 cancel">취소</button>-->
          </div>
      </div>

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
	                 		<button type="button"  >[${list.account}]${list.fileName} 다운받기 </button>
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

	<!-- 시작: .content-06 -->
    <div class="content-06">
      <div class="row">
        <div class="col-12 prefix-2">
          <h3 class="headline">Contact</h3>
        </div>
        <div class="map">
          <div class="row">
            <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=kcBpBj64MUbKcq1xcINE"></script>
            <div id="map" class="box-map" style="width:100%;height:450px;"></div>
            <p class="location">지하철 9호선 <span>국회의사당역 3번 출구</span>에서 하차 - <span>국민은행</span> 방면으로 횡단 - <span>스누스코리아</span>까지 직진 후 좌측으로 약 370m 이동 - <span>한국기계산업진흥회</span> 건물 4층</p>
            <script type="text/javascript">
                var mapOptions = {
                    center: new naver.maps.LatLng(37.5294566, 126.9226283),
                    zoom: 14,
                    scaleControl: false,
                    logoControl: false,
                    mapDataControl: false,
                    zoomControl: true
                };
                var marker = new naver.maps.Marker({
                    position: new naver.maps.LatLng(37.5294566, 126.9226283),
                    map: map
                });
                var map = new naver.maps.Map('map', mapOptions);
            </script>
          </div>
        </div>
      </div>
    </div>
    <!-- 끝: .content-06 -->
	
  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="user/include-bottom.jsp" flush="false" />
</body>
</html>