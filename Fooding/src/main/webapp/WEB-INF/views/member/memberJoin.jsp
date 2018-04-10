<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<style>
.basic {
   width: 600px;
   height: 1000px;
   border: 1px solid lightgray;
   margin: 0 auto;
   text-align: center;
   background-color: white;
}

.join {
   text-align: center;
}

.sb {
   text-decoration: none;
   text-indent: 0px;
   line-height: 23px;
   -moz-border-radius: 0px 0 0px 0;
   -webkit-border-radius: 0px 0 0px 0;
   border-radius: 0px 0 0px 0;
   text-align: center;
   vertical-align: middle;
   display: inline-block;
   font-size: 15px;
   color: grey;
   width: 202px;
   height: 40px;
   padding: 11px;
   border-color: grey;
   border-width: 1px;
   border-style: solid;
   background: white;
}

.sb:active {
   position: relative;
   top: 3px
}

.sb:hover {
   cursor: pointer;
}

.submit {
   color: red;
   border: 1px solid red;
   width: 100px;
   height: 30px;
   background: white;
}


.title {
   font-weight: bold;
   font-size: 23px;
}

.subtitle {
   font-weight: bold;
   font-size: 18px;
}

.join_form {
}

INPUT.a {
   border: 1px solid grey;
   width: 402;
   height: 40px;
}

INPUT.b {
   border: 1px solid grey;
   width: 201;
   height: 40px;
}

iNPUT.c {
   border: 1px solid grey;
   width: 132;
   height: 40px;
}

.textarea {
   text-align: center;
}

.checkBox {
   width: 20px;
   height: 20px;
   vertical-align: middle;
   -webkit-appearnace: none;
   border-radius: 0;
   border: 0;
   margin: 0;
   padding: 0;
   cursor: pointer;
}
.agre-wrap{
   
}
.agre-wrap h3{
   margin: 50px 0 30px 0;
}
.agree-content{
   width: 90%;
   height: 200px;
   margin: 0 auto;
   border: 1px solid #ddd;
   padding: 15px;
   box-sizing: border-box;
   overflow-y: scroll;
   font-size: 14px;
   line-height: 1.6em;
   text-align: left;
}

.plz{
   font-size: small;   
}

input::placeholder {
  color: gray;
  font-style: normal;
}


.join_done {
   -moz-box-shadow:inset 0px 0px 0px -50px #f7c5c0;
   -webkit-box-shadow:inset 0px 0px 0px -50px #f7c5c0;
   box-shadow:inset 0px 0px 0px -50px #f7c5c0;
   background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #fc8d83), color-stop(1, #ff4c4c));
   background:-moz-linear-gradient(top, #fc8d83 5%, #ff4c4c 100%);
   background:-webkit-linear-gradient(top, #fc8d83 5%, #ff4c4c 100%);
   background:-o-linear-gradient(top, #fc8d83 5%, #ff4c4c 100%);
   background:-ms-linear-gradient(top, #fc8d83 5%, #ff4c4c 100%);
   background:linear-gradient(to bottom, #fc8d83 5%, #ff4c4c 100%);
   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fc8d83', endColorstr='#ff4c4c',GradientType=0);
   background-color:#fc8d83;
   -moz-border-radius:13px;
   -webkit-border-radius:13px;
   border-radius:13px;
   display:inline-block;
   cursor:pointer;
   color:#ffffff;
   font-family:Verdana;
   font-size:28px;
   font-weight:bold;
   padding:11px 51px;
   text-decoration:none;
   text-shadow:2px 0px 0px #b23e35;
}
.join_done:hover {
   background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ff4c4c), color-stop(1, #fc8d83));
   background:-moz-linear-gradient(top, #ff4c4c 5%, #fc8d83 100%);
   background:-webkit-linear-gradient(top, #ff4c4c 5%, #fc8d83 100%);
   background:-o-linear-gradient(top, #ff4c4c 5%, #fc8d83 100%);
   background:-ms-linear-gradient(top, #ff4c4c 5%, #fc8d83 100%);
   background:linear-gradient(to bottom, #ff4c4c 5%, #fc8d83 100%);
   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff4c4c', endColorstr='#fc8d83',GradientType=0);
   background-color:#ff4c4c;
}
.join_done:active {
   position:relative;
   top:1px;
}
</style>
<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- css or js파일 연결 시키는 곳 -->

<div class="container">
   <div class="join">
      <form class="join_form" action="#">
         <br>
         <div class="basic">
         <br>
         <p class="title">일반 회원가입</p>
            <br>
            <p class="subtitle">가입 정보 입력</p>
            <br><br> 
            <input type="text" name="name" placeholder="이름" class="a" value required> <br>
            
            <br><br> 
            <input type="text" name="email" placeholder="이메일" required class="a">
            <br><br>


            <p class="plz">생년월일과 성별 기입은 선택사항입니다. 개인화된 추천을 받으시려면 입력해주세요.</p>
            <input type="number" name="birth1" min="1900" max="2018" placeholder="생년 (4자)" maxlength="4" value="" class="c">
            <input type="number" name="birth2" min="01" max="12" placeholder="월" value="" maxlength="2" class="c"> <input type="number" name="birth3" min="01" max="31" placeholder="일" value="" maxlength="2" class="c">
            <br><br>
            <input type="password" name="password" placeholder="비밀번호 (6자이상)" pattern=".{6,}" required="" class="b" required> 
            <input type="password" name="password2" placeholder="비밀번호 재확인" required="" class="b" required>
            <br><br>
            <input type="button" name="gender" value="female" id="gender_female" class="sb" align="right">
            <label for="gender_female" checked></label>
            <input type="button" name="gender" value="male" id="gender_male" class="sb" align="left">
            <labelfor="gender_male"></label>
            <br><br>
            
            
            <div class="agre-wrap">
               <h3>약관동의</h3>
               <div class="agree-content">
가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.<br>
<br>
회원가입<br>
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보<br>
만14세 미만 아동 회원가입<br> 
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보<br>
<br>
단체아이디 회원가입<br> 
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위<br>
- 선택항목 : 대표 홈페이지, 대표 팩스번호<br>
<br>
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br>
<br>
셋째, fooding 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.<br>
<br> 
넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다.<br> 
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보<br>
<br>
다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.<br> 
- 신용카드 결제시 : 카드사명, 카드번호 등<br>
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등<br>
- 계좌이체시 : 은행명, 계좌번호 등<br>
- 상품권 이용시 : 상품권 번호<br>
<br>
나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br> 
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청<br>
- 협력회사로부터의 제공<br> 
- 생성정보 수집 툴을 통한 수집               
               </div>
               <!-- agree-content -->
               
               <br><br>
               <input type="checkbox" name="req" class="checkBox"> 개인정보 수집 및 이용에 동의합니다.<span>(필수)</span>
               <br><br>
            </div>
            <!-- agree-wrap -->

 <a href="#" class="join_done">가입완료</a>            
            
            
   
         </div>
         
      </form>
   </div>

   <!-- 여기에 코드를 작성해 주세요 -->


</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />