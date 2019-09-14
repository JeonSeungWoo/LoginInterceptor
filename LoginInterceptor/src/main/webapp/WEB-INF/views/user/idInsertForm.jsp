<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
    <head>
        <title>포천시 하수도 관리</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS -->
        <link rel="stylesheet" href="/resources/css/reset.css">
        <link rel="stylesheet" href="/resources/css/sewerage.css">
        <!-- JS -->
	    <script src="/resources/js/jquery-1.11.2.min.js"></script>
    
    </head> 
    <body>
        <div class="frame" style="overflow: hidden;">
            <div class="pw_box xyCenter_for_pwbox">
				<div class="logo"><img src="/resources/img/logo.png" alt="logo"></div>
            
            
            <form>
				<div class="pw_boxline">
					<div class="pw_title_box">
						<div class="help_icon"><img src="/resources/img/help.png" alt="도움말"></div>
						<div class="pw_title xyCenter">비밀번호 변경</div>
					</div>
					<div class="pw_informationbox ">
						<div class="pw_information xyCenter">
							- 비밀번호는 8~16자리로 생성할 수 있습니다.<br>
							- 한 가지 이상 영문자/숫자/특수문자를 포함해야 합니다.<br>
							- 특수문자는 (!/@/#/$/%/^/&/*) 만 사용 가능합니다.
						</div>
					</div>
					<div class="pw_informationbox2 xCenter displayNone">
						<div class="pw_information2 xyCenter">
							<div class="pw_information_text xyCenter">형식에 맞지 않는 비밀번호입니다.</div>
						</div>
					</div>
					<div class="textbox">
						<input type="text" placeholder="사용자 ID" name="id" class=" xCenter" required>
					</div>
					<div class="pswbox">
						<input type="password" placeholder="새로운 비밀번호" name="psw" class=" xCenter" required>
					</div>
					<div class="psw_checkbox">
						<input type="password" placeholder="새로운 비밀번호 확인" name="psw_check" required>
					</div>
					<div class="pw_linebox">
						<div class="pw_line xyCenter"></div>
					</div>
					<div class="pw_buttonbox">
						<div class="pw_button xyCenter">
							<button type="submit" class="change">회원가입</button>
							<button type="submit" class="cancel">취소</button>
						</div>
					</div>
				</div>
            </form>
            
            
			</div>
        </div>
    <!-- JS -->
    <script src="/resources/js/sewerage.js"></script>
    <script src="/resources/js/jquery-ver1_12_4.js"></script>
    <script>
        $(document).ready(function() {
            Set_Event();
        });    
    </script>
    </body>
</html>
