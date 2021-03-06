<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<style>

    .contentbox, .leftbox{
        margin-top: 52px;
    }
    
 	#header{
 		position:fixed;
 	}
 	
 	/* The Modal (background) */
	#myModal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 100; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	}
	
	/* Modal Content/Box */
	#modal-content {
		background-color: #fefefe;
		margin: 15% auto; /* 15% from the top and centered */
		padding: 20px;
		border: 1px solid #888;
		width: 17%; /* Could be more or less, depending on screen size */
	}
	
	#searchModal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 100; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	}
	
	/* Modal Content/Box */
	#searchModal-content {
		background-color: #fefefe;
		margin: 15% auto; /* 15% from the top and centered */
		padding: 20px;
		border: 1px solid #888;
		width: 30%; /* Could be more or less, depending on screen size */
	}
	
	#changeModal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 100; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	}
	
	/* Modal Content/Box */
	#changeModal-content {
		background-color: #fefefe;
		margin: 15% auto; /* 15% from the top and centered */
		padding: 20px;
		border: 1px solid #888;
		width: 30%; /* Could be more or less, depending on screen size */
	}
	
	.input-left {
		width: 70%;
		float: left;
		margin-left : 2px;
	}
	
	.input {
		display: inline-block;
		margin-bottom: 12px;
		width: 60%;
	}
	
	.inputname{
		display: inline-block;
		width: 35%;
		text-align: left;
	}
	
	#searchbtn {
		width: 70px;
		height: 70px;
		margin-left: 3%;
	}
	
	.search{
		text-align:center;
		margin-bottom : 20px;
	}
	
	#loginbtn{
		width: 70px;
		height: 70px;
		margin-left: 3%;
		border: 1px solid #3b3b46;
		border-radius: 5px;
		background: white;
	}
	
	#searchIdBtn, #searchPwBtn {
		border: 1px solid #3b3b46;
		border-radius: 5px;
		background: white;
	}
	
	#searchIdBtn:hover, #loginbtn:hover, #searchPwBtn:hover{
	    background-color: #3b3b46;
	    color: #fff;
	}
	
	#searchIdBtn{
		width: 70px;
		height: 70px;
		margin-left: 3%;
	}
	
	#searchPwBtn{
		width: 70px;
		height: 110px;
		margin-left: 3%;
	}
	
	#changebtn{
		width: 70px;
		height: 70px;
		margin-left: 3%;
	}
	
	.input-right{
		margin-bottom: 5%;
	}
	
	.dropbtn {
		background : white;
		color: black;
		padding: 15px;
		font-size: 16px;
		border: none;
	}

	.dropdown {
	  position: relative;
	  display: inline-block;
	}

	.dropdown-content {
		height: auto;
		display: none;
		position: absolute;
		min-width: 160px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		background : white;
		z-index: 1;
	}

	.dropdown-content a {
	  color: black;
	  padding: 10px;
	  height: 30px;
	  text-decoration: none;
	  text-align: center;
	  display: block;
	}

	.dropdown-content a:hover {background-color: #ddd;}
	
	.dropdown:hover .dropdown-content {display: block;}
	
	.user-popup{
		display: none;
	}
	
	.logo{
		width: 175px;
		height: 52px;
		margin-top: 5px;
		margin-left: 6px;		
	}
	
	.nav{
		padding-top: 17px; 
	}
	#loginLogo{
		width: 200px;
		margin-top : 10px;
		margin-bottom: 12px;
	}
	#loginPage{
		margin-left : 5px;
		margin-bottom: 40px;
	}
	.loginFail{
		margin-bottom: 10px;
	}
</style>

<script>

