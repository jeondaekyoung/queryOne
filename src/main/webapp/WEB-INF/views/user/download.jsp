<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<jsp:include page="include-head.jsp" flush="false" />
</head>
<script type="text/javascript">
  function view(no) {
    var f = document.hitsForm;
    var input=f.downNo.value;
    f.downNo.value = no;
    f.submit();
  }
</script>
<body class="container show-grid">

  <!-- 시작: .page-header -->
  <jsp:include page="include-top.jsp" flush="false" />
  <!-- 끝: .page-header -->

  <!-- 시작: .page-container -->
  <div class="page-container">
    <!-- 시작: .detail-01 -->
    <div class="detail-01">
      <div class="top">
        <div class="row">
          <div class="col-12 prefix-2">
            <h3>Download</h3>
            <h4>자료실</h4>
          </div>
        </div>
      </div>

      <c:choose>
        <c:when test="${empty lists }">
          <img src="<c:url value='/resources/images/noData.jpg'/>"
            style="width: 400px; margin: 0 auto; display: block;"
            alt="등록된 데이터가 없습니다.">
        </c:when>
        
        <c:otherwise>
          <div class="row">
            <div class="col-12 prefix-2 text-center bg-blue">
              <div class="col-10">제목</div>
              <div class="col-6">등록일</div>
            </div>
          </div>
          
          <div class="row">
            <div class="col-12 prefix-2 news">
              <div class="panel-group" id="accordion2">
                <form action="<c:url value='/user/downHits.do'/>" name="hitsForm">
                  <input type="hidden" name="downNo">
                </form>
                
                <c:forEach items="${lists}" var="list" varStatus="status">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <a class="accordion-toggle row" data-toggle="collapse"
                        data-parent="#accordion2" onclick="view('${list.downNo}')"
                        href="#collapse${list.downNo }"> <span class="col-10">${list.title }</span>
                        <span class="col-6">${list.createDate }</span>
                      </a>
                    </div>
                    
                    <c:if test="${param.downNo == list.downNo}" var="result">
                      <div id="collapse${list.downNo }" class="panel-collapse row in">
                    </c:if>
                    
                    <c:if test="${not result }">
                      <div id="collapse${list.downNo }" class="panel-collapse collapse row">
                    </c:if>
                    
                    <!-- panel-collapse in 내용 목록 보기 -->
                    <div class="panel-body col-12 prefix-2">
                      ${list.content }
                      <!-- 파일 -->
                      <c:if test="${empty list.fileName}" var="result">

                      </c:if>
                      
                      <c:if test="${!result}">
                        <p class="form-control-static">
                          <a href='<c:url value="/file/down/${list.file_id}" />' class="btn btn-info"><i class="fa fa-download"></i>${list.fileName}  다운로드</a>
                        </p>
                      </c:if>                      
                    </div>
                  </div> <!-- 끝: .panel -->
                </c:forEach>
                
              </div>
              <!-- 끝: .panel-group -->
            </div>
            <!-- 끝: .col-12 -->
          </div>
          <!-- 끝: .row -->
          
        </c:otherwise>
      </c:choose>
      
    </div><!-- 끝: .detail-01 -->

    <!-- 시작: paging -->
    <div class="text-center">${pagingString}</div>
    <!-- 끝: paging -->
    
    <!-- 시작: .db-table -->
    <div class="row db-table">
        <div class="col-12 prefix-2">
          <table class="col-16">
            <caption>Tool별 지원 DB목록</caption>
            <summary>Tool별 지원 DB목록</summary>
            <thead>
              <tr>
                <th></th>
                <th>Oracle</th>
                <th>DB2</th>
                <th>MSsql</th>
                <th>MYsql</th>
                <th>Teradata</th>
                <th>SybaseIQ</th>
                <th>SybaseASE</th>
                <th>Tibero</th>
                <th>Greenplum</th>
                <th>Vertica</th>
                <th>Altibase</th>
                <th>Netezza</th>
                <th>PostgreSql</th>
                <th>Exadata</th>
                <th>Hana</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th>PL/SQL Editor</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Plan Editor</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Object Details</th>
                <td>○</td> <td>○</td> <td>○</td> <td></td> <td></td> <td></td> <td>○</td> <td>○</td> <td>○</td> <td></td> <td>○</td> <td></td> <td>○</td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Data Dictionary</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                <th>Data Export</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                <th>Data Import</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                <th>Data Pump</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Data Loader</th>
                <td>○</td> <td>○</td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td>○</td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Data Compare</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td></td> <td>○</td>
              </tr>
              <tr>
                <th>Data Quality</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>            
              </tr>
              <tr>
                <th>Data Migration</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td></td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td>○</td> <td></td> <td>○</td> <td></td> <td></td>
              </tr>
              <tr>
                <th>Script Generation</th>
                <td>○</td> <td>○</td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Top N SQL</th>
                <td>○</td> <td>○</td> <td>○</td> <td></td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>SQL Trace</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>SQL Advisor</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Session Monitor</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                <th>Transaction Monitor</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Lock Monitor</th>
                <td>○</td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>Database Monitor</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td></td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                <th>Space Manager</th>
                <td>○</td> <td>○</td> <td>○</td> <td></td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td></td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                  <th>Security manager</th>
                  <td>○</td> <td></td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td>○</td>
              </tr>
              <tr>
                <th>Health Check</th>
                <td>○</td> <td>○</td> <td>○</td> <td>○</td> <td></td> <td></td> <td></td> <td>○</td> <td>○</td> <td></td> <td>○</td> <td></td> <td>○</td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>AWR Report</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>LogMiner</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
              <tr>
                <th>ASM Manager</th>
                <td>○</td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td>○</td> <td></td>
              </tr>
            </tbody>
          </table>    
        </div>
      </div>
    <!-- 끝: .db-table -->
  </div>
  <!-- 끝: .page-container -->

  <jsp:include page="include-bottom.jsp" flush="false" />
</body>
</html>