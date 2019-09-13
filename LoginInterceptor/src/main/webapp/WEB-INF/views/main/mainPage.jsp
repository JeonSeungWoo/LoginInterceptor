<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <div class="frame">
            <!-- 메뉴 -->
			<div class="frame_sub header">
                <!-- 보조 -->
                <div class="box_menu_sub ">
                	<div class="gnb_wrap yCenter">
                		<div class="id">ID : qwer1234</div>
                		<div>로그아웃</div>
                		<div>도움말</div>
                	</div>
                </div>
                <!-- 메인 메뉴 -->
                <div class="box_menu">
                    <!-- 로고 -->
                    <div class="main_logo"> <img src="/resources/img/logo2.png" alt="main_logo" class="xyCenter"></div>
                    <!-- 메뉴_대 -->
                    <div class="menu">
                       	<div class="deps1_1" title="file">
                        	<div class="file xyCenter">파일</div>
                        	<div class="line" id="file_line"></div>
                        </div>
                        <div class="deps1_2" title="display">
                        	<div class="display xyCenter">화면</div>
                        	<div class="line " id="display_line"></div>
                        </div>
                        <div class="deps1_3" title="function">
                        	<div class="function xyCenter">공통기능</div>
                        	<div class="line2 " id="function_line"></div>
                        </div>
                        <div class="deps1_4" title="edit">
                        	<div class="edit xyCenter">편집</div>
                        	<div class="line " id="edit_line"></div>
                        </div>
                        <div class="deps1_5" title="manage_facility">
                        	<div class="manage_facility xyCenter">시설물관리</div>
                        	<div class="line3 " id="manage_facility_line"></div>
                        </div>
                        <div class="deps1_6" title="manage_sewerage">
                        	<div class="manage_sewerage xyCenter">하수업무관리</div>
                        	<div class="line4 " id="manage_sewerage_line"></div>
                        </div>
                        <div class="deps1_7" title="manage_system">
                        	<div class="manage_system xyCenter">시스템관리</div>
                        	<div class="line3 " id="manage_system_line"></div>
                        </div>
                    </div>
                    <!-- 메뉴_중의 부모 -->
                    <!-- 파일 -->
                    <div class="menubg_box" id="menu_file">
