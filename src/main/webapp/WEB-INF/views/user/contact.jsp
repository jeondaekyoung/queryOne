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
    <div class="detail-01">
      <div class="top">
      	<div class="row">
	      	<div class="col-12 prefix-2">
	      		<h3>Contact</h3>
	      		<h4>오시는 길</h4>
	      	</div>
      	</div>
      </div>
      <div class="row">
	    <div class="col-12 prefix-2 contact_map">
          <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=kcBpBj64MUbKcq1xcINE"></script>
          <div id="map" class="box-map" style="width:100%;height:480px;">
                <p class="location">지하철 9호선 <span>국회의사당역 3번 출구</span>에서 하차 - <span>국민은행</span> 방면으로 횡단 - <span>스누스코리아</span>까지 직진 후 좌측으로 약 370m 이동 - <span>한국기계산업진흥회</span> 건물 4층</p>
            </div>
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
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>