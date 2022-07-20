<h1>O2OWebProject</h1>
<h2>팀 프로젝트 마루 전문가 매칭 사이트</h2>

<h3>프로젝트 개요</h3>
<div>특정 분야에 전문적인 기술을 가지고 있는 전문가 들과 그에 해당하는 서비스를 받고 싶은 서비스 클라이언트들을 매칭해주는 사이트(O2O)를 만들어 보았습니다.</div>

---

<h3>벤치마킹</h3>
<div>
 <a href="https://soomgo.com/">숨고</a>, <a href="https://kmong.com/">크몽</a>
 </div>

<h3>요구사항</h3>
 <ul>
  <h4>구현완료 기능</h4>
 <li>서비스 제공자(전문가)와 소비자(일반 클라이언트)가 어떤 서비스를 제공하고 싶고 받고 싶어 하는지에 대한 기본적인 설문조사</li> 
 <li>오프라인 서비스를 위한 지역별 데이터 매칭</li>
 <li>전문가의 정보 표기와 안전거래를 위한 기본적인 정보 및 본인인증 기능</li>
 <li>소비자의 접근 유도를 위해 서비스를 제공받기 위한 설문조사 전에는 간단한 이메일 정보만 기입</li>
 <li>전문가는 가입 진행 중 제공하고 싶은 서비스에 대한 기본적인 설문조사를 함께 진행</li>
 <li>소비자가 참여한 설문조사를 바탕으로 해당 소비자의 서비스 요청서를 생성,<br> 
 해당 서비스 전문가는 원하는 요청서를 선택해 견적 제안서를 소비자에게 보낼 수 있음 단, 견적서를 보낼 때 요금 발생</li>
 <li>소비자는 요청서 확인 후 제안서의 정보와 전문가의 프로필을 확인한 후 채팅하기 버튼으로 해당 전문가와 채팅방 생성</li>
 <h4>구현 예정 필수 기능</h4>
 <li>서로의 정보를 확인 후 소비자는 거래하기 버튼을 눌려 거래 진행 중인 상태로 변경</li>
 <li>서비스가 끝난 후 거래 완료 버튼을 눌려 거래한 대상자만 전문가에 대한 리뷰 작성이 가능</li>
 </ul>
 
 ---
 
 <h3>DB설계</h3><br>
 <img src="https://user-images.githubusercontent.com/100066303/179911930-94e161da-08ff-4f98-81bc-2dfe513aa24d.png"/>

---

<h3>Tools</h3>
<div>
<img src="https://img.shields.io/badge/java-007396?style=flat-square&logo=java&logoColor=white">  &nbsp
<img src="https://img.shields.io/badge/Spring-6DB33F?style=flat-square&logo=Spring&logoColor=white"> &nbsp
<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=HTML5&logoColor=white"/> &nbsp
<img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=CSS3&logoColor=white"/> &nbsp
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=JavaScript&logoColor=white"/> &nbsp
<img src="https://img.shields.io/badge/jquery-0769AD?style=flat-square&logo=jquery&logoColor=white"> &nbsp
<img src="https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=MySQL&logoColor=white"/> &nbsp 
<img src="https://img.shields.io/badge/Amazon AWS-232F3E?style=flat-square&logo=Amazon%20AWS&logoColor=white"/> &nbsp
</div>

---

<h3>설계와 구현의 어려운 점과 개선해야 할 점</h3>
<ul>
  
 <li>사용자들이 동시 다 벌 적으로 설문조사를 진행했을 때 입출력되는 데이터베이스를 최소화해야 함</li> 
 <li>채팅방 도메인 문제:<br>
  실제로 배포했을 시 localhost ip 기준으로 웹소켓이 기능 동작하지만 서브 도메인으로 했을 시에 웹소켓 연결이 되지 않음<br>
추가적으로 톰캣 server.xml과 sockjs를 기본 서브도메인 이름으로 변경해 보았으나 연결되지 않았음 STOMP 엔드 포인트 부분에서 404에러<br>
sockJS 수정 부분<br>
  <img src="https://user-images.githubusercontent.com/100066303/179921409-ebca5e1a-42c4-4837-82ed-3d0f4f9e79cc.png"/></li>
 <li>지역 매칭 문제:<br>
  지역 매칭을 위해 데이터베이스에 기본적인 지역 정보 데이터들을 시, 구, 동 별로 테이블을 나누어 입력한 뒤<br>
한 테이블에 해당 지역 아이들 값들을 합쳐 일치하는 횟수 기준으로 클라이언트들에게 매칭 결과를 정렬하려 했으나<br>
대한민국 지역 데이터가 포트폴리오 용 기준으로 너무 많아 한 지역으로 만 축소(ex. 부산지역만 매칭)나 간편화해야 함<br>
현재 데이터베이스에 없는 지역을 입력하면 500error</li>
 <li>전문가 프로필 페이지를 좀 더 자세한 정보를 기입할 수 있게 변경해야 함 또한 클라이언트들이 사용하기 불편한 기능을 개선<br>
ex) 프로필에서 리뷰를 눌러 리뷰 페이지로 이동하는 게 아닌 프로필 내에서 바로 볼 수 있도록 수정</li>
 <li>메인 페이지 랜덤 리뷰 기능이 새로고침마다 데이터베이스 출력을 하기 때문에 list를 한 번만 불러와 쿠키 값에 저장하도록 개선</li>
 <li>검색 기능 구현을 위해 서비스 데이터 명 뒤에 해당 서비스의 카테고리 키워드를 추가하여 키워드별 검색 기능으로 개선</li>
 <li>전문가 견적 제안서에 좀 더 많은 정보를 기술할 필요가 있음 견적서 내에 있는 전문가 프로필로 이동하는 하이퍼링크가 있으나<br>
클라이언트의 페이지 이동을 최소화하여 이목을 끌 수 있을 만한 기능적 구현이 필요</li>
 <li>전문가와 일반 클라이언트 간의 커뮤니티 게시판을 생성하여 커뮤니케이션 활성화 필요</li>
 <li>매칭 결과뿐만 아니라 사이트 자체에서 추천하는 전문가 기준을 설정하여 클라이언트 페이지 이동 유도</li>
 </ul>
 
---

<h3>개선한 문제</h3>
<li>설문조사 데이터 입출력 문제:<br>
설문조사 입력 시마다 일어나는 데이터 입출력 현상을 모든 설문조사가 끝난 후 한 번에 입력<br>
설문조사 페이지마다 컨트롤러로 파라미터를 전달 다음 페이지에 전달하는 방식 설문조사 결과 누적<br>
긍정적인 효과 : 데이터베이스 입출력 최적화, 설문조사 도중에 사용자가 취소 시에 일어나는 데이터 입출력 문제 해결</li> 
<li>견적요청서 & 견적제안서 출력:  <br>
설문조사 결과에 따라 알맞은 요청서 및 제안서를 빠르게 출력하기 위해<br>
 서비스 아이디를 HashMap 키값으로 사용하여 해당 서비스에 관련된 데이터만 출력<br>
set과 List를 사용했을 때보다 컴파일 속도가 유의미하게 빨라짐</li>
<li>데이터 삭제 문제:<br>
회원 탈퇴와 특정 데이터 삭제가 일어날 시 외래 키로 인한 연속적인 데이터 쿼리 구문 작성으로 인해<br>
데이터 입력의 빈도수가 증가<br>
해결 : 데이터를 삭제하는 것이 아닌 특정 더미 사용자 데이터를 생성하여 모든 데이터 정보를 더미 사용자로 변경 공백 데이터로 업데이트</li>
 </ul>
