
/* 대메뉴의 선택 표시 라인을 지운다 */
function Remove_Line_On() {
	$("#file_line").removeClass("on");
	$("#display_line").removeClass("on");
	$("#function_line").removeClass("on");
	$("#edit_line").removeClass("on");
	$("#manage_facility_line").removeClass("on");
	$("#manage_sewerage_line").removeClass("on");
	$("#manage_system_line").removeClass("on");
}

/* 대메뉴의 선택 폰트 스타일을 지운다 */
function Remove_fontweight_On() {
	$(".file").css("font-weight", "normal");
	$(".display").css("font-weight", "normal");
	$(".function").css("font-weight", "normal");
	$(".edit").css("font-weight", "normal");
	$(".manage_facility").css("font-weight", "normal");
	$(".manage_sewerage").css("font-weight", "normal");
	$(".manage_system").css("font-weight", "normal");
}

/* 메뉴의 배경 높이를 조절한다 */
function Set_Menu_BG_Height() {
    // 열린 메뉴를 확인한다
    var length = $('.box_menu').children().length;
    var i = 0;
    while(i < length) {
        if ($('.box_menu').children().eq(i).hasClass('on')) {
            // 높이를 조절한다
            var height_menu = $('.box_menu').children().eq(i).find('.menu_children').css('height');
            height_menu = height_menu.replace('px', '');
            height_menu = Number(height_menu);
            height_menu = height_menu + 10;
            height_menu = 'height: ' + height_menu + 'px';
            $('.box_menu').children().eq(i).find('.menu_bg1').attr('style', height_menu);
            $('.box_menu').children().eq(i).find('.menu_bg2').attr('style', height_menu);
        }
        i++;
    }
    
}

