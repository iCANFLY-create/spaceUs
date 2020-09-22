<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>회원가입</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/main.css">
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg_2.jpg');">
				<form class="login100-form validate-form"
					  action="${pageContext.request.contextPath}">
					<span class="login100-form-title p-b-43">
						<a class="navbar-brand" href="${pageContext.request.contextPath }">SpaceUs</a>
					</span>
						<button class="social-btn"><img src="${pageContext.request.contextPath }/resources/images/icons/naver-icon.jpg"/>&nbsp;네이버로 시작하기</button>
						<button class="social-btn"><img src="${pageContext.request.contextPath }/resources/images/icons/google-icon.png"/>&nbsp;구글로 시작하기</button>
						<button class="social-btn"><img src="${pageContext.request.contextPath }/resources/images/icons/facebook-icon.png"/>&nbsp;페이스북으로 시작하기</button>
						<div class="text-center p-t-46 p-b-20">
						<p class="txt1">
							또는
						</p><br />
						</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="email" placeholder="email *">
						<span class="focus-input100">email</span>
					</div>
					<div class="btn-wrap">
						<p>이메일이 중복입니다.</p>				
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password" placeholder="password *">
						<span class="focus-input100">password</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="passwordChk" placeholder="password Check">
						<span class="focus-input100">password Check</span>
					</div>
					<div class="btn-wrap">
						<p>비밀번호가 맞지않습니다.</p>				
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="nickName" placeholder="nickName *">
						<span class="focus-input100">nickName</span>
					</div>
					<div class="btn-wrap">
						<p>닉네임이 중복입니다.</p>				
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="tel" name="phone" placeholder="mobile *">
						<span class="focus-input100">mobile</span>
					</div>
					<div class="btn-wrap">
						<button class="phone-btn">휴대폰 인증</button>				
					</div>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="tel" name="phone" placeholder="인증번호 입력 *">
						<span class="focus-input100">인증번호 입력</span>
					</div>
					<div class="btn-wrap">
						<p>인증번호가 틀립니다.</p>				
					</div>
					<div class="wrap-input2">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox">
							<label class="label-checkbox100" for="ckb1" data-toggle="modal" data-target="#modalLong1">
								서비스 이용약관 (필수)
							</label>
						</div>
					</div>
					<div class="wrap-input2">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb2" type="checkbox">
							<label class="label-checkbox100" for="ckb2" data-toggle="modal" data-target="#modalLong2">
								개인정보 처리 방침 (필수)
							</label>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="${pageContext.request.contextPath}">
							회원가입
						</button>
					</div>
					
					<div class="text-center p-t-46 p-b-20">
						<a href="${pageContext.request.contextPath }/member/memberLoginForm.do" class="txt1">
							이미 가입하셨나요?
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/animsition/js/animsition.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/countdowntime/countdowntime.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

</body>


