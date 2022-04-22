<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>육아종합지원센터</title>
    <link rel="stylesheet" type="text/css" href="/css/injeinc/font.css" />
    <link rel="stylesheet" type="text/css" href="/css/injeinc/base.css" />
    <link rel="stylesheet" type="text/css" href="/css/base.css">
	<script src="/js/injeinc/jquery.min.js"></script>
	<script src="/js/injeinc/jquery.plugin.js"></script>
	<script src="/js/injeinc/common.js"></script>
	<script src="/js/common.js"></script>
	<script type="text/javascript" src="/include/check.js"></script>
	<script type="text/javascript">
	<!--
		function checkIt(){
			
			if(!check_promis(document.myform.agree, '개인정보 보호를 위한 이용자 동의')) return;

			if(!check_input(document.myform.Name, '이름')) return;
			if(!check_input(document.myform.Tel, '연락처')) return;
			if(!check_input(document.myform.Email, '이메일')) return;
			if(!check_input(document.myform.auto_num, '자동등록방지숫자')) return false;

			document.myform.submit();
		}
	//-->
	</script>
</head>
<%
	Randomize
	rnd_num = Int((99999 * Rnd) + 1)

	response.cookies("chk_num").haskeys
	response.cookies("chk_num") = rnd_num

	rnd_size = len(rnd_num)

	for i = 1 to rnd_size
		num = num & "<img src='/images/board/auto_" & mid(rnd_num,i,1) & ".gif' alt='"& mid(rnd_num,i,1) &"'>"
	Next
%>
<body>
<div id="wrap">
	<div id="header">
		<div class="inner">
			<h1><a href="#">인재아이엔씨 육아종합지원센터</a></h1>
			<div class="topNav">
				<a href="#modal_request" class="btn_modalOpen btn_topBuy">문의/상담</a>
				<a href="#" class="btn_topDemo">데모 체험</a>
				<a href="#" class="btn_gnbOpen">메뉴열기</a>
			</div>
			<div id="modal_request" class="modalWrap">
				<div class="modalTitle">
					<h2>문의/상담</h2>
					<a href="#" class="btn_modalClose">창닫기</a>
				</div>

				<form method="post" action="index_ok.asp" id="myform" name="myform">
				<div class="modalContent">
					<div class="tableBox">
						<table class="form">
							<caption>구매문의 입력폼</caption>
							<colgroup>
								<col class="w25p">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">이름</th>
									<td><input type="text" name="Name" class="w200"></td>
								</tr>
								<tr>
									<th scope="row">연락처</th>
									<td><input type="text" name="Tel" class="w200" value=""></td>
								</tr>
								<tr>
									<th scope="row">이메일 주소</th>
									<td><input type="text" name="Email" class="w200" value=""></td>
								</tr>
								<tr>
									<th scope="row"><span class="required">*</span> 자동등록방지</th>
									<td><input type="text" id="auto_num" class="w200" name="auto_num" title="문자입력">&nbsp;&nbsp;&nbsp;<%=num%></td>
								</tr>
								<tr>
									<th scope="row">문의내용</th>
									<td><textarea name="Memo" rows="15" class="w100p"></textarea></td>
								</tr>
							</thead>
						</table>
					</div>
					<div class="agreeBox">
						<b>개인정보 수집 및 이용안내</b>
						<p>
							문의 신청 시, 아래와 같이 이용자의 개인정보를 수집하고 있습니다. <br />
							개인정보 수집범위 : 이름, 연락처, 이메일 주소<br />
							개인정보 수집 및 이용목적 : 문의 신청 확인 및 회신<br />
							개인정보 수집 및 보유기간 : 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용 목적이 달성되면 지체 없이 파기하며 보유기간은 최대 1년을 넘기지 않는 것을 원칙으로 합니다.
						</p>
					</div>
					<div class="agreeCheck">
						<input type="checkbox" name="agree" value="Y"> 개인정보 수집에 동의합니다.
					</div>
					<div class="btnArea">
						<a href="javascript:checkIt();" class="btn_submit">보내기</a>
					</div>
					</form>
				</div>
			</div>
			<div id="gnb">
				<a href="#" class="btn_gnbClose">메뉴닫기</a>
				<ul>
					<li><a href="#section1">소개</a></li>
					<li><a href="#section2">주요기능</a></li>
					<li><a href="#section3">구축사례</a></li>
					<li><a href="#section4">홈페이지 구축 과정</a></li>
					<li><a href="#section5">토탈 유지보수 서비스 제공</a></li>
					<li><a href="#section6">Contact US</a></li>
					<li class="onlyMobile"><a href="#modal_request" class="btn_modalOpen">문의/상담</a></li>				
					<li class="onlyMobile"><a href="#">데모 체험</a></li>					
				</ul>
			</div>
		</div>
	</div>
	<div id="container">
		<div id="section1" class="section">
			<div class="inner">
				<div class="visualText">
					육아종합지원센터 홈페이지의 모든 것,<br />
					<b>인재아이엔씨가 정답입니다.</b>
				</div>
				<ul class="visualIcon">
					<li class="item1">홈페이지<br />제작</li>
					<li class="item2">홈페이지<br />유지보수</li>
					<li class="item3">뉴스레터/<br />웹진 제작</li>
					<li class="item4">SMS/이메일<br />발송</li>
					<li class="item5">홈페이지<br />제작</li>
				</ul>
			</div>
		</div>
		<div id="section2" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>주요기능</h4>
					<p>필요한 모든 기능을 담았습니다.<a href="#modal_menuList" class="btn_modalOpen">홈페이지 주요 메뉴</a></p>
				</div>
				<div class="contentWrap">
					<div class="featureWrap">
						<ul class="cols5">
							<li class="item1">온라인<br />신청/접수</li>
							<li class="item2">온라인<br />상담관리</li>
							<li class="item3">SMS/<br />발송/관리</li>
							<li class="item4">홈페이지<br />템플릿 제공</li>
							<li class="item5">장난감/도서<br />대여 연동</li>
						</ul>
						<ul class="cols6">
							<li class="item1">콘텐츠 관리 시스템</li>
							<li class="item2">모바일웹 지원</li>
							<li class="item3">온라인 결제 연동</li>
							<li class="item4">뉴스레터 제작</li>
							<li class="item5">SSL 적용</li>
							<li class="item6">홈페이지 호스팅</li>
						</ul>
					</div>
				</div>				
			</div>
			<div id="modal_menuList" class="modalWrap">
				<div class="modalTitle"> 
					<h2>홈페이지 주요 메뉴</h2>
					<a href="#" class="btn_modalClose">창닫기</a>
				</div>
				<div class="modalContent">
					<img src="./images/img_modal_menuList.jpg" alt="">
				</div>
			</div>
		</div>
		<div id="section3" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>구축 사례</h4>
				</div>
				<div class="contentWrap">
					<div class="mainCaseWrap">
						<ul>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 기장군 육아종합지원센터 홈페이지 개편</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 진구 육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase2.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 기장군 육아종합지원센터 홈페이지 개편</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 진구 육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 기장군 육아종합지원센터 홈페이지 개편</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 진구 육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase2.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 기장군 육아종합지원센터 홈페이지 개편</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 진구 육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>		
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 진구 육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase2.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 기장군 육아종합지원센터 홈페이지 개편</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>부산 진구 육아종합지원센터</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>경남창원시육아종합지원센터</span>
							</a></li>		
						</ul>
						<div class="paging">
							<a href="#" class="first">처음 페이지</a>
							<a href="#" class="prev">이전 페이지</a>
							<div class="pagingNo">
							</div>
							<!--
							<a href="#" class="num active">1</a>
							<a href="#" class="num">2</a>
							<a href="#" class="num">3</a>
							<a href="#" class="num">4</a>
							<a href="#" class="num">5</a>
							-->
							<a href="#" class="next">다음 페이지</a>
							<a href="#" class="last">마지막 페이지</a>
						</div>
					</div>
				</div>				
			</div>
			<div id="modal_mainCase" class="modalWrap">
				<div class="modalTitle">
					<h2>부산 기장군 육아종합지원센터 홈페이지</h2>
					<a href="#" class="btn_modalClose">창닫기</a>
				</div>
				<div class="modalContent">
					<ul class="modal_infoList">
						<li><span class="row">센터명</span>부산 기장군 육아종합지원센터</li>
						<li><span class="row">기간</span>2018-08 ~ 2018-11</li>
						<li><span class="row">내용</span>디자인, 콘텐츠, 통합관리시스템 전면 개편</li>
						<li><span class="row">개발언어</span><span class="type2">ASP</span><span class="type2">홈페이지(URL)</span><span class="link">http://gijangchild.or.kr/</span><a href="http://gijangchild.or.kr/" target="_blank">Launch Site</a></li>
					</ul>
					<div class="siteDesign">
						<img src="./images/img_popSiteDesign1.jpg" alt="">
					</div>						
				</div>
			</div>
		</div>
		<div id="section4" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>홈페이지 구축 과정</h4>
					<p>상담부터 시안, 설계, 개발, 테스트에 걸친 전 과정을 전문가가 제작합니다.</p>
				</div>
				<div class="contentWrap">
					<div class="homepageWrap">
						<ul class="step">
							<li><img src="./images/icon_homepage1.png" alt="">상담</li>
							<li><img src="./images/icon_homepage2.png" alt="">디자인 시안</li>
							<li><img src="./images/icon_homepage3.png" alt="">상세 설계</li>
							<li><img src="./images/icon_homepage4.png" alt="">개발/테스트</li>
							<li><img src="./images/icon_homepage5.png" alt="">홈페이지 오픈</li>
						</ul>
						<div class="infoBox">
							<ul>
								<li>홈페이지 구축 시 기능 요구사항에 따라 2~3개월이 소요됩니다.</li>
								<li>상담 시 홈페이지 디자인과 사용할 기능(프로그램)을 협의합니다.</li>
								<li>홈페이지 오픈 후 유지보수를 지원합니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="section5" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>토탈 유지보수 서비스 제공</h4>
					<p>신속, 정확한 유지보수 서비스 제공을 약속합니다.</p>
				</div>
				<div class="contentWrap">					
					<div class="serviceList">
						<ul>							
							<li class="item1">
								<img src="./images/icon_serviceList1.jpg" alt="">
								<b>팝업, 팝업존 제작</b>
								<p>행사, 교육 일정, 지원 정책 홍보 등 홈페이지 <br />공지가 필요한 부분에  대한 이미지 작업 지원</p>
							</li>
							<li class="item2">
								<img src="./images/icon_serviceList2.jpg" alt="">
								<b>콘텐츠 수정</b>
								<p>법, 제도 변경, 조직 변경 등 <br />변경사항 발생 시  콘텐츠 수정 지원</p>
							</li>
							<li class="item3">
								<img src="./images/icon_serviceList3.jpg" alt="">
								<b>기능 수정</b>
								<p>행사/교육 신청, 각종 서비스 <br />신청 관련 운영정책 변경 시 기능 수정 지원 </p>
							</li>
							<li class="item4">
								<img src="./images/icon_serviceList4.jpg" alt="">
								<b>보안 점검 대응</b>
								<p>정기, 비정기 보안점검 결과 <br />취약점 발견 시 보완 조치</p>
							</li>
							<li class="item5">
								<img src="./images/icon_serviceList5.jpg" alt="">
								<b>홈페이지 호스팅</b>
								<p>홈페이지가 웹에서 정상적으로 <br />서비스될 수 있도록 호스팅 관리</p>
							</li>
							<li class="item6">
								<img src="./images/icon_serviceList6.jpg" alt="">
								<b>기타</b>
								<p>센터에서 홈페이지 운영관련 <br />요청하는 사항 대응</p>
							</li>
						</ul>
						<p>※ 유지보수 계약 별도 체결 시</p>
					</div>
				</div>
			</div>
		</div>

		<div id="section6" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>Contact US</h4>
				</div>
				<div class="contentWrap">
					<div class="contactus">
						<div class="ment">
							홈페이지 구축관련 문의사항이 있으신가요? <br />아래 문의처로 연락 주시면 친절하게 상담해드립니다. 
						</div>
						<div class="btnArea right">
							<a href="#">소개서 다운로드</a>
							<a href="#modal_maintenance" class="btn_modalOpen">유지보수 정책</a>
						</div>
						<div class="tableBox">
							<table class="list">
								<caption>연락처 목록표</caption>
								<colgroup>
									<col />
								</colgroup>
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">홈페이지 단독 구축</th>
										<th scope="col">홈페이지 + 아이러브맘카페<br />통합 구축</th>
										<th scope="col">홈페이지, 아이러브맘카페 <br />별도 구축</th>
										<th scope="col">유지보수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">제작 기간</th>
										<td>홈페이지 콘텐츠 <br />접수 완료 후 1.5개월</td>
										<td>홈페이지 콘텐츠 <br />접수 완료 후 2개월</td>
										<td>홈페이지 콘텐츠 <br />접수 완료 후 2.5~3개월</td>
										<td>계약기간 중<br />상시 유지보수</td>
									</tr>
									<tr>
										<th scope="row">소요 비용</th>
										<td>별도 문의</td>
										<td>별도 문의</td>
										<td>별도 문의</td>
										<td>별도 문의</td>
									</tr>
									<tr>
										<th scope="row">문의처</th>
										<td colspan="4" class="alignLeft">
											<p>
												<b>홈페이지 구축/운영 상담/견적 문의</b><br />
												- 백희선 이사 : 010-6252-8107, pocas4356@injeinc.co.kr<br />
												- 백승엽 부장 : 010-3264-5209, info100@injeinc.co.kr
											</p>
											<b>* 기술 문의 : 안종규 부장, 031-456-2277(305), <span>ajk@injeinc.co.kr</span></b>
										</td>
									</tr>
								</thead>
							</table>
						</div>						
					</div>
					<div id="modal_maintenance" class="modalWrap">
						<div class="modalTitle"> 
							<h2>유지보수 정책</h2>
							<a href="#" class="btn_modalClose">창닫기</a>
						</div>
						<div class="modalContent">
							<div class="tableBox">
							<table class="list">
								<caption>연락처 목록표</caption>
								<colgroup>
									<col style="width:28%;">
									<col />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">기본형</th>
										<th scope="col">일반형</th>
										<th scope="col">중급형</th>
										<th scope="col">고급형</th>
										<th scope="col">프리미엄형</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">월납</th>
										<td>5</td>
										<td>5</td>
										<td>10</td>
										<td>15</td>
										<td>20</td>
									</tr>
									<tr>
										<th scope="row">오탈자/단순링크수정</th>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
									</tr>
									<tr>
										<th scope="row">페이지제작</th>
										<td>1회/월</td>
										<td>1회/월</td>
										<td>2회/월</td>
										<td>4회/월</td>
										<td>6회/월</td>
									</tr>
									<tr>
										<th scope="row">이미지수정</th>
										<td>1회/월</td>
										<td>1회/월</td>
										<td>2회/월</td>
										<td>4회/월</td>
										<td>6회/월</td>
									</tr>
									<tr>
										<th scope="row">텍스트수정</th>
										<td>1회/월</td>
										<td>1회/월</td>
										<td>2회/월</td>
										<td>4회/월</td>
										<td>6회/월</td>
									</tr>
									<tr>
										<th scope="row">팝업/배너제작</th>
										<td>1회/월</td>
										<td>1회/월</td>
										<td>2회/월</td>
										<td>4회/월</td>
										<td>6회/월</td>
									</tr>
									<tr>
										<th scope="row">운영지원</th>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
									</tr>
									<tr>
										<th scope="row">기존게시판추가</th>
										<td>-</td>
										<td>-</td>
										<td>2회/월</td>
										<td>4회/월</td>
										<td>6회/월</td>
									</tr>
									<tr>
										<th scope="row">프로그램 오류수정</th>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
										<td>무제한</td>
									</tr>
									<tr>
										<th scope="row">호스팅</th>
										<td>1기가</td>
										<td>1기가</td>
										<td>3기가</td>
										<td>5기가</td>
										<td>5기가</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="sectionBtn" class="row1">
		<ul>
			<li class="active"><a href="#section1">소개</a></li>
			<li><a href="#section2">주요기능</a></li>
			<li><a href="#section3">구축사례</a></li>
			<li><a href="#section4">홈페이지 구축 과정</a></li>
			<li><a href="#section5">토탈 유지보수 서비스 제공</a></li>
			<li><a href="#section6">Contact US</a></li>
		</ul>
	</div>
	</div>
	<div id="footer">
		<div class="inner">
			<p>
				본사 : 서울시 구로구 디지털로 33길 12, 1301호 (구로동, 우림이비즈센터2차)<br />
				대전지사 : 대전시 서구 둔산대로117번길 66, 909호 (만년동, 골드벤처타워) <br />
				<br />
				<span>Copyrightⓒ INJEINC 2019. All Rights Reserved.</span>
			</p>
		</div>
	</div>
</div>
<div id="overlay"></div>
</body>
</html>




