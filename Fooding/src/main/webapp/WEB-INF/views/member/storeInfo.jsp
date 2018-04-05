
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛있는 발견의 즐거움 - Fooding</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/common.css">
<style>
   table{
      width: 900px;
   }
   
   tr{
   border: 1px solid #CCCCCC;
   }
   
   th{
      width:100px;
      background: #faf8f5;
       text-align: left;
       padding: 15px;
       border: 20px;
       
   }
   
   #facilities{
      margin: 15px 20px;
   }
   button{
   	background: #ff5a5f;
   	margin: 20px 10px;

   }
   
   #menutextarea{
   	margin: 15px;
   	align: center;
   }
  
   #storeInfotable{
   	font-size: 15px; 
   }

input{
	
}

</style>
</head>
<body>
   <div class="storeInfo" align="center">
      <table id="storeInfotable">
         <tbody>
            <tr>
               <th>업체명</th>
               <td><input type="text"></td>
            </tr>
            <tr>
               <th>음식 종류</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>전화 번호</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>예약 가능 여부</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>주소</th>
               <td><input type=""></td>
            </tr>         
            <tr>
               <th>가는법</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>영업 시간</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>쉬는날</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>테이블수</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>예산</th>
               <td><input type=""></td>
            </tr>
            <tr>
               <th>분위기</th>
               <td><input type=""></td>
            </tr>      
            <tr>
               <th>편의시설</th>
               <td>
                  <input type="checkbox" id="facilities" name="facilities" value="개인실"> 개인실
                  <input type="checkbox" id="facilities" name="facilities" value="흡연실"> 흡연실
                  <input type="checkbox" id="facilities" name="facilities" value="주차장"> 주차장
                  <input type="checkbox" id="facilities" name="facilities" value="베이비체어"> 베이비 체어
                  <input type="checkbox" id="facilities" name="facilities" value="소파자리"> 소파 자리<br>
                  <input type="checkbox" id="facilities" name="facilities" value="휠체어석"> 휠체어 석
                  <input type="checkbox" id="facilities" name="facilities" value="엘레베이터"> 엘레베이터
                  <input type="checkbox" id="facilities" name="facilities" value="애완동물 출입가능"> 애완동물 출입가능
               </td>
            </tr>
            <tr>
               <th>메뉴</th>
               <td><textarea id="menutextarea" cols="100" rows="15" style="resize:none;"></textarea></td>
            </tr>
            
               
         </tbody>
      </table>
      
	<div align="center">
		<button type="submit">수정하기</button>
		<button type="reset">목록으로</button>   
 	</div>
  </div>
   
      
</body>
</html>