$(document).ready(function() {
    $('#login').on('click',function(){
		 $('#myModal').show();
    });
    $('#join').on('click',function(){
    	document.location="/login/join.do"
    });
    $('#myProfile').on('click',function(){
    	document.location="/member/myprofileview.do"
    });
    
    $('.search').on('click',function(){
		 $('#searchModal').show();
    });
    
    $('#searchIdBtn').on('click',function(){
    	retrieveId();
    });
    $('#searchPwBtn').on('click',function(){
    	retrievePw();
    });
    $('#changebtn').on('click',function(){
		if($('#memPw1').val()!='' && $('#memPw2').val()!=''){
			if($('#memPw1').val()!=$('#memPw2').val()){
				if(!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/.test($("#memPw1").val()) || !/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/.test($("#memPw2").val())){
					$('#checkPw').empty();
					$('#checkPw').append('<span style="color:red">비밀번호는 최소 하나의 문자, 숫자로 최소 8자리 입력가능합니다.</span><br><br>');
				}else{
					$('#checkPw').empty();
					$('#checkPw').append('<span style="color:red">비밀번호가 일치하지 않습니다</span><br><br>');
				}
			}else if($('#memPw1').val()==$('#memPw2').val()){
				if(!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/.test($("#memPw1").val()) || !/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/.test($("#memPw2").val())){
					$('#checkPw').empty();
					$('#checkPw').append('<span style="color:red">비밀번호는 최소 하나의 문자, 숫자로 최소 8자리 입력가능합니다.</span><br><br>');
				}else{
					updatePw();
				}
			}
		}
    });
    
    $('.profile-btn.false').on('click',function(){
    	$('.user-popup').toggle();
    });
    
    $('.logout').on('click',function(){
    	alert('로그아웃 되었습니다')
    	document.location="/login/logout.do";
    });
    
    $(document).mouseup(function(){
		$('.user-popup').hide();
	});
    
    boardGubunList();
});
   	function retrieveId(){
   		memNm = $('#searchIdName').val();
    	memTel = $('#searchIdTel').val();
    	
   		$.ajax(
   			{url:"/member/retrieveid.do",
   			data : {memNm : memNm, memTel :memTel},
   			method : "get",
   			success : function(data){
   				console.log(data.searchMemberVo)
   				if(data.searchMemberVo==null){
   					html = '<br>'+'일치하는 회원정보가 존재하지 않습니다.';
	   				$('#findId').html(html);
   				}else{
	   				html = '아이디는 ' +data.searchMemberVo.memId +'입니다.';
	   				$('#findId').html(html);
   				}
   			},
   			error: function(data){
   				//console.log(data.status);
   			}
   		});
   	}
   	function retrievePw(){
   		memId = $('#searchPwId').val();
    	memNm = $('#searchPwName').val();
    	memTel = $('#searchPwTel').val();
    	
   		$.ajax(
   			{url:"/member/retrievepw.do",
   			data : {memNm : memNm, memTel :memTel, memId : memId},
   			method : "get",
   			success : function(data){
   				if(data.searchMemberVo == null){
   					html = '일치하는 회원정보가 존재하지 않습니다.';
   					$('#findPw').html(html);
   				}else{
	   				$('#changeModal').show();
   				}
   			},
   			error: function(data){
   				//console.log(data.status);
   			}
   		});
   	}
   	function updatePw(){
   		memId = $('#searchPwId').val();
    	memPw = $('#memPw1').val();
    	
    	if($('#memPw1').val()!= $('#memPw2').val()){
    		alert('비밀번호가 일치 하지 않습니다.');
    	}else{
	   		$.ajax(
	   			{url:"/member/updatepw.do",
	   			data : {memId :memId, memPw : memPw},
	   			method : "get",
	   			success : function(data){
	   				//console.log(data.updateCnt);
	   				if(data.updateCnt == 1){
	   					$('#checkPw').empty();
		   				alert("비밀번호 변경이 완료되었습니다.");
		   				document.location = '/login/main.do';
	   				}else{
	   					$('#checkPw').empty();
		   				alert("비밀번호 변경이 실패되었습니다.");
	   				}
	   			},
	   			error: function(data){
	   				//console.log(data.status);
	   			}
	   		});
	   	}
	}
    	
//팝업 Close 기능
function close_pop(flag) {
	$('#myModal').hide();
	$('.loginFail').empty();
};
function search_close_pop(flag) {
	$('#searchModal').hide();
	$('#searchIdName').val("");
	$('#searchIdTel').val("");
	$('#changeModal').hide();
	$('#searchPwId').val("");
	$('#searchPwName').val("");
	$('#searchPwTel').val("");
	$('#findId').html("");
	$('#findPw').html("");
};
function change_close_pop(flag) {
	$('#changeModal').hide();
};

function boardGubunList(){
	$.ajax({url : "/boardGubun/retrieveList.do",
		method : "get",
		success : function(data){
			var html = "";
			for(var i = 0; i< data.boardGubunList.length ; i++){
				var gubun = data.boardGubunList[i];
				if(gubun.boardGbSt == "Y"){
					
					html += '<a href="/board/retrievePagingList.do?boardGbSq='+ gubun.boardGbSq +'&boardGbNm='+gubun.boardGbNm+'">'+gubun.boardGbNm+'</a>';

				}
			};
			$('#boardGubunList').append(html);
		}
	});	
}

</script>

<!-- header -->
<div class="TopBar undefined" id  ="header" >
	<div class="navigation-bar">
		<a class="iam-logo" href="/login/main.do">
			<img src="/images/Ai_Interview 로고.png" alt="logo" class="logo">
		</a>
		<div class="nav">
			<c:choose>
				<c:when test="${S_MEMBER.memId == null }">
					<a class="main false" href="/login/home.do">내 면접</a>
				</c:when>
				<c:otherwise>
					<a class="main false" href="/analysis/interview/retrievePagingList.do">내 면접</a>
				</c:otherwise>
			</c:choose>
			
			<div class="dropdown">
				<a class="main false dropbtn">게시판</a>
				<div class="dropdown-content" id="boardGubunList">
				</div>
			</div>
			
			<a class="service-intro false" href="/login/serviceIntro.do">서비스 소개</a>
			<a class="help-info false" href="/login/help.do">도움말</a>
			<c:choose>
				<c:when test="${S_MEMBER.memAuth == 'Y' || S_MEMBER.memAuth == 'C'}">
					<a class="managepage false" href="/login/manage.do">관리자 페이지</a>
				</c:when>
			</c:choose>
		</div>
	</div>
	<div style="justify-content: flex-end;">
		<c:choose>
			<c:when test="${S_MEMBER == null }">
				<button id="login" class="login" style="margin-left: 0px; margin-right: 0px;">로그인</button>
				<button id="join" class="login"  style="margin-left: 0px;">회원가입</button>
			</c:when>
		</c:choose>
	</div>
		<c:choose>
			<c:when test="${S_MEMBER != null }">
				<div class="user-tool">
					<a class="payment-btn" href="/plan/planList.do">이용권 구매</a>
					<div class="profile-btn false">
						<c:choose>
							<c:when test="${S_MEMBER.memProfileNm == null }">
								<img alt="" src="/images/defaultImage.jpg" class="profile-icon">${S_MEMBER.memAlias }
							</c:when>
							<c:otherwise>
								<img src="/member/profile.do?memId=${S_MEMBER.memId }" alt="profile-icon" class="profile-icon">${S_MEMBER.memAlias }
							</c:otherwise>
						</c:choose>
					</div>
					
					<div class="user-popup">
						<div class="profile-area">
							<c:choose>
								<c:when test="${S_MEMBER.memProfileNm == null }">
									<img alt="" src="/images/defaultImage.jpg" class="profile-icon">${S_MEMBER.memAlias }
								</c:when>
								<c:otherwise>
									<img src="/member/profile.do?memId=${S_MEMBER.memId }" alt="profile-icon" class="profile-icon">${S_MEMBER.memAlias }
								</c:otherwise>
							</c:choose>
						</div>
						<div class="profile-link-area">
							<a id="myProfile" class="personal-info btn">내 프로필</a>
						</div>
						<div class="link-area">
							<a class="profile-edit btn" href="/member/updateview.do">프로필 수정</a>
								<a class="ticket-info btn" href="/member/myprofileview.do?ticket=info">이용권 정보</a>
								<a class="payment-list btn" href="/plan/totalPayList.do">결제 내역</a>
						</div>
						<div class="logout">로그아웃</div>
					</div>
				</div>
			</c:when>
		</c:choose>
