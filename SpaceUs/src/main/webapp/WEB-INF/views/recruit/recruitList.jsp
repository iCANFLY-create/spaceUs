<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 한글 인코딩처리 -->
<fmt:requestEncoding value="utf-8"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
.image-div {
	background-color:#f7f7f7;
	border:1px solid gray;
	display:inline-block;
	width:200px;
	height: 200px;
	margin-right: 20px;
}
.fas {position: absolute; padding: 90px;}
input[type=file], .address-input {margin-bottom:20px; margin-top:10px;}
.site-btn {width: 100%; font-size: 17px;}
</style>
<!-- 컨텐츠 시작 -->
<!-- 헤더 -->
    <div class="hero-wrap ftco-degree-bg"
    	 style="background-image: url('${pageContext.request.contextPath }/resources/images/bg_1.jpg');
    	 		height: 400px"
    	 data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-center align-items-center">
          <div class="col-lg-8 col-md-6 ftco-animate d-flex align-items-end">
          	<div class="text text-center mx-auto" style="margin-bottom:50%;">
	            <h1 class="mb-4">구인/구직</h1>
	            <p class="h6">구인ㆍ구직 게시판은 각 숙소에서의 스태프(매니저, 아르바이트, 주방 아주머니 등)의
				구인/구직 관련 정보를 교환하는 게시판으로, SpaceUs에서는 정보교환의 온라인 공간을 제공할 뿐 중개에 관여하지 않으며,
				그에 따른 과실 또는 손해발생에 대해 일체 책임을 지지 않음을 알려드립니다.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 구인구직 시작-->
	<section class="blog-section spad">
	 <div class="row m-5">
                 <!-- column -->
                 <div class="col-12">
                         <div class="m-5">
                             <div class="d-flex">
								</div>
								
                                  <input type="radio" name="radio" class="m-r-10 ml-3" >전체
                                  <input type="radio" name="radio" class="m-r-10 ml-3">구인
                                  <input type="radio" name="radio" class="m-r-10 ml-3">구직
                                 <div class="input-group mb-4 col-4 pull-right">
								  <input type="text" class="input-group-text" style="background-color: white;">
								  <div class="input-group-append">
								    <button type="submit" class="btn btn-outline-secondary"><span><i class="fa fa-search fa-search mr-2"></i> </span>검색</button>
								  </div>
                                <!--  <div class="ml-auto">
									<form class="navbar-form navbar-left" role="search">
									  <span class="form-group">
									    <input type="text" class="form-control" placeholder="Search">
									  </span>
									  <button type="submit" class="btn btn-outline-secondary"><span><i class="fa fa-search fa-search mr-2"></i> </span>검색</button>
									</form>
                                 </div> -->
                             </div>
                         
                         <div class="table-responsive">
                             <table class="table table-hover">
                                 <thead>
                                     <tr>
                                         <th class="text-center">#</th>
                                         <th>내용</th>
                                         <th>작성일</th>
                                         <th>작성자</th>
                                     </tr>
                                 </thead>
                                 <tbody>
                                     <tr>
                                         <td class="text-center">1</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">니모</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">2</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>슬로베니아에서 영상제작 및 편집 가능자 모집합니다. (3개월 수습 후 정식 채용)</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">니모</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">3</td>
                                         <td class="txt-oflo"><span class="text-info mr-2">[구직]</span>경력직같은 신입 지원합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">도리</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">4</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">도리</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">5</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td><span class="txt-oflo">효리</span></td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">6</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">효리</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">7</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">바다</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">8</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">바다</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">9</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">효리</td>
                                     </tr>
                                     <tr>
                                         <td class="text-center">10</td>
                                         <td class="txt-oflo"><span class="text-success mr-2">[구인]</span>최고의 조건에서 정직원 모집합니다</td>
                                         <td class="txt-oflo">2020.09.22</td>
                                         <td class="txt-oflo">효리</td>
                                     </tr>
                                 </tbody>
                             </table>
                 <nav>
					  <ul class="pagination">
					    <li>
					      <a href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li>
					      <a href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
                         </div>
                         </div>
                     </div>
                 </div>
             </section>
    <!-- 구인구직 리스트 끝-->

<!-- 컨텐츠 끝 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>