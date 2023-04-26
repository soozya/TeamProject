<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>  
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/bootstrap.min.css" rel="stylesheet">
<link href="/Zspace/css/asj.css" rel="stylesheet">
 <link href="/Zspace/css/kim.css" rel="stylesheet">  
 
<title>::비밀번호 재설정하기::</title>
<script>
  $(function(){
    $('#pwdbtn').click(function(){
	  alert('비밀번호 재설정 준비 중');
    })
  })      
       
</script>
</head>
<body>

<jsp:include page="../sideBar.jsp" /> 
 
 <div id="contents"> <!-- 사이드 제외 전체구역 -->
  <div class="main">  
    <div class="top">
      <img src="/Zspace/icon/find_pwd.png" id="pwd_update_img" width="45px"> 
      <div id="pwd_upda"><font size="4"><b>비밀번호 재설정하기</b></font><br>
            영소문자 / 숫자 / 특수기호 3가지 포함 8자~16자 <p>
      </div>
       <hr>
    </div>
      
    <div class="middle" align="center">
      <form id="pwd_update_fm" method="post" action="#">
        <table id="pwd_update_tb">
          <tr align="left" height="50">
            <td colspan="3" id="pwd_check" valign="middle"><b>비밀번호 입력</b></td>
          </tr>
          <tr height="30">
            <td id="pwd" width="140">비밀번호 입력</td>
            <td colspan="2" width="260">
             <span class="pwu_pop" title="※ 비밀번호 입력 조건 
  - 영소문자 / 숫자 / 특수기호 3가지 포함 8자~16자
  - 입력가능 특수문자 [ ~, !, @, #, $, ^, -, _ ] 
  - 공백 입력 불가능">
             <input type="password" name="mem_pwd" placeholder="비밀번호"></span></td>
          </tr>
          <tr height="50">
            <td id="pwd" width="140">비밀번호 확인</td>
            <td width="260"><input type="password" name="mem_pwd2" placeholder="비밀번호 확인"></td>
            <td width="95"><button id="pwdbtn">인증하기</button></td>
          </tr>
        </table>
      </form>
    </div> <!-- middle -->    
  </div> <!-- 메인 --> 
 </div> <!-- contents -->

<jsp:include page="../footer.jsp" /> 

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="/Zspace/js/bootstrap.min.js"></script>

</body>
</html>
