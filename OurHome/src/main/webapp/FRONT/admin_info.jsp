<%@page contentType="text/html;charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>   
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="/Zspace/js/asj.js?ver=1"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/bootstrap.min.css" rel="stylesheet">
<link href="/Zspace/css/asj.css" rel="stylesheet">
<link href="/Zspace/css/kim.css" rel="stylesheet">       
<title>::회원정보 관리::</title>
<script>
$(function(){
  $('#email_sel').change(function(){
	$("#email_sel option:selected").each(function(){
	  if($(this).val()=='1'){
		 $('#email2').val('');
	     $('#email2').attr("disabled",false); //#email2 활성화
	  }else{ 
		 $('#email2').val($(this).text()); //선택값 입력
		 $('#email2').attr("disabled",true); //#email2 비활성화
	  }
	})
  })
})
</script>
<style>
table td{
  padding-left:10px
}
</style>
</head>
<body>
	
<jsp:include page="../sideBar.jsp" />  

 <div id="contents"> <!-- 사이드 제외 전체구역 -->
  <div class="main">
    <div class="top">
      <img src="/Zspace/icon/mem_join.png" id="admin_info_img" width="50px">
      <div id="admin_info"><font size="4"><b>회원정보 관리</b></font><br>
           비밀번호 초기화 및 회원 탈퇴 처리가 가능합니다.<p>
      </div>
        <hr>
    </div>
    
    <div class="middle">
     <table id="admin_info_tb" align="center" style="padding-left:10px" border="2px solid gray">
      <tr>
        <td width="120px">이름</td>
        <td><input type="text" name="mem_name" disabled></td>
      </tr>
      <tr>
        <td width="120px">아이디</td>
        <td><input type="text" name="mem_id" disabled></td>
      </tr>
      <tr>
        <td width="120px">비밀번호</td>
        <!-- 초기화 버튼 클릭 시 자동으로 임의의 비밀번호 부여 -->
        <td><input type="password" name="mem_pwd" disabled>
  	        <a href="#"><button id="pwd_reset">초기화</button></a>
        </td>
      </tr>
      <tr id="addr">
        <td width="120px">주소</td>
        <td><input type="text" name="mem_zipcode">
            <button id="zipbtn">우편번호 검색</button><p><p>
            <input type="text" name="mem_addr1"> &nbsp;
            <input type="text" name="mem_addr2" width="100px" placeholder="추가 주소를 입력하세요">
        </td>
      </tr>
      <tr>
        <td width="120px">핸드폰 번호</td>
        <td><input type="text" name="mem_phone"></td>
      </tr>
      <tr> 
        <td width="120px">이메일</td>
        <td><input type="text" name="mem_email" size="13"> @
            <input type="text" name="mem_email2" id="email2" size="13">
            <select name="mem_email_sel" id="email_sel">
             <option value="" selected>선택하세요</option>
             <option value="1">직접 입력</option>
             <option value="daum.net">daum.net</option>
             <option value="google.com">google.com</option>
             <option value="naver.com">naver.com</option>
             <option value="nate.com">nate.com</option>
             <option value="empas.com">empas.com</option>
            </select>
        </td>
      </tr>
     </table>
     <div>  
       <button class="admin_info_close" onclick="histroy.back()">취소</button>
       <button class="admin_delete_mem" onclick="admin_delpop()">탈퇴 처리하기</button>
     </div>
    </div><!-- middle -->
  </div><!-- main -->
 </div>	 <!-- content -->

<jsp:include page="../footer.jsp" />
	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="/Zspace/js/bootstrap.min.js"></script>

</body>
</html>