/* 이벤트 처리 */
function Set_Event() {
    
    /*******************************************/
    /*************** 상단 메뉴 관련 ***************/
    /*******************************************/
    
        /* 메인 메뉴 배경 높이 조절 */
        $(window).resize( function() { Set_Menu_BG_Height(); });

        /* 메인 메뉴 열닫 이벤트 */
        $('.box_menu .menu > div').on('click', function() {

            // 중메뉴를 모두 닫는다
            $(".menubg_box").removeClass("on");
            // 대메뉴에 있는 라인을 모두 지운다
            Remove_Line_On();
            // 눌린 대메뉴 글씨의 굵기를 바꾼다
            Remove_fontweight_On();

            // 눌린 대메뉴에 맞게 중메뉴를 연다
            var title = $(this).attr('title');

            if (title == "file") {            
                $("#menu_file").addClass("on"); 
                // 대메뉴에 맞게 라인을 나타낸다
                $(".menu > div > #file_line").addClass("on");

                $(".menu > div > .file").css("font-weight", "bold");
                // 열린 중메뉴의 높이를 알아낸다
                var heightIs = $('#menu_file > div:nth-of-type(1)').css('height');
                // 열린 중메뉴의 높이에 맞춰서 뒷 배경의 높이를 조절한다
                    // 배경의 높이는 10px 더 크므로, height를 10증가시킨다
                        // 근데 height값은 '~px'이므로 px를 없앤다
                heightIs = heightIs.replace('px', '');
                        // 근데 heightIs는 문자열이므로 숫자로 바꾼다
                heightIs = Number(heightIs);
                        // 바꾼 heightIs 10 증가시킨다
                heightIs = heightIs + 10;
                //중메뉴에 마우스커서가 벗어나면 중메뉴가 닫힌다
            }
            else if (title == "display") {
                $("#menu_display").addClass("on");
                $(".menu > div > #display_line").addClass("on");
                $(".menu > div > .display").css("font-weight", "bold");;

                var heightIs = $('#menu_display > div:nth-of-type(1)').css('height');
                heightIs = heightIs.replace('px', '');
                heightIs = Number(heightIs);
                heightIs = heightIs + 10;
            }

            else if (title == "function") {
                $("#menu_function").addClass("on");
                $("#menu_function").addClass("on");
                $(".menu > div > #function_line").addClass("on");
                $(".menu > div > .function").css("font-weight", "bold");
                var heightIs = $('#menu_function > div:nth-of-type(1)').css('height');
                heightIs = heightIs.replace('px', '');
                heightIs = Number(heightIs);
                heightIs = heightIs + 10;

            }

            else if (title == "edit") {
                $("#menu_edit").addClass("on");
                $("#menu_edit").addClass("on");
                $(".menu > div > #edit_line").addClass("on");
                $(".menu > div > .edit").css("font-weight", "bold");
                var heightIs = $('#menu_edit > div:nth-of-type(1)').css('height');
                heightIs = heightIs.replace('px', '');
                heightIs = Number(heightIs);
                heightIs = heightIs + 10;

            }

            else if (title == "manage_facility") {
                $("#menu_manage_facility").addClass("on");
                $("#menu_manage_facility").addClass("on");
                $(".menu > div > #manage_facility_line").addClass("on");
                $(".menu > div > .manage_facility").css("font-weight", "bold");
                var heightIs = $('#menu_manage_facility > div:nth-of-type(1)').css('height');
                heightIs = heightIs.replace('px', '');
                heightIs = Number(heightIs);
                heightIs = heightIs + 10;

            }

            else if (title == "manage_sewerage") {
                $("#menu_manage_sewerage").addClass("on");
                $("#menu_manage_sewerage").addClass("on");
                $(".menu > div > #manage_sewerage_line").addClass("on");
                $(".menu > div > .manage_sewerage").css("font-weight", "bold");
                var heightIs = $('#menu_manage_sewerage > div:nth-of-type(1)').css('height');
                heightIs = heightIs.replace('px', '');
                heightIs = Number(heightIs);
                heightIs = heightIs + 10;
            }

            else if (title == "manage_system") {
                $("#menu_manage_system").addClass("on");
                $("#menu_manage_system").addClass("on");
                $(".menu > div > #manage_system_line").addClass("on");
                $(".menu > div > .manage_system").css("font-weight", "bold");;
                var heightIs = $('#menu_manage_system > div:nth-of-type(1)').css('height');
                heightIs = heightIs.replace('px', '');
                heightIs = Number(heightIs);
                heightIs = heightIs + 10;

            }

            // 메뉴의 전체적인 높이를 수정한다 
            var height_inline = 'height: ' + heightIs + 'px';
            $('.menu_bg1').attr('style', height_inline);
            $('.menu_bg2').attr('style', height_inline);
            $('.menubg_box').attr('style', height_inline);
        });

        /* 맵 컨텐츠 영역을 클릭했을 때 이벤트 */
        $(".frame_sub.contents").on('click', function() {
            // 중메뉴를 모두 닫는다
            $(".menubg_box").removeClass("on");
            Remove_Line_On();
            Remove_fontweight_On();
        });
    
        /* 중메뉴, 소메뉴 클릭 이벤트 */
        $('.menu_children > div').on('click', function() {
            /*
            중소메뉴창을 닫는다
            1. 중소메뉴창을 닫는다
            */
           $(".menubg_box").removeClass("on");
            Remove_Line_On();
            Remove_fontweight_On()
        });


        /* 대메뉴:파일 -> 중메뉴:초기화면 on off 클릭 이벤트 */
        $('.onoff_button > button').on('click', function() {
            /*
            클릭된 버튼을 킨다
            1. 모든 버튼을 끈다
            2. 클릭된 버튼을 킨다
            */
            $(".onoff_button > button").removeClass("on");
            var title = $(this).attr('title');
            if (title == "on") {       
                $("#onbutton").addClass("on");
            }
            else {
                $("#offbutton").addClass("on");	
            }
            Remove_Line_On();
        });
    
        /* 대메뉴:시설물 관리 -> 중메뉴:제원 on off 클릭 이벤트 */
        $('.onoff_button2 > button').on('click', function() {

            /*
            클릭된 버튼을 킨다
            1. 모든 버튼을 끈다
            2. 클릭된 버튼을 킨다
            */
            $(".onoff_button2 > button").removeClass("on");
            var title = $(this).attr('title');
            if (title == "on") {         
                $("#onbutton2").addClass("on");
            }
            else {
                $("#offbutton2").addClass("on");
            }
            Remove_Line_On();
        });
        
        /* 대메뉴:시설물 관리 -> 중메뉴:관로 on off 클릭 이벤트 */
        $('.onoff_button3 > button').on('click', function() {

            /*
            클릭된 버튼을 킨다
            1. 모든 버튼을 끈다
            2. 클릭된 버튼을 킨다
            */
            $(".onoff_button3 > button").removeClass("on");
            var title = $(this).attr('title');
            if (title == "on") {         
                $("#onbutton3").addClass("on");
            }
            else {
                $("#offbutton3").addClass("on");
            }
            Remove_Line_On();
        });
	
    
    
    
    /*******************************************/
    /************* 사이드 메뉴 - 트리 **************/
    /*******************************************/
    
        /* 트리, 관로 화살표 이미지 클릭 이벤트 */
        $("#branch_1_arrow_icon").on('click', function() {
            /*
            화살표 이미지를 변경하고, 부메뉴들을 열닫한다
            1. 화살표가 열려있으면
                1.1. 화살표를 수정한다
                1.2. 부메뉴를 닫는다
                1.3. 라인을 수정한다
            2. 화살표가 닫혀있으면
                2.1. 화살표를 수정한다
                2.2. 부메뉴를 연다
                2.3. 라인을 수정한다
            */
            // 1. 화살표가 열려있으면
            var srcIs = $("#branch_1_arrow_icon img").attr("src");
            if (srcIs === "./asset/img/open_icon.png") {
                // 1.1. 화살표를 수정한다
                $("#branch_1_arrow_icon img").attr("src", "./asset/img/close_icon.png");
                // 1.2. 부메뉴를 닫는다
                $("#branch_1_leaf").css("display", "none");
                // 1.3. 라인을 수정한다
                $("#branch_1_line").removeClass("on");
            }
            //2. 화살표가 닫혀있으면
            else {
                //화살표를 수정한다
                $("#branch_1_arrow_icon img").attr("src", "./asset/img/open_icon.png");	
                //부메뉴를 연다
                $("#branch_1_leaf").css("display", "block")
                //라인을 수정한다
                $("#branch_1_line").addClass("on");	
            }
        });
        /* 트리, 맨홀 화살표 이미지 클릭 이벤트 */
        $("#branch_2_arrow_icon").on('click', function() {
            var srcIs = $("#branch_2_arrow_icon img").attr("src");
            if (srcIs === "./asset/img/open_icon.png") {
                $("#branch_2_arrow_icon img").attr("src", "./asset/img/close_icon.png");
                $("#branch_2_leaf").css("display", "none");
                $("#branch_2_line").removeClass("on");
            }
            else {
                $("#branch_2_arrow_icon img").attr("src", "./asset/img/open_icon.png");	
                $("#branch_2_leaf").css("display", "block")
                $("#branch_2_line").addClass("on");	
            }
        });
        /* 트리, 계획현황 화살표 이미지 클릭 이벤트 */
        $("#branch_3_arrow_icon").on('click', function() {
            var srcIs = $("#branch_3_arrow_icon img").attr("src");
            if (srcIs === "./asset/img/open_icon.png") {
                $("#branch_3_arrow_icon img").attr("src", "./asset/img/close_icon.png");
                $("#branch_3_leaf").css("display", "none");
                $("#branch_3_line").removeClass("on");
            }
            else {
                $("#branch_3_arrow_icon img").attr("src", "./asset/img/open_icon.png");	
                $("#branch_3_leaf").css("display", "block")
                $("#branch_3_line").addClass("on");	
            }
        });


        /* 트리, 관로 타이틀 체크박스 클릭 이벤트 */
        $('#branch_1_checkbox, #branch_1_title').on('click', function() {
            /*
            타이틀을 포함한 하위 메뉴들이 모두 체크되거나 해제된다
            1. 타이틀이 체크 되어 있으면
                1.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
            2. 타이틀이 체크가 안되어 있으면
                2.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
            */
            // 1. 타이틀이 체크 되어 있으면 -> false
            var text = $('#branch_1_checkbox').is(":checked");
            var titleIs = $(this).attr("title");
            if (text == false) {
                if (titleIs === "input") {
                    // input을 클릭한 경우
                    // 1.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
                    $('#branch_1_ input').attr("checked",false);
                    $('#branch_1_ input').prop("checked",false);
                }
                else {
                    // 타이틀을 클릭한 경우
                    // 1.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
                    $('#branch_1_ input').attr("checked",true);
                    $('#branch_1_ input').prop("checked",true);
                }
            }
            // 2. 타이틀이 체크가 안되어 있으면
            else {
                if (titleIs === "input") {
                    // input을 클릭한 경우
                    // 2.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
                    $('#branch_1_ input').attr("checked",true);
                    $('#branch_1_ input').prop("checked",true);
                }
                else {
                    // 타이틀을 클릭한 경우
                    // 2.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
                    $('#branch_1_ input').attr("checked",false);
                    $('#branch_1_ input').prop("checked",false);
                }
            }
        });


        /* 트리, 맨홀 타이틀 체크박스 클릭 이벤트 */
        $('#branch_2_checkbox, #branch_2_title').on('click', function() {
            // 1. 타이틀이 체크 되어 있으면 -> false
            var text = $('#branch_2_checkbox').is(":checked");
            var titleIs = $(this).attr("title");
            if (text == false) {
                if (titleIs === "input") {
                    // input을 클릭한 경우
                    // 1.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
                    $('#branch_2_ input').attr("checked",false);
                    $('#branch_2_ input').prop("checked",false);
                }
                else {
                    // 타이틀을 클릭한 경우
                    // 1.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
                    $('#branch_2_ input').attr("checked",true);
                    $('#branch_2_ input').prop("checked",true);
                }
            }
            // 2. 타이틀이 체크가 안되어 있으면
            else {
                if (titleIs === "input") {
                    // input을 클릭한 경우
                    // 2.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
                    $('#branch_2_ input').attr("checked",true);
                    $('#branch_2_ input').prop("checked",true);
                }
                else {
                    // 타이틀을 클릭한 경우
                    // 2.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
                    $('#branch_2_ input').attr("checked",false);
                    $('#branch_2_ input').prop("checked",false);
                }
            }
        });

        /* 트리, 계획현황 타이틀 체크박스 클릭 이벤트 */
        $('#branch_3_checkbox, #branch_3_title').on('click', function() {
            // 1. 타이틀이 체크 되어 있으면 -> false
            var text = $('#branch_3_checkbox').is(":checked");
            var titleIs = $(this).attr("title");
            if (text == false) {
                if (titleIs === "input") {
                    // input을 클릭한 경우
                    // 1.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
                    $('#branch_3_ input').attr("checked",false);
                    $('#branch_3_ input').prop("checked",false);
                }
                else {
                    // 타이틀을 클릭한 경우
                    // 1.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
                    $('#branch_3_ input').attr("checked",true);
                    $('#branch_3_ input').prop("checked",true);
                }
            }
            // 2. 타이틀이 체크가 안되어 있으면
            else {
                if (titleIs === "input") {
                    // input을 클릭한 경우
                    // 2.1. 타이틀을 포함한 하위 메뉴들이 모두 체크된다
                    $('#branch_3_ input').attr("checked",true);
                    $('#branch_3_ input').prop("checked",true);
                }
                else {
                    // 타이틀을 클릭한 경우
                    // 2.1. 타이틀을 포함한 하위 메뉴들이 모두 해제된다
                    $('#branch_3_ input').attr("checked",false);
                    $('#branch_3_ input').prop("checked",false);
                }
            }


        });



        /* 트리, 리프 클릭 이벤트 */
        $('.branch.leaf .title.leaf').on('click', function() {
            /*
            해당 체크박스가 체크되거나 해제된다
            1. 해당 체크박스가 체크되어 있으면
                1.1. 해당 체크박스를 해제한다
            2. 해당 체크박스가 해제되어 있으면
                2.1. 해당 체크박스를 체크한다
            */

            // 1. 해당 체크박스가 체크되어 있으면
                // 부모를 찾아서, 부모의 체크박스를 찾는다
            var chekcIs = $(this).parent().find('input').is(":checked");
            if (chekcIs == false) {
                $(this).parent().find('input').attr("checked",true);
                $(this).parent().find('input').prop("checked",true);

            }
            // 2. 해당 체크박스가 해제되어 있으면
            else {
                $(this).parent().find('input').attr("checked",false);
                $(this).parent().find('input').prop("checked",false);
            }


        });


    /*******************************************/
    /************* 사이드 메뉴 - 하단 **************/
    /*******************************************/

         /* 왼쪽 검색 타이틀 클릭 이벤트 */
        $('.menu_tab > div').on('click', function() {
            /*
            해당 버튼에 맞춰서 검색 내용들을 바꾼다
            1. 지번 검색이면
                1.1.
                1.2.
            2. 건물 검색이면
                2.1.
                2.2.
            */
            $(".menu_tab > div").removeClass("on");
            var title = $(this).attr('title');
            if (title == "tab1") {            
                $("#serach_load").addClass("on");
                $("#search_text").html('지번');
              }
            else {
                $("#serach_building").addClass("on");
                $("#search_text").html('건물');

            }
        });

         /* 왼쪽 지도 클릭 이벤트 */
        $('.submap_tab > div').on('click', function() {
            $(".submap_tab > div").removeClass("on");
                var title = $(this).attr('title');
                if (title == "teb1") { //제주군을 클릭했을때           
                    $("#area_1").addClass("on");
                    $(".sub_map > .sub_map1").css("display", "block");
                    $(".sub_map > .sub_map2").css("display", "none");

                }
                else {
                    $("#area_2").addClass("on");
                    $(".sub_map > .sub_map1").css("display", "none");
                    $(".sub_map > .sub_map2").css("display", "block");

                }
        });
    
    
    
    
    /*******************************************/
    /************* 사이드 메뉴 - etc **************/
    /*******************************************/
    
        /* 왼쪽 메뉴 열닫 이벤트 */
        $('.bt_close').on('click', function() {
            /*
            왼쪽 메뉴를 열닫한다
            1. 메뉴가 열렸으면
                1.1. 메뉴를 닫는다
                1.2. 아이콘 이미지를 바꾼다
            2. 메뉴가 닫혔으면
                2.1. 메뉴를 연다
                2.2. 아이콘 이미지를 바꾼다
            */

            // 1. 메뉴가 열렸으면
                // .box_contents_menu_left의 width 250px이면 열린 것으로 판단
            var widthIs = $(".box_contents_menu_left").css("width"); //px
            if (widthIs === "250px") { 
                // 1.1. 메뉴를 닫는다
                    // 트리를 닫는다
                $(".box_contents_menu_left > .list_tree").css("display", "none");
                    // etc를 닫는다
                $(".box_contents_menu_left > .etc").css("display", "none");
                    // 왼쪽 메뉴의  width를 줄인다
                $(".box_contents_menu_left").css("width", "0px");
                    // 맵 화면을 늘린다
                $(".box_contents_map").css("left", "0px");
                    //  아이콘 이미지를 바꾼다
                $(".bt_close img").attr("src", "./asset/img/left_menu_open.png");

            }
            // 2. 메뉴가 닫혔으면
            else {
                // 2.1. 메뉴를 연다
                    // 트리를 연다
                $(".box_contents_menu_left > .list_tree").css("display", "block");
                    // etc를 연다
                $(".box_contents_menu_left > .etc").css("display", "block");
                    // 왼쪽 메뉴의  width를 넓힌다
                $(".box_contents_menu_left").css("width", "250px");
                    // 맵 화면을 줄인다
                $(".box_contents_map").css("left", "250px");
                    // 아이콘 이미지를 바꾼다
                $(".bt_close img").attr("src", "./asset/img/left_menu_close.png");
            }
        });
    
    
    

    
    /*******************************************/
    /***************     ETC     ***************/
    /*******************************************/
    
        /* 툴바 열닫 이벤트 */
        $('.toolbar_fold').on('click', function() {
            /*
            툴바를 열닫한다
            1. 툴바가 열렸으면
                1.1. 툴바를 줄인다
                1.2. 아이콘 이미지를 바꾼다
            2. 툴바가 닫혔으면
                2.1. 툴바를 늘인다
                2.2. 아이콘 이미지를 바꾼다
            */
            //1. 툴바가 열렸으면
            var widthIs = $(".toolbar").css("width"); //px
            if (widthIs === "730px") {
                //툴바를 줄인다
            $(".toolbar").css("width", "55px");	
                //
            $(".toolbar").css("overflow", "hidden");	
                //아이콘 이미지를 바꾼다
            $(".toolbar_fold img").attr("src", "./asset/img/toolbar_icon/icon_21.png");	
            }

            //2. 툴바가 닫혔으면     
            else {
                //툴바를 늘린다
            $(".toolbar").css("width", "730px");	
                //아이콘 이미지를 바꾼다
            $(".toolbar_fold img").attr("src", "./asset/img/toolbar_icon/icon_20.png");	
            }
        });
    
}