<!--						<div class="menu_children" style="min-width: 1320px;">-->
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">북마크 열기</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">북마크 저장</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">도면복사</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">도면저장</div>
								</div>
							</div>
							<div>
								<div class="deps2 deps2_5">
								<div class="xyCenter">도면출력</div>
								</div>
								<div class="deps3">
									<div>- 화면출력</div>
									<div>- 축척별 출력</div>
									<div>- 화면 분활 출력</div>                        		
								</div>
							</div>
							<div class="screen_set">
								<div class="deps2">
									<div class="xyCenter">초기화면 설정</div>
								</div>
								<div class="onoff_button" title="onoff">
									<button type="button" id="onbutton" title="on" >ON</button>
									<button type="button" id="offbutton" title="off" >OFF</button>
								</div>
							</div>
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                    </div>
                    <!-- 화면 -->
                    <div class="menubg_box" id="menu_display">
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">화면이동</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">화면확대</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">화면축소</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">이전화면</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">전체보기</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">도면갱신</div>
								</div>
							</div>
							
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                   		
                    </div>
                    <!-- 공통기능 -->
                    <div class="menubg_box" id="menu_function">
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">시설물 선택</div>
								</div>
								<div class="deps3">
									<div>- 객체 선택</div>
									<div>- 사각형 선택</div>
									<div>- 원형 선택</div>
									<div>- 다각형 선택</div>                        		
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">시설물 선택해제</div>
								</div>
								<div class="deps3">
									<div>- 거리산출</div>
									<div>- 면적산출</div>
									<div>- 좌표보기</div>
								</div>
							</div>
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                   		
                    </div>
                    <!-- 편집 -->
                    <div class="menubg_box" id="menu_edit">
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">시설물 편집</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">시설물 삭제</div>
								</div>
							</div>
							
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                   		
                    </div>
                    <!-- 시설물관리 -->
                    <div class="menubg_box" id="menu_manage_facility">
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">시설물 정보관리</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">사진대지</div>
								</div>
								<div class="deps3">
									<div>- 대지등록</div>
									<div>- 대지출력</div>
									<div>- 대지삭제</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">관로 CCTV</div>
								</div>
								<div class="deps3">
									<div>- CCTV등록</div>
									<div>- CCTV출력</div>
									<div>- CCTV삭제</div>
								</div>
							</div>
							<div class="screen_set">
								<div class="deps2">
									<div class="xyCenter">제원</div>
								</div>
								<div class="onoff_button2" title="onoff">
									<button type="button" id="onbutton2" title="on">ON</button>
									<button type="button" id="offbutton2" title="off">OFF</button>
								</div>
							</div>
							<div class="screen_set">
								<div class="deps2">
									<div class="xyCenter">관로방향</div>
								</div>
								<div class="onoff_button3" title="onoff">
									<button type="button" id="onbutton3" title="on">ON</button>
									<button type="button" id="offbutton3" title="off">OFF</button>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">지번검색</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">건물검색</div>
								</div>
							</div>
							
							
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                   		
                    </div>
                    <!-- 하수업무관리 -->
                    <div class="menubg_box" id="menu_manage_sewerage">
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">관로 흐름도</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">하수통계</div>
								</div>
								<div class="deps3">
									<div class="">- 처리구역별 시설물 현황</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="deps2_text xyCenter">처리구역경계 지번</div>
								</div>
							</div>						
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                   		
                    </div>
                    <!-- 시스템관리 -->
                    <div class="menubg_box" id="menu_manage_system">
						<div class="menu_children">
							<!-- 메뉴_중 -->
							<div>
								<div class="deps2">
									<div class="xyCenter">사용자관리</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">레이어제어</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">시스템백업</div>
								</div>
							</div>
							<div>
								<div class="deps2">
									<div class="xyCenter">시스템복구</div>
								</div>
							</div>
						</div>
						<div class="menu_bg1"><img src="/resources/img/menu_bg.png" alt=""></div>
                   		<div class="menu_bg2"></div>
                   		
                    </div>
                </div> 
            </div>
            
            <!-- 컨텐츠 -->
            <div class="frame_sub contents">
                <!-- 맵 사이드 메뉴  -->
                <div class="box_contents_menu_left">
                    <!-- 트리 -->
                	<div class="list_tree">
                        <!-- 관로 --> 
                        <div class="branch" id="branch_1_">
                            <!-- 타일 -->
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y" id="branch_1_line"></div>
                                <div></div>
                            </div>
                            
                            <!-- 열닫, 체크박스, 타이틀 -->
                            <div class="onOff" id="branch_1_arrow_icon">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter" id="branch_1_checkbox" title="input">
                            </div>
                            <div class="title" id="branch_1_title" title="title">
                                <span class="yCenter">관로</span>
                            </div>
                            
                            <!-- 여백 -->
                            <div class="padding displayNone">
                                <div class="tile">
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>
                                </div>
                                <div class="tile">
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>
                                </div>
                            </div>
                            
                            <!-- 관로하위 -->
                            <div class="" id="branch_1_leaf">
                                <div class="branch leaf">
                                <div class="tile">
                                    <!-- top -->
                                    <div></div>
                                    <div class="line_y on "></div>
                                    <div></div>

                                    <!-- middle -->
                                    <div class="line_x left "></div>
                                    <div class="middle on"></div>
                                    <div class="line_x right"></div>

                                    <!-- bottom -->
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>
                                </div>

                                <div class="tile">
                                    <!-- top -->
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>

                                    <!-- middle -->
                                    <div class="line_x left"></div>
                                    <div class="middle on"></div>
                                    <div class="line_x right on"></div>

                                    <!-- bottom -->
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>
                                </div>

                                <div class="tile">
                                    <!-- top -->
                                    <div></div>
                                    <div class="line_y"></div>
                                    <div></div>

                                    <!-- middle -->
                                    <div class="line_x left on"></div>
                                    <div class="middle on"></div>
                                    <div class="line_x right"></div>

                                    <!-- bottom -->
                                    <div></div>
                                    <div class="line_y"></div>
                                    <div></div>
                                </div>

                                <div class="check leaf">
                                    <input type="checkbox" class="xyCenter" id="1234">
                                </div>
                                <div class="icon">
                                    <img class="yCenter" src="/resources/img/submenu_img1.png">
                                </div>
                                <div class="title leaf">
                                    <span class="yCenter">합류식원형관</span>
                                </div>
                            </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">분류식우수관</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">분류식오수관</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">차집자연유하</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">차집압송</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">개거</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">측구</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">암거</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">암거외벽</span>
                                    </div>
                                </div>
                            </div>
                        </div>
              
                         <!-- 맨홀 --> 
                        <div class="branch" id="branch_2_">
                            <!-- 타일 -->
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y" id="branch_2_line"></div>
                                <div></div>
                            </div>
                            
                            <!-- 열닫, 체크박스, 타이틀 -->
                            <div class="onOff" id="branch_2_arrow_icon">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter" id="branch_2_checkbox" title="input">
                            </div>
                            <div class="title" id="branch_2_title" title="title">
                                <span class="yCenter">맨홀</span>
                            </div>
                            
                            <!-- 여백 -->
                            <div class="padding displayNone">
                                <div class="tile">
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>
                                </div>
                                <div class="tile">
                                    <div></div>
                                    <div class="line_y on"></div>
                                    <div></div>
                                </div>
                            </div>
                            
                            <!-- 맨홀하위 --> 
                            <div class="" id="branch_2_leaf">
                                <div class="branch leaf">
                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">1호맨홀</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">2호맨홀</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">3호맨홀</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">4호맨홀</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">특1호매물</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">특2호매물</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">특3호매물</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">특4호매물</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">특5호매물</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">집수정</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">구거용맨홀</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">부관부착맨홀</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">차집용맨홀</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       	<!-- 받이-->
                        <div class="branch">
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y "></div>
                                <div></div>
                            </div>
                            
                            <div class="onOff">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter">
                            </div>
                            <div class="title">
                                <span class="yCenter">받이</span>
                            </div>
                        </div>
                        <!-- 기타-->
                        <div class="branch">
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                            </div>
                            
                            <div class="onOff">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter">
                            </div>
                            <div class="title">
                                <span class="yCenter">기타</span>
                            </div>
                        </div>
                        <!-- 처리시설-->
                        <div class="branch">
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                            </div>
                            
                            <div class="onOff">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter">
                            </div>
                            <div class="title">
                                <span class="yCenter">처리시설</span>
                            </div>
                        </div>
                        <!-- 계획현황-->
                        <div class="branch" id="branch_3_">
                            <!-- 타일 -->
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y" id="branch_3_line"></div>
                                <div></div>
                            </div>
                            
                            <!-- 열닫, 체크박스, 타이틀 -->
                            <div class="onOff" id="branch_3_arrow_icon">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter" id="branch_3_checkbox" title="input">
                            </div>
                            <div class="title" id="branch_3_title" title="title">
                                <span class="yCenter">계획현황</span>
                            </div>
                            
                            <!-- 계확현황 하위-->
                            <div class="" id="branch_3_leaf">
                                <div class="branch leaf">
                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">우수계획</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">오수계획</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">관로현황</span>
                                    </div>
                                </div>
                                <div class="branch leaf">
                                    <div class="tile ">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on "></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left "></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y on"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right on"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="tile">
                                        <!-- top -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>

                                        <!-- middle -->
                                        <div class="line_x left on"></div>
                                        <div class="middle on"></div>
                                        <div class="line_x right"></div>

                                        <!-- bottom -->
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>

                                    <div class="check leaf">
                                        <input type="checkbox" class="xyCenter">
                                    </div>
                                    <div class="icon">
                                        <img class="yCenter" src="/resources/img/submenu_img1.png">
                                    </div>
                                    <div class="title leaf">
                                        <span class="yCenter">계획관거</span>
                                    </div>
                                </div>
                                <div class="padding">
                                    <div class="tile">
                                        <div></div>
                                        <div class="line_y on"></div>
                                    </div>
                                    <div class="tile">
                                        <div></div>
                                        <div class="line_y"></div>
                                        <div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 경계-->
                        <div class="branch">
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left"></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                            </div>
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                            </div>
                            
                            <div class="onOff">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter">
                            </div>
                            <div class="title">
                                <span class="yCenter">경계</span>
                            </div>
                        </div>
                        <!-- 지형지물-->
                        <div class="branch">
                            <div class="tile">
                                <!-- top -->
                                <div></div>
                                <div class="line_y on"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left "></div>
                                <div class="middle on"></div>
                                <div class="line_x right on"></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                            </div>
                            <div class="tile ">
                                <!-- top -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                                
                                <!-- middle -->
                                <div class="line_x left on"></div>
                                <div class="middle on"></div>
                                <div class="line_x right "></div>
                                
                                <!-- bottom -->
                                <div></div>
                                <div class="line_y"></div>
                                <div></div>
                            </div>
                            
                            <div class="onOff">
                                <img class="xyCenter" src="/resources/img/close_icon.png">
                            </div>
                            <div class="check">
                                <input type="checkbox" class="xyCenter">
                            </div>
                            <div class="title">
                                <span class="yCenter">지형지물</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="etc">
                      	<!-- 지번검색 -->
                        <div class="search_tab">
                            <div class="menu_tab">
                                <div class="on" title="tab1" id="serach_load">
                                    <div class="xyCenter">지번 검색</div>
                                </div>
                                <div class="" title="tab2" id="serach_building">
                                    <div class="xyCenter">건물 검색</div>
                                </div>
                            </div>
                        </div>
                        <div class="select_box">
                            <div class="xyCenter">
                                <div><span class="yCenter">읍/면</span>
                                    <select name="" class="">
                                            <option value="">전체</option>
                                    </select>
                                </div>	
                                <div><span class="yCenter">리</span>
                                    <select name="" class="margin">
                                        <option value="">전체</option>
                                    </select>
                                </div>		
								<div><span id="search_text" class="yCenter">지번</span>
                                    <input type="search ">
                                     <button type="submit" class="yCenter">
                                     	<div class="xyCenter ">검색</div>
                                     </button>
                                     
                                </div>	
                            </div>
                        </div>
						<!-- 남제주군 -->
                        <div class="submap_tab">
                            <div class="on" title="teb1" id="area_1">
                                <div class="xyCenter">남제주군</div>
                            </div>
                            <div class="" title="teb2" id="area_2">
                                <div class="xyCenter">지역별</div>
                            </div>
                        </div>
                        
                        <div class="sub_map" title="sub_map">
                            <div class="sub_map1"></div>
                            <div class="sub_map2"></div>
                        </div>
                    </div>
                	
                    <!-- 사이드 바 -->
                    <div class="bt_close yCenter">
                        <img src="/resources/img/left_menu_close.png" alt="">
                    </div>
				</div>
                <!-- 맵 화면 -->
                <div class="box_contents_map">
                	<div class="toolbar" title="toolbar">
                		<div class="toolbar_icon yCenter">
                			<div><img src="/resources/img/toolbar_icon/icon_1.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_2.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_3.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_4.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_5.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_6.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_7.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_8.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_9.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_10.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_11.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_12.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_13.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_14.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_15.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_16.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_17.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_18.png" alt=""></div>
                			<div><img src="/resources/img/toolbar_icon/icon_19.png" alt=""></div>
                		</div>
                		<div class="toolbar_fold"><img src="/resources/img/toolbar_icon/icon_20.png" alt=""></div>
                	</div>
                	
                	<div class="footer">
                		<div class="yCenter">
							<div class="yCenter">화면거리</div>
							<div class="value_box">
								<div class="yCenter">86828</div>
							</div>
						</div>	
						<div class="yCenter">
							<div class="yCenter">HOME > 메인화면</div>
						</div>
						<div class="yCenter">
							<div class="yCenter">마우스로 클릭하여 객체를 선택합니다.</div>
						</div>
                	</div>
                </div>
                

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