</div>
<div id="myModal" class="modal">

		<!-- Modal content -->
		<div id="modal-content">
			<p id="loginPage" style="text-align: left;" >
				<img id="loginLogo" src="/images/ai_interview_logo_big.png"><br>
				<span style="font-size: 14pt;"><b>
				<span style="font-size: 24pt;">당신 옆의
				<br>면접 트레이너
				</span></b></b></span>
			</p>
			<form action="/login/process.do" method="post">
				<div class="input-left">
					<span class="inputname">아이디</span> <input class="input" type="text" name="loginMemId"><br>
					<span class="inputname">비밀번호</span> <input class="input" type="password" name="loginMemPw"><br>
				</div>
				<div class="input-right">
					<button id="loginbtn" type="submit">로그인</button>
				</div>
				<div class="loginFail">
				</div>
				<div class="search">
					<a>아이디/비밀번호 찾기</a>
				</div>
			</form>
			<br>
			<div
				style="font-weight: bold; color: white; cursor: pointer; background-color: #3b3b46; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="close_pop();">
				<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
			</div>
		</div>
	</div>
	
	<!-- search Modal content -->
	<div id="searchModal" class="modal">

		<!-- searchModal content -->
		<div id="searchModal-content">
			<p style="text-align: left;">
				<span style="font-size: 14pt;"><b><span
						style="font-size: 24pt;">아이디찾기
					</span></b></span>
			<p style="text-align: center; line-height: 1.5;">
			<form action="/member/idSearch" method="get">
				<div class="input-left">
					<span class="inputname">이름 </span> <input id="searchIdName" name="memNm" class="input" type="text"><br>
					<span class="inputname">연락처</span> <input id="searchIdTel" name="memTel" class="input" type="text"><br>
				</div>
				<div class="input-right" style="margin-bottom: 10px;">
					<button id="searchIdBtn" type="button">찾기</button>
				</div>
			</form>
			<div style="text-align: center;">
				<span style="color: red" id="findId"></span>
			</div>
			
			<p style="text-align: left;">
				<span style="font-size: 14pt;"><b><span
						style="font-size: 24pt;">비밀번호찾기
					</span></b></span>
			</p>
			<form action="">
				<div class="input-left">
					<span class="inputname">아이디 </span> <input id="searchPwId" class="input" type="text" ><br>
					<span class="inputname">이름 </span> <input id="searchPwName" class="input" type="text" ><br>
					<span class="inputname">연락처</span> <input id="searchPwTel" class="input" type="text" ><br>
				</div>
				<div class="input-right">
					<button id="searchPwBtn" type="button">찾기</button>
				</div>
			</form>
			<div style=" margin-top: 20px;">
				<span style="color: red;" id="findPw"></span>
			</div>
			<br>
			<div
				style="font-weight: bold; color: white; cursor: pointer; background-color: #3b3b46; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="search_close_pop();">
				<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
			</div>
		</div>
	</div>
	
	<!-- change Modal content -->
	<div id="changeModal" class="modal">

		<!-- changeModal content -->
		<div id="changeModal-content">
			<p style="text-align: left;">
				<span style="font-size: 14pt;">
					<b><span style="font-size: 24pt;">[비밀번호 변경] </span></b>
				</span>
			</p>
			<p style="text-align: center; line-height: 1.5;">
			<form action="">
				<div class="input-left">
					<span class="inputname">새 비밀번호 </span> <input id="memPw1" class="input" type="password"><br>
					<span class="inputname">새 비밀번호 확인</span> <input id="memPw2" class="input" type="password"><br>
				</div>
				<div class="input-right">
					<button id="changebtn" type="button">변경</button>
				</div>
				<div id="checkPw">
				
				</div>
			</form>
			<div
				style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="change_close_pop();">
				<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
			</div>
		</div>
	</div>