<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/bootstrap/bootstrap-theme.css">
<link rel="stylesheet" href="/resources/css/bootstrap/bootstrap-theme.min.css">
<link rel="stylesheet" href="/resources/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/resources/css/bootstrap/bootstrap.min.css">


</head>
<body>
<%@ include file="/resources/include/header.jsp"%>
<div class="container">
             
<div class="row">
    <div class="col-md-12">
         
        <div class="page-header">
            <h1>유저 리스트</h1>
        </div>
         
 <!--검색 STA  -->
     <div align="center">
		<form action="userList" method="get" id="form">
		
			<input id="pageHidden" type="hidden" name="page" value="${param.page}"> 
			<select id="sType" name="sType">
				<option value="null" ${param.sType == "null" ? "selected" : ""}>--</option>
				<option value="userid" ${param.sType == "userid" ? "selected" : ""}>아이디</option>
				<option value="usernm" ${param.sType == "usernm" ? "selected" : ""}>이름</option>
				<option value="email" ${param.sType == "email" ? "selected" : ""}>이메일</option>
				<option value="auth" ${param.sType == "auth" ? "selected" : ""}>권한</option>
				<option value="insertdate" ${param.sType == "insertdate" ? "selected" : ""}>등록날짜</option>
				<option value="authdate" ${param.sType == "authdate" ? "selected" : ""}>권한수정 날짜</option>
				<option value="updatedate" ${param.sType == "updatedate" ? "selected" : ""}>수정 날짜</option>
			</select>
             <input type="text" name="keyword" id="keyword" value="${param.keyword}">
             <button id="sBtn">검색 </button>
		</form>
</div>
<!--검색 End  -->
<!--리스트 시작  -->
<div class="container">
<table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">아이디</th>
      <th scope="col">이름</th>
      <th scope="col">email</th>
      <th scope="col">권한</th>
      <th scope="col">등록날짜</th>
      <th scope="col">권한 수정날짜</th>
      <th scope="col">수정 날짜</th>
    </tr>
  </thead>


<tbody>
 <c:forEach items="${list}" var="list" varStatus="status">
    
    <tr>
      <td class="td${status.index}" data-value="${list.userid}">
      <a href="/admin/userRead?userid=${list.userid}">
        ${list.userid}
      </a></td>
      <td> ${list.usernm}</td>
      <td>${list.email}</td>
      <td>
      
      <select id="auth" class="auth" name="auth" data-value="${status.index}">
      <option value="0" ${list.auth == "0" ? "selected" : ""}>0</option>
      <option value="1" ${list.auth == "1" ? "selected" : ""}>1</option>
      <option value="2" ${list.auth == "2" ? "selected" : ""}>2</option>
      <option value="3" ${list.auth == "3" ? "selected" : ""}>3</option>
      <option value="4" ${list.auth == "4" ? "selected" : ""}>4</option>
      <option value="5" ${list.auth == "5" ? "selected" : ""}>5</option>
      </select>
     
      
      </td>
      <td>${list.insertdate}</td>
      <td>${list.authdate}</td>
      <td>${list.updatedate}</td>
    </tr>
    
 
  </c:forEach>
  </tbody>
  </table>
</div>
<!--리스트 끝  -->

<!--페이징 시작  -->
<p class="paging">
		<c:if test="${Paging.prev}">
			<a  class="page_btn btn_prev" href="userList?page=${(Paging.startPage - 1)}">이전</a>
		</c:if>

		<c:forEach begin="${Paging.startPage}" end="${Paging.endPage}"   var="idx">
           
           <c:out value="${Paging.page == idx ? '':''}"/>
           <a  class="pagingNum" href="userList?page=${idx}">${idx}</a>
          			
		</c:forEach>

		<c:if test="${Paging.next && Paging.endPage > 0}">
			<a class="page_btn btn_next" href="userList?page=${Paging.endPage +1}">다음</a>
		</c:if>

</p>

<!--페이징 끝  -->


    </div>
</div>
     
</div>







<script src="/resources/js/bootstrap/bootstrap.js"></script>
<script src="/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="/resources/js/bootstrap/npm.js"></script>
<script src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
	

	
 	$(".auth").change(function(){
		var val = $(this).val();
		var valSt = $(this).attr("data-value");
		var idtx = ".td"+valSt;
		var id = $(idtx).text();
		alert(val);
		alert(id);
		
		
	});

	
	$("#sBtn").on("click",function(event){
		event.preventDefault();
		$("#pageHidden").val(1);
		$("#form").submit();
	});
	
	
	
	
});

	
	
	


</script>
</body>

</html>