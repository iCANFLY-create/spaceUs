<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- 한글 인코딩 처리 --%>
<fmt:requestEncoding value="utf-8" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>
<jsp:include page="/WEB-INF/views/common/hostpageMenu.jsp" />


        <div class="page-wrapper">
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h4 class="text-themecolor ml-5">호스트 센터</h4>
                    </div>
                    <div class="col-md-7 align-self-center text-right">
                        <div class="d-flex justify-content-end align-items-center mr-5">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">호스트 센터</a></li>
                                <li class="breadcrumb-item active">정산 내역</li>
                            </ol>
                        </div>
                    </div>
                </div>

            	<div class="ml-5 mr-5">
	           		<div class="card p-5">
	           			 <div class="card-body-wrapper">
							<div class="btn-group">
							
							<form id="excelForm" name="excelForm" method="post" enctype="multipart/form-data">
							    <button type="button" onclick="doExcelDownloadProcess()">정산내역 다운로드(.xlsx)</button>
							</form>
							<div id="result">
							</div>			 
							</div>
						 </div>

	           			 	<div class="card-body">
			                	<h5 class=" mb-1">일간 정산 내역</h5>
			                	<table class="table table-hover">
			                	   <thead class="thead-dark">
				                	   <tr>
				                		<th scope="col">공간 번호</th>
				                		<th scope="col">날짜</th>
				                		<th scope="col">일 이용시간</th>
				                		<th scope="col">일매출</th>
				                	   </tr>
			                	   </thead>
			                	   <tbody>
				                	   <tr>
				                		<th scope="row">S1001</th>
				                		<td>2020/09/20</td>
				                		<td>3</td>
				                		<td>120,000</td>
				                	   </tr>
				                	   <tr>
				                		<th scope="row">S1001</th>
				                		<td>2020/09/21</td>
				                		<td>2</td>
				                		<td>80,000</td>
				                	   </tr>					                   
				                  </tbody>               		
			                	</table>
		                	</div>
	           				<div class="card-body">
	            				<h5 class="card-title">
	            				월간 매출 추이 
	            				</h5>
				 		 	</div>
						 	<canvas id="bar-chart">차트가 들어갈 자리</canvas>
						</div>
	 				</div>
 				</div>
    </div>


<script src="${pageContext.request.contextPath }/resources/js/Chart.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${ pageContext.request.contextPath }/resources/assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
<!-- Bootstrap popper Core JavaScript -->
<script src="${ pageContext.request.contextPath }/resources/assets/node_modules/popper/popper.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/assets/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="${ pageContext.request.contextPath }/resources/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="${ pageContext.request.contextPath }/resources/js/waves.js"></script>
<!--Menu sidebar -->
<script src="${ pageContext.request.contextPath }/resources/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="${ pageContext.request.contextPath }/resources/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

	<script>
	let canvas = document.getElementById("bar-chart").getContext('2d');
	let ylabel= [0,0,0,0,0,9,9,9,9,9,10,10];
	let xdata = [1,2,3,4,5,6,7,8,9,10,11,12];

	let barChart = new Chart(canvas, {
		type:'bar',
		data: {labels: ylabel,
	    	datasets:[{
	    		label: "2020",
	    		backgroundColor: '#fe7096',
	    		borderColor: '#58c5ed',
	    		data: xdata,
	    	}]
	    	
	    },
	     options: {
	         title: {
	             text: "일일 매출 추이",
	             display: true
	         }
	     }
	 }); 

    function doExcelUploadProcess(){
        var f = new FormData(document.getElementById('excelForm'));
        $.ajax({
            url: "${pageContext.request.contextPath}/host/excelDown",
            data: f,
            processData: false,
            contentType: false,
            type: "POST",
            success: function(data){
                console.log(data);
                document.getElementById('result').innerHTML = JSON.stringify(data);
            }
        })
    } 
    
    function doExcelDownloadProcess(){
        var f = document.excelForm;
        f.action = "excelDown";
        f.submit();
    }
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->

    <!-- loader -->
    <%--   <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
      <script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
      <script src="${ pageContext.request.contextPath }/resources/assets/node_modules/raphael/raphael-min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/node_modules/morrisjs/morris.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/node_modules/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/node_modules/d3/d3.min.js"></script>
    <script src="${ pageContext.request.contextPath }/resources/assets/node_modules/c3-master/c3.min.js"></script>
      
    <!--c3 JavaScript -->

    <!-- Chart JS -->
      <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.1.min.js"></script> --%>
    <%--   <script src="${pageContext.request.contextPath }/resources/js/jquery.easing.1.3.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/jquery.waypoints.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/jquery.stellar.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/jquery.magnific-popup.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/jquery.animateNumber.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/bootstrap-datepicker.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/jquery.timepicker.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/scrollax.min.js"></script>
      <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>  --%>
</script>

  </body>

</html>