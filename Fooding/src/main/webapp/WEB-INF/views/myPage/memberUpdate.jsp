<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style>
.userInfoDiv{
	align:center;
	 margin:auto;
	 
	
}
   .userInfo{
      text-align: left;
      align:center;   
      margin:auto;
      margin-top:40px;
   }

INPUT.email {
	border: 1px solid #a9a6a6;
	width: 200;
	height: 25px;
}
INPUT.password {
	border: 1px solid #a9a6a6;
	width: 170;
	height: 25px;
}

.modifyBtn{
	width: 50px;
	height: 25px;
	background: #ff5a5f;
	color : #3a3a3a;
	margin: 10px 0px;
	border:0px;
	cursor: pointer;
}

.title{
	padding: 15px 20px;
	background: white;
	border: 1px solid #ddd;
}


.namec{
	font-size: 11px;
	color: #3a3a3a;
	font-weight: bold;
	margin: 20px;
}

.subvalue{
	width: 100px;
	background: white;
	
}
.submitBtn{
	width: 50px;
	height: 25px;
	background: #ff5a5f;
	color : #3a3a3a;
	border:0px;
	cursor: pointer;
	text-align:center;
	align:center;
	margin:auto;
	margin-top:20px;
}

.value{
border: 1px solid #ddd;
padding: 10px;
background: white;
}



</style>
<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- css or js파일 연결 시키는 곳 -->

<div class="container">

	<div class="userInfoDiv">
		<table class="userInfo">
            <caption style="font-size:23px;">회원 정보</caption>
            <tbody>
                <!-- 아이디 -->
                <tr>
                    <td class="title">아이디</td>
                    <td class="value">
                        <input type="text" class="subvalue" id="user_id" readonly ></input>
                    </td>
                </tr>
                <!-- 이름 -->
                <tr>
                    <td class="title">이름</td>
                    <td class="value">
                         <input type="text" class="subvalue" id="user_name" readonly ></input><a class="namec">* 법원의 허가를 얻어 새로운 이름으로 개명한 경우 변경하실수 있습니다. </a>
                    </td>
                </tr>
                <!-- 이메일 -->
	            <tr>
                    <td class="title">이메일</td>
                    <td class="value">
                        <input type="email" class="email" id="email">
                        <button class="modifyBtn">수정</button>
                    </td>
                </tr>
                <!-- 비밀번호 -->
	            <tr>
                    <td class="title">비밀번호</td>
                    <td class="value">
                       	<input type="password" class="password" >
                       	<input type="password" class="password" >
                       	<button class="modifyBtn">수정</button>
                    </td>
                </tr>
                <!-- 생년월일 -->
	           <tr>
                    <td class="title">생년월일</td>
                    <td class="value">
                        <input type="text" class="subvalue" readonly ></input>
                    </td>
                </tr>
                <!-- 성별 -->
                <tr>
                    <td class="title">성별</td>
                    <td class="value">
                        <input type="text" class="subvalue" readonly ></input>
                    </td>
                </tr>
            </tbody>
       	 </table>
       	 
        <div class="submitBtn">확인</div>
	</div>


</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />