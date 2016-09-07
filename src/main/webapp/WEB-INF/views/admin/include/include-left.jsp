<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<aside class="bg-black lter aside-md hidden-print" id="nav">          
  <section class="vbox">
    <header class="header bg-info lter text-center clearfix">
      
    </header>
    <section class="w-f scrollable">
      <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="5px" data-color="#333333">
        
        <!-- nav -->
        <nav class="nav-primary hidden-xs">
          <ul class="nav">
            <li class="menu-1">
              <a href="#" >                            
                <i class="fa fa-angle-down text"></i>
                <i class="fa fa-angle-up text-active"></i><span>발급키 관리</span>
              </a>
              <ul class="nav bg">
                <li >
                  <a href="<c:url value='/pro/list.do'/>" >
                    <i class="fa fa-angle-right"></i><span>제품분류 관리</span>
                  </a>
                </li>
                <li >
                  <a href="<c:url value='/lice/list.do'/>" >
                    <i class="fa fa-angle-right"></i><span>라이센스 키 관리</span>
                  </a>
                </li>
                <li >
                  <a href="<c:url value='/lice/history.do'/>" >
                    <i class="fa fa-angle-right"></i><span>라이센스 키 발급내역</span>
                  </a>
                </li>
              </ul>
            </li>
              
            <li class="menu-2">
              <a href="<c:url value='/down/list.do'/>">
                <i class="fa fa-download icon"><b class="bg-success"></b></i><span>자료실</span>
              </a>
            </li>
            <li class="menu-3">
              <a href="<c:url value='/noti/list.do'/>">
                <i class="fa fa-bullhorn icon"><b class="bg-primary dker"></b></i><span>공지사항</span>
              </a>
            </li>
              
            <li class="menu-4">
              <a href="<c:url value='/video/list.do'/>">
                <i class="fa fa-video-camera icon"><b class="bg-warning"></b></i><span>동영상</span>
              </a>
            </li>
            <li>
              <a href="<c:url value='/admin/logout.do'/>">
                <i class="fa fa-sign-out icon"><b class="bg-danger"></b></i><span>로그아웃</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- / nav -->
      </div>
    </section>
    
    <footer class="footer lt hidden-xs b-t b-black">
      
      <a href="#nav" data-toggle="class:nav-xs" class="pull-right btn btn-sm btn-black btn-icon">
        <i class="fa fa-angle-left text"></i>
        <i class="fa fa-angle-right text-active"></i>
      </a>
    </footer>
  </section>
</aside>