<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style>
.layout1-main {
   /* float: left; */
   width: 900px;
   margin: 100px;
   }

.tblg-coupon-wrap {
   clear: both;
   width: 100%;
   box-sizing: border-box;
}



.tblg-coupon {
   display: flex;
   position: relative;
   width: 100%;
   box-sizing: border-box;
}

div, p {
   word-wrap: break-word;
   overflow-wrap: break-word;
}

.tblg-coupon__main {
   display: flex;
   position: relative;
   margin: 0;
   border-width: 1px 0 1px 1px;
   border-style: solid;
   border-color: #c4c4c4;
   border-radius: 4px 0 0 4px;
   width: 100%;
   box-sizing: border-box;
   background: #fff;
   padding: 0.5rem 0;
}



.tblg-coupon__main-inner {
   display: flex;
   position: relative;
   padding: 0 1px 0 4px;
   width: 100%;
   box-sizing: content-box;
   background: #fff;
   align-items: stretch;
   justify-content: space-between;
   margin: 0 -0.7rem 0 0;
}



.tblg-coupon__main-title {
   display: flex;
   flex-direction: column;
   position: relative;
   border-top-left-radius: 3px;
   border-bottom-left-radius: 3px;
   box-sizing: border-box;
   white-space: nowrap;
   background-image: linear-gradient(to bottom, #ff5a5f, #ff444a);
   align-items: center;
   justify-content: center;
   margin: -0.5rem 0 -0.5rem -0.4rem;
   padding: 1.2rem 1.2rem 1.6rem;
   width: 6.4rem;
   font-weight: bold;
   color: #191919;
}



.tblg-coupon__main-contents {
   display: flex;
   width: 0;
   box-sizing: border-box;
   flex-grow: 1;
   padding: 0.5rem 1rem;
}


.tblg-coupon__sub {
   display: flex;
   position: relative;
   border-width: 1px 1px 1px 0;
   border-style: solid;
   border-color: #d6ceb4;
   border-top-right-radius: 4px;
   border-bottom-right-radius: 4px;
   text-align: center;
   background: #fff;
   /*    margin: 0 0 0 1.1rem; */
   padding: 0.5rem 0;
   min-width: 16rem;
}


.owner-coupon-item:last-of-type {
   margin-bottom: 1rem;
}

.tblg-coupon+.tblg-coupon {
   margin-top: 1rem;
}

.tblg-coupon {
   display: flex;
   position: relative;
   width: 100%;
   box-sizing: border-box;
}



.tblg-coupon__sub::before {
   position: absolute;
   margin: auto;
   height: auto;
   content: '';
   background:
      url(https://tblg.k-img.com/images/restaurant/border/rstdtl_coupon_line.png?1522915292)
      repeat-y 100% 0;
   width: 0.3rem;
   top: 0rem;
   bottom: 0rem;
   left: -0.5rem;
}

.tblg-coupon__info-expiration>dt {
   text-align: center;
   background-color: #f4f4f4;
   margin-bottom: 0.8rem;
   padding: 0 0.5rem;
   font-size: 1rem;
}

.tblg-coupon__info-expiration>dd {
   font-size: 1rem;
}

.tblg-coupon__info-expiration {
   color: #13131e;
}

.tblg-coupon__info-title {
   color: #13131e;
   font-weight: bold;
   margin-bottom: 1rem;
   font-size: 1.3rem;
}

.tblg-coupon__table dd {
   margin-bottom: 4px;
   border: none;
   margin-left: 5.5rem;
   padding: 0.1rem 0.5rem;
   font-size: 1.1rem;
}

.tblg-coupon__table dd {
   margin-bottom: 4px;
   border: none;
   margin-left: 5.5rem;
   padding: 0.1rem 0.5rem;
   font-size: 1.1rem;
}

.tblg-coupon__info.tblg-coupon__info--middle {
   justify-content: center;
}

.tblg-coupon__info {
   display: flex;
   flex-direction: column;
   width: 100%;
   box-sizing: border-box;
   justify-content: flex-start;
   padding: 1rem;
}

.tblg-coupon__sub-contents {
   display: flex;
   width: 100%;
   box-sizing: border-box;
   text-align: center;
   padding: 0.5rem 0.5rem 0.5rem 0.9rem;
}

.tblg-coupon__table dt {
   float: left;
   clear: left;
   border: none;
   border-radius: 4px;
   color: #13131e;
   text-align: center;
   white-space: nowrap;
   vertical-align: middle;
   line-height: normal;
   background-color: #f4f4f4;
   width: 4.3rem;
   padding: 0.1rem 0.5rem;
   font-size: 1rem;
}

.tblg-coupon__table {
   width: 100%;
   box-sizing: border-box;
}

.coupon_png{
   width: 32px;
   height: 32px;
   background-image: url("resources/images/myPage/coupon.png");
}

.couponBtn {
   background: #ff5a5f;
   margin: 20px 10px;
}

/* input{
   border: 1px solid black;
   
   
   
} */
</style>
<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- css or js파일 연결 시키는 곳 -->

<div class="container">


   <div id="column-main" class="layout1-main">
      <div class="tblg-coupon-wrap">


         <div class="tblg-coupon owner-coupon-item">
            <div class="tblg-coupon__main">
               <div class="tblg-coupon__main-inner">
                  <div class="tblg-coupon__main-title">
                     <div class="coupon_png"></div>
                     <strong>쿠폰</strong>
                  </div>
                  <div class="tblg-coupon__main-contents">
                     <div class="tblg-coupon__info">
                        <div class="tblg-coupon__info-title">
                           쿠폰 명 : <input type="text" id="cname">
                        </div>
                        <dl class="tblg-coupon__table">
                           <dt>이용 조건</dt>
                           <dd>
                              <input type="text" id="ccondition">
                           </dd>
                           <dt>사용 방법</dt>
                           <dd>
                              <input type="text" id="cmethod">
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
            <div class="tblg-coupon__sub">
               <div class="tblg-coupon__sub-inner">
                  <div class="tblg-coupon__sub-contents">
                     <div class="tblg-coupon__info tblg-coupon__info--middle">
                        <dl class="tblg-coupon__info-expiration">
                           <dt>쿠폰 사용 기간</dt>
                           <dd>
                              <strong><input type="text" id="cdate" size="10"></strong>
                              까지
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- 쿠폰 div -->
         
         
         <div class="tblg-coupon owner-coupon-item">
            <div class="tblg-coupon__main">
               <div class="tblg-coupon__main-inner">
                  <div class="tblg-coupon__main-title">
                     <div class="coupon_png"></div>
                     <strong>쿠폰</strong>
                  </div>
                  <div class="tblg-coupon__main-contents">
                     <div class="tblg-coupon__info">
                        <div class="tblg-coupon__info-title">
                           쿠폰 명 : <input type="text" id="cname">
                        </div>
                        <dl class="tblg-coupon__table">
                           <dt>이용 조건</dt>
                           <dd>
                              <input type="text" id="ccondition">
                           </dd>
                           <dt>사용 방법</dt>
                           <dd>
                              <input type="text" id="cmethod">
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
            <div class="tblg-coupon__sub">
               <div class="tblg-coupon__sub-inner">
                  <div class="tblg-coupon__sub-contents">
                     <div class="tblg-coupon__info tblg-coupon__info--middle">
                        <dl class="tblg-coupon__info-expiration">
                           <dt>쿠폰 사용 기간</dt>
                           <dd>
                              <strong><input type="text" id="cdate" size="8"></strong>
                              까지
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- 쿠폰 div -->
         
         
         <div class="tblg-coupon owner-coupon-item">
            <div class="tblg-coupon__main">
               <div class="tblg-coupon__main-inner">
                  <div class="tblg-coupon__main-title">
                     <div class="coupon_png"></div>
                     <strong>쿠폰</strong>
                  </div>
                  <div class="tblg-coupon__main-contents">
                     <div class="tblg-coupon__info">
                        <div class="tblg-coupon__info-title">
                           쿠폰 명 : <input type="text" id="cname">
                        </div>
                        <dl class="tblg-coupon__table">
                           <dt>이용 조건</dt>
                           <dd>
                              <input type="text" id="ccondition">
                           </dd>
                           <dt>사용 방법</dt>
                           <dd>
                              <input type="text" id="cmethod">
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
            <div class="tblg-coupon__sub">
               <div class="tblg-coupon__sub-inner">
                  <div class="tblg-coupon__sub-contents">
                     <div class="tblg-coupon__info tblg-coupon__info--middle">
                        <dl class="tblg-coupon__info-expiration">
                           <dt>쿠폰 사용 기간</dt>
                           <dd>
                              <strong><input type="text" id="cdate" size="10"></strong>
                              까지
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- 쿠폰 div -->
         
         
         


         <div align="center">
            <button class="couponBtn" type="submit">등록하기</button>
            <button class="couponBtn" type="reset">목록으로</button>
         </div>

      </div>
   </div>


</div>
<!-- container -->


<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />