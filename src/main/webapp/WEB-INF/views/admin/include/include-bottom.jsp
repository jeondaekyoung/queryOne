<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>
<script src="<c:url value='/resources/js/app.js'/>"></script>
<script src="<c:url value='/resources/js/app.plugin.js'/>"></script>
<!-- wysiwyg -->
<script src="<c:url value='/resources/js/wysiwyg/jquery.hotkeys.js'/>"></script>
<script src="<c:url value='/resources/js/wysiwyg/bootstrap-wysiwyg.js'/>"></script>
<script src="<c:url value='/resources/js/wysiwyg/demo.js'/>"></script>
<script src="<c:url value='/resources/js/slim.js'/>"></script>
<!-- datepicker -->
<script src="<c:url value='/resources/js/datepicker/bootstrap-datepicker.js'/>"></script>
<!-- file input -->  
<script src="<c:url value='/resources/js/file-input/bootstrap-filestyle.min.js'/>"></script>
<script>
$(document).ready(function() {
	$('Button#Search').click(function(){
		var1=$('Input#Search_input');
		if(var1.val().length<2){
			 alert("검색어는 2글자 이상 입니다.");
			 event.preventDefault();
			 var1.val("");
			 var1.focus();
		 }
		
		 
		
		
	});
});
</script>
<!-- wysiwyg -->
<!--
<script src="js/wysiwyg/jquery.hotkeys.js"></script>
<script src="'js/wysiwyg/bootstrap-wysiwyg.js'"></script>
<script src="js/wysiwyg/demo.js'"></script>
-->
