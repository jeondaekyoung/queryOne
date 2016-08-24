<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex,nofollow" />
	<link rel="stylesheet" media="screen,projection" type="text/css" href="resources/css/reset.css" /> <!-- RESET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="resources/css/main.css" /> <!-- MAIN STYLE SHEET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="resources/css/2col.css" title="2col" /> <!-- DEFAULT: 2 COLUMNS -->
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="resources/css/1col.css" title="1col" /> <!-- ALTERNATE: 1 COLUMN -->
	<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]--> <!-- MSIE6 -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="resources/css/style.css" /> <!-- GRAPHIC THEME -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="resources/css/mystyle.css" /> <!-- WRITE YOUR CSS CODE HERE -->
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/switcher.js"></script>
	<script type="text/javascript" src="resources/js/toggle.js"></script>
	<script type="text/javascript" src="resources/js/ui.core.js"></script>
	<script type="text/javascript" src="resources/js/ui.tabs.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".tabs > ul").tabs();
	});
	</script>
	<title>query One 관리자 페이지</title>
</head>

<div id="main">
	<!-- Tray -->
	<div id="tray" class="box">

		<p class="f-left box">

			<!-- Switcher -->
			<span class="f-left" id="switcher">
				<a href="#" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="resources/design/switcher-1col.gif" alt="1 Column" /></a>
				<a href="#" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="resources/design/switcher-2col.gif" alt="2 Columns" /></a>
			</span>

			Project: <strong>query One</strong>

		</p>

		<p class="f-right">User: <strong><a href="#">Administrator</a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="#" id="logout">Log out</a></strong></p>

	</div> <!--  /tray -->

	<hr class="noscreen" />

	<!-- Menu -->
	<div id="menu" class="box">

		<ul class="box f-right">
			<li><a href="#"><span><strong>Visit Site &raquo;</strong></span></a></li>
		</ul>

		<ul class="box">
			<li id="menu-active"><a href="#"><span>기본 설정</span></a></li> <!-- Active -->
			<li><a href="#"><span>자료실 관리</span></a></li>
			<li><a href="#"><span>News 관리</span></a></li>
			<li><a href="#"><span>Video 관리</span></a></li>
			<li><a href="#"><span>발급키 관리</span></a></li>
		</ul>

	</div> <!-- /header -->

	<hr class="noscreen" />

	<!-- Columns -->
	<div id="cols" class="box">

		<!-- Aside (Left Column) -->
		<div id="aside" class="box">

			<div class="padding box">

				<!-- Logo (Max. width = 200px) -->
				<p id="logo"><a href="#"><img src="resources/tmp/logo.gif" alt="Our logo" title="Visit Site" /></a></p>

				<!-- Search -->
				<form action="#" method="get" id="search">
					<fieldset>
						<legend>Search</legend>

						<p><input type="text" size="17" name="" class="input-text" />&nbsp;<input type="submit" value="OK" class="input-submit-02" /><br />
						<a href="javascript:toggle('search-options');" class="ico-drop">Advanced search</a></p>

						<!-- Advanced search -->
						<div id="search-options" style="display:none;">

							<p>
								<label><input type="checkbox" name="" checked="checked" /> Option I.</label><br />
								<label><input type="checkbox" name="" /> Option II.</label><br />
								<label><input type="checkbox" name="" /> Option III.</label>
							</p>

						</div> <!-- /search-options -->

					</fieldset>
				</form>

				<!-- Create a new project -->
				<p id="btn-create" class="box"><a href="#"><span>Create a new project</span></a></p>

			</div> <!-- /padding -->

			<ul class="box">
				<li id="submenu-active"><a href="#">Active Page</a> <!-- Active -->
					<ul>
						<li><a href="#">빈칸</a></li>
						<li><a href="#">빈칸</a></li>
						<li><a href="#">빈칸</a></li>
						<li><a href="#">빈칸</a></li>
						<li><a href="#">빈칸</a></li>
					</ul>
				</li>
				<li><a href="#">빈칸</a></li>
				<li><a href="#">빈칸</a>
				
			</ul>

		</div> <!-- /aside -->

		<hr class="noscreen" />

		<!-- Content (Right Column) -->
		<div id="content" class="box">

			<h1>Styles</h1>

			<!-- Headings -->
			<h2>제목</h2>

			<!-- System Messages 
			<h3 class="tit">System Messages</h3>
			<p class="msg warning">빈칸</p>
			<p class="msg info">빈칸</p>
			<p class="msg done">빈칸</p>
			<p class="msg error">빈칸</p>
				-->
			<!-- Tabs -->
			<h3 class="tit">Tabs</h3>

			<div class="tabs box">
				<ul>
					<li><a href="#tab01"><span>빈칸</span></a></li>
					<li><a href="#tab02"><span>빈칸</span></a></li>
					<li><a href="#tab03"><span>빈칸</span></a></li>
				</ul>
			</div> <!-- /tabs -->

			<!-- Tab01 -->
			<div id="tab01">
			
				<p>Tab01</p>
			
			</div> <!-- /tab01 -->

			<!-- Tab02 -->
			<div id="tab02">

				<p>Tab02</p>

			</div> <!-- /tab02 -->

			<!-- Tab03 -->
			<div id="tab03">

				<p>Tab03</p>

			</div> <!-- /tab03 -->

				<!-- Table (TABLE) -->
			<h3 class="tit">Table</h3>
			<table>
				<tr>
				    <th>빈칸</th>
				    <th>빈칸</th>
				    <th>빈칸</th>
				    <th>빈칸</th>
				    <th>빈칸</th>
				</tr>
				<tr>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				</tr>
				<tr class="bg">
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				</tr>
				<tr>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				</tr>
				<tr class="bg">
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				</tr>
				<tr>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				    <td>빈칸</td>
				</tr>
			</table>

			<!-- Form -->
			<h3 class="tit">Form</h3>
			<fieldset>
				<legend>Legend</legend>
				<table class="nostyle">
					<tr>
						<td style="width:70px;">Input:</td>
						<td><input type="text" size="40" name="" class="input-text" /></td>
					</tr>
					<tr>
						<td>Input:</td>
						<td><input type="text" size="40" name="" class="input-text" disabled="disabled" /></td>
					</tr>
					<tr>
						<td class="va-top">Input:</td>
						<td><textarea cols="75" rows="7" class="input-text"></textarea></td>
					</tr>
					<tr>
						<td>Input:</td>
						<td>
							<label><input type="checkbox" /> 빈칸</label> &nbsp;
							<label><input type="checkbox" /> 빈칸</label> &nbsp;
							<label><input type="checkbox" /> 빈칸</label>
						</td>
					</tr>
					<tr>
						<td>Input:</td>
						<td>
							<label><input type="radio" /> 빈칸</label> &nbsp;
							<label><input type="radio" /> 빈칸</label> &nbsp;
							<label><input type="radio" /> 빈칸</label>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="t-right"><input type="submit" class="input-submit" value="Submit" /></td>
					</tr>
				</table>
			</fieldset>
		</div> <!-- /content -->

	</div> <!-- /cols -->

	<hr class="noscreen" />

	<!-- Footer -->
	<div id="footer" class="box">

		<p class="f-left">&copy; 2009 <a href="#">Your Company</a>, All Rights Reserved &reg;</p>

		<p class="f-right">Templates by <a href="http://www.adminizio.com/">Adminizio</a></p>

	</div> <!-- /footer -->

</div> <!-- /main -->

</body>
</html>