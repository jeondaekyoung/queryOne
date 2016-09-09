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
          <script language="javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=0788cfc0-7af4-36f7-871e-0e2054b3af9c"></script>
      	  <script type="text/javascript">
			function initialize() {
			    var map = new Tmap.Map({div:"map_div", width:'100%', height:'480px'});
			    map.addControl(new Tmap.Control.KeyboardDefaults());
			    var markerLayer = new Tmap.Layer.Markers();
				map.addLayer(markerLayer);			 
				var lonlat = new Tmap.LonLat(14128959.98942, 4513159.57659);
			    map.setCenter(lonlat, 16);
				var size = new Tmap.Size(24,38);
				var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
				var icon = new Tmap.IconHtml("<img src= 'https://developers.skplanetx.com/upload/tmap/marker/pin_b_m_q.png'></img>", size, offset);			     
				var marker = new Tmap.Marker(lonlat, icon);
				markerLayer.addMarker(marker);
			}
			window.onload = function() {
			    initialize();
			}
		  </script>
		  <div id="map_div"></div>
		  <p class="location">지하철 9호선 <span>국회의사당역 3번 출구</span>에서 하차 - <span>국민은행</span> 방면으로 횡단 - <span>스누스코리아</span>까지 직진 후 좌측으로 약 370m 이동 - <span>한국기계산업진흥회</span> 건물 4층</p>
	    </div>
	  </div>
    </div>
    <!-- 끝: .content-01 -->

  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>