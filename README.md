# 💒SpaceUs
공간 대여 사이트 프로젝트

### 개요
사람과 사람을 연결하고 공간을 공유하는 사이트 구축
- 개발 기간: 2020.09.02 ~ 2020.10.23
- 개발 인원: 4명

### 사용 기술
* Spring
* MyBatis
* JAVA
* JSP
* JavaScript
* SQL
* HTML/CSS
* Git
* AWS

### 담당 기능
* 메인페이지 사용자 검색 입력 창 (AJAX의 autocomplete사용✨)
* 공간 목록 리스트 정렬 순서
* 게시판 제작 (게시판 등록 및 수정, 삭제)
* 게시물 신고 & 블랙리스트 처리
* 댓글과 대댓글 등록 및 신고
* 비밀글 처리
* 관리자 페이지의 회원관리, 공간 승인, 블랙 리스트 관리

### ERD
![erd](https://user-images.githubusercontent.com/66931820/97409160-8848b600-1940-11eb-953b-8f27d1c9120a.png)

### 대표 담당 기능
* 메인페이지 사용자 검색 입력 창
<img src="https://user-images.githubusercontent.com/61791986/101281000-eefaa280-380f-11eb-8ff8-ccc1ba8c00b3.png" width="400" height="300">
기능 설명 : AJAX의 AUTOCOMPLETE을 이용하여, 사용자의 입력값이 포함되어 있는 데이터를 json형식으로 RESPONSE됩니다. 응답을 거쳐 목록창에 보여지게 됩니다. 

* 게시물 신고 & 블랙리스트
<img src="https://user-images.githubusercontent.com/61791986/101281093-86f88c00-3810-11eb-9042-c117d43bc0f9.png" width="400" height="300">
<img src="https://user-images.githubusercontent.com/61791986/101281130-c3c48300-3810-11eb-9236-c5925535d18c.png" width="400" height="300">
기능 설명 : 게시물 당 아이디 하나만 신고 가능하게 하였습니다. 아이디 + 게시물 번호가 DB에 있는지 확인 후, 데이터가 존재하지 않는다면 REPORT 카운트가 +1 됩니다. 또한 신고 카운트가 10회가 되면 TRIGGER을 통해 자동적으로 BLACK lIST에 들어가지게 되며, 해당 게시물은 블라인드 처리 됩니다.