<!-- 서비스 이용약관 모달 시작 -->
<div class="modal fade" id="modalLong1" tabindex="-1" role="dialog" aria-labelledby="ModalLongTitle1" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalLongTitle1">이용약관</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         	<strong>제 1 조 (목적)</strong><br />
			이 약관은 주식회사 앤스페이스("회사")가 제공하는 스페이스어스(https://www.spaceus.kr) 온라인 서비스(이하 “서비스”라고 합니다.)의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
			<br />
			<br />
			<strong>제 2 조 (정의)</strong><br />
			이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
			1. "서비스"라 함은 유휴 공간(이하 “공간”) 정보의 공유 및 예약을 위하여 “회사”가 스페이스어스를 통해 제공하는 온라인 서비스를 말합니다.
			2. “사이트”라 함은 “회사” 가 “서비스”를 운영하는 웹사이트를 의미하며, 현재는 (https://spaceus.kr) 입니다.
			3. 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객은 서비스 이용목적에 따라 “게스트회원”과 “호스트회원”으로 구분됩니다.
			A. 게스트회원: 이 약관에 따라 “회사”와 이용계약을 체결하고 “회사”가 제공하는 “서비스”를 이용할 수 있는 “회원”을 말합니다. 이하 이 약관에서 “회원”이라 함은 “게스트회원”을 말합니다.
			B. 호스트회원: “스페이스어스 호스트 이용약관”에 따라 “회사”와 이용계약을 체결하고 “회사”가 제공하는 “서비스”를 통해 “공간” 및 컨텐츠를 등록하거나 제안할 수 있는 회원을 말합니다.
			4. "아이디"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정한 온라인 아이디(이메일)를 말합니다.
			5. "비밀번호"라 함은 "회원"이 부여 받은 "아이디”와 일치되는 "회원"임을 확인하고 비밀을 보호하기 위해 "회원" 자신이 정한 온라인 비밀번호를 말합니다.
			6. "게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스”에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 말하며, "회원"이 “서비스”를 통해 이용한 “공간”의 이용후기를 포함합니다.
			7. “호스트센터”는 “호스트”를 대상으로 제공하는 공간등록 및 관리 페이지를 말합니다.
			<br />
			<br />
			<strong>제 3 조 (약관의 게시와 개정)</strong><br />
			1. "회사"는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 “서비스” 초기 화면에 게시합니다.
			2. "회사"는 "약관의 규제에 관한 법률", "정보통신망 이용촉진 및 정보보호등에 관한 법률(이하 "정보통신망법")" 등 관련 법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
			3. "회사"가 이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지합니다. 다만 “회원”에게 불리한 개정인 경우 30일 전부터 적용일자 전일까지 변경 사항을 공지하며, 공지 외에도 “회원”이 등록한 전자우편, “서비스” 로그인 시 동의창 등의 전자적 수단을 통해 따로 명확히 통지합니다.
			4. “회사”가 전항에 따라 개정약관을 공지 또는 통지하면서 “회원”에게 개정약관의 공지기간 내에 거부의 의사표시를 하지 않으면 승낙의 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 “회원”이 명시적으로 거부의 의사표시를 하지 아니한 경우 “회원”이 개정약관에 동의한 것으로 봅니다.
			5. “회원”이 개정약관의 적용에 동의하지 않는 경우 “회사”는 개정약관의 내용을 적용할 수 없으며, 이 경우 “회원”은 이용계약을 해지할 수 있습니다. 다만, 기존약관을 적용할 수 없는 특별한 사정이 있는 경우에는 “회사”는 이용계약을 해지할 수 있습니다.
      </div>
      <div class="modal-footer">
        <button class="login100-form-btn" data-dismiss="modal">
			확인
		</button>
      </div>
    </div>
  </div>
</div>
<!-- 서비스 이용약관 모달 끝-->
<!-- 개인정보 처리방침 모달 시작 -->
<div class="modal fade" id="modalLong2" tabindex="-1" role="dialog" aria-labelledby="ModalLongTitle2" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalLongTitle2">개인정보처리방침</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		    (주)스페이스어스(이하 ‘회사’)는 정보통신망이용촉진 및 정보보호 등에 관한 법률(이하 ‘정보통신망법’) 등에 따라 회원의 개인정보를 보호하고
			이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침을 수립·공개합니다. 
			<br /><br />
         	<strong>제1조 (개인정보 수집 항목 및 방법)</strong><br />
			1. 회사는 게스트 회원 가입 시 아래와 같은 개인정보를 수집하고 있습니다.
			<br />1) 회원가입시 이 과정에서 성명, 이메일 주소, 휴대폰번호(이상 필수적 수집 정보), 프로필사진, 연령대, 생년월일, 성별(이상 선택적 수집정보)을 수집합니다.
			<br />2) 예약 및 결제 과정에서 예약정보(성명, 이메일주소, 휴대폰번호)와 결제정보(신용카드 번호 및 은행계좌정보 일부 등)를 수집합니다.
			<br />3) 호스트 회원의 경우, 회원가입 직후 공간 정보 등록 과정에서 필수항목으로 대표자명, 이메일 주소, 휴대폰번호, 주소 등의 공간정보와 선택항목으로 유선전화번호, 계좌번호(은행명, 계좌번호, 예금주)를 수집합니다.
			<br />4) 문의 접수 및 회신 과정에서 연락처 및 이메일 주소를 수집 할 수 있으며, 이벤트 진행 시 배송정보 등을 수집할 수 있습니다.
			<br />5) 서비스 이용 과정에서 IP주소, 쿠키, 방문 일시·불량 이용 기록, 기기정보(PC/모바일) 정보가 자동으로 생성되어 수집합니다.
			<br />2. 회사는 호스트 회원 가입 시 아래와 같은 개인정보를 수집하고 있습니다.
			<br />1) 공간 정보 등록 과정에서 필수항목으로 대표자명, 주소 등의 공간정보와 선택항목으로 유선전화번호, 계좌번호(은행명, 계좌번호, 예금주)를 수집합니다.
			<br />2) 서비스 이용 과정에서 IP주소, 쿠키, 방문 일시 ·불량 이용 기록, 기기정보(PC/모바일) 정보가 자동으로 생성되어 수집합니다.
			<br />3) 문의 접수 및 회신 과정에서 연락처 및 이메일 주소를 수집 할 수 있으며, 이벤트 진행 시 배송정보 등을 수집할 수 있습니다.
			<br />3. 회사는 회원(게스트,호스트) 및 비회원이 서비스 내 ‘전화걸기’ 버튼을 눌러, 전화를 할 경우, 전화 중개 위탁 서비스에 따라, 전화번호를 수집합니다.
			수집된 전화번호는 위탁사에 기록되며, 회사에는 기록되지 않습니다.
			<br />4. 개인정보의 수집 방법
			<br />1) 스페이스어스 스페이스어스 PC/모바일회원가입, 고객센터를 통한 유선 상담, 이메일을 통한 온라인 상담, 네이버 톡톡을 통한 온라인 상담
			<br />2) 오프라인에서 진행되는 이벤트, 세미나 등
      </div>
      <div class="modal-footer">
        <button class="login100-form-btn" data-dismiss="modal">
			확인
		</button>
      </div>
    </div>
  </div>
</div>

<!-- 개인정보 처리방침 모달 끝 -->
</html>