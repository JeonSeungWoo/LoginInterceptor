<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginConfirm</title>

</head>
<body>

<form action="loginConfirm" id="form">
<input type="hidden" name="check" id="check" value="${param.check}">


</form>

</body>

<script src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	//변수선언
	var obj =$("#form");
	var check = $("#check").val();
	//check
	if(check == '1'){
		window.location.href= '/main/mainPage';
		alert("로그인에 성공 하셨습니다.");
		
	}else if(check == '0'){
		window.location.href = '/user/login';
		alert("접속 권한이 낮습니다. 관리자에게 문의 하세요.");
	}else if(check == '5'){
		window.location.href = '/admin/userList';
		alert("관리자 권한으로 로그인.");
	}else{
		window.location.href = '/user/login';
		alert("아이디와 비번을 확인해 주세요.");
	}
	

});

</script>


</html>