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
    </head> 
    <body>
        <div class="frame" style="overflow: hidden;">
			<div class="login_box xyCenter_for_loginbox">
				<div class="logo">
					<img src="/resources/img/logo.png" alt="logo">
				</div>
            
            
            <form>
				<div class="login_boxline">
					<div class="title_box">
						<div class="login_title xyCenter">
							<div class="yCenter"><img src="/resources/img/titleicon.png"></div>
                            <div class="padding"></div>
							<div class="login_title_text">
                                <div class="yCenter">하수도 시설 관리</div>
                            </div>
						</div>
					</div>
					<div class="informationbox displayNone">
						<div class="information xyCenter">
                            <div class="information_text yCenter ">아이디 또는 비밀번호가 다릅니다.</div>
                        </div>
					</div>
					<div class="textbox">
						<input type="text" placeholder="아이디" name="id" class=" xCenter" required>
					</div>
					<div class="pswbox">
						<input type="password" placeholder="비밀번호" name="pw" class=" xCenter" required>
					</div>
					<div class="loginbutton_box ">
						<button type="submit" class="loginbutton xyCenter">로그인</button>
					</div>
					<div class="login_linebox">
						<div class="login_line xyCenter"></div>
					</div>
					
					<div class="others_button">
						<button type="button" class="left">비밀번호변경</button>
						<button type="button" class="">도움말</button>
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
