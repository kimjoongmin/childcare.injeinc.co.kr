<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>����������������</title>
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
			
			if(!check_promis(document.myform.agree, '�������� ��ȣ�� ���� �̿��� ����')) return;

			if(!check_input(document.myform.Name, '�̸�')) return;
			if(!check_input(document.myform.Tel, '����ó')) return;
			if(!check_input(document.myform.Email, '�̸���')) return;
			if(!check_input(document.myform.auto_num, '�ڵ���Ϲ�������')) return false;

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
			<h1><a href="#">������̿��� ����������������</a></h1>
			<div class="topNav">
				<a href="#modal_request" class="btn_modalOpen btn_topBuy">����/���</a>
				<a href="#" class="btn_topDemo">���� ü��</a>
				<a href="#" class="btn_gnbOpen">�޴�����</a>
			</div>
			<div id="modal_request" class="modalWrap">
				<div class="modalTitle">
					<h2>����/���</h2>
					<a href="#" class="btn_modalClose">â�ݱ�</a>
				</div>

				<form method="post" action="index_ok.asp" id="myform" name="myform">
				<div class="modalContent">
					<div class="tableBox">
						<table class="form">
							<caption>���Ź��� �Է���</caption>
							<colgroup>
								<col class="w25p">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">�̸�</th>
									<td><input type="text" name="Name" class="w200"></td>
								</tr>
								<tr>
									<th scope="row">����ó</th>
									<td><input type="text" name="Tel" class="w200" value=""></td>
								</tr>
								<tr>
									<th scope="row">�̸��� �ּ�</th>
									<td><input type="text" name="Email" class="w200" value=""></td>
								</tr>
								<tr>
									<th scope="row"><span class="required">*</span> �ڵ���Ϲ���</th>
									<td><input type="text" id="auto_num" class="w200" name="auto_num" title="�����Է�">&nbsp;&nbsp;&nbsp;<%=num%></td>
								</tr>
								<tr>
									<th scope="row">���ǳ���</th>
									<td><textarea name="Memo" rows="15" class="w100p"></textarea></td>
								</tr>
							</thead>
						</table>
					</div>
					<div class="agreeBox">
						<b>�������� ���� �� �̿�ȳ�</b>
						<p>
							���� ��û ��, �Ʒ��� ���� �̿����� ���������� �����ϰ� �ֽ��ϴ�. <br />
							�������� �������� : �̸�, ����ó, �̸��� �ּ�<br />
							�������� ���� �� �̿���� : ���� ��û Ȯ�� �� ȸ��<br />
							�������� ���� �� �����Ⱓ : �̿����� ���������� ��Ģ������ ���������� ���� �� �̿� ������ �޼��Ǹ� ��ü ���� �ı��ϸ� �����Ⱓ�� �ִ� 1���� �ѱ��� �ʴ� ���� ��Ģ���� �մϴ�.
						</p>
					</div>
					<div class="agreeCheck">
						<input type="checkbox" name="agree" value="Y"> �������� ������ �����մϴ�.
					</div>
					<div class="btnArea">
						<a href="javascript:checkIt();" class="btn_submit">������</a>
					</div>
					</form>
				</div>
			</div>
			<div id="gnb">
				<a href="#" class="btn_gnbClose">�޴��ݱ�</a>
				<ul>
					<li><a href="#section1">�Ұ�</a></li>
					<li><a href="#section2">�ֿ���</a></li>
					<li><a href="#section3">������</a></li>
					<li><a href="#section4">Ȩ������ ���� ����</a></li>
					<li><a href="#section5">��Ż �������� ���� ����</a></li>
					<li><a href="#section6">Contact US</a></li>
					<li class="onlyMobile"><a href="#modal_request" class="btn_modalOpen">����/���</a></li>				
					<li class="onlyMobile"><a href="#">���� ü��</a></li>					
				</ul>
			</div>
		</div>
	</div>
	<div id="container">
		<div id="section1" class="section">
			<div class="inner">
				<div class="visualText">
					���������������� Ȩ�������� ��� ��,<br />
					<b>������̿����� �����Դϴ�.</b>
				</div>
				<ul class="visualIcon">
					<li class="item1">Ȩ������<br />����</li>
					<li class="item2">Ȩ������<br />��������</li>
					<li class="item3">��������/<br />���� ����</li>
					<li class="item4">SMS/�̸���<br />�߼�</li>
					<li class="item5">Ȩ������<br />����</li>
				</ul>
			</div>
		</div>
		<div id="section2" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>�ֿ���</h4>
					<p>�ʿ��� ��� ����� ��ҽ��ϴ�.<a href="#modal_menuList" class="btn_modalOpen">Ȩ������ �ֿ� �޴�</a></p>
				</div>
				<div class="contentWrap">
					<div class="featureWrap">
						<ul class="cols5">
							<li class="item1">�¶���<br />��û/����</li>
							<li class="item2">�¶���<br />������</li>
							<li class="item3">SMS/<br />�߼�/����</li>
							<li class="item4">Ȩ������<br />���ø� ����</li>
							<li class="item5">�峭��/����<br />�뿩 ����</li>
						</ul>
						<ul class="cols6">
							<li class="item1">������ ���� �ý���</li>
							<li class="item2">������� ����</li>
							<li class="item3">�¶��� ���� ����</li>
							<li class="item4">�������� ����</li>
							<li class="item5">SSL ����</li>
							<li class="item6">Ȩ������ ȣ����</li>
						</ul>
					</div>
				</div>				
			</div>
			<div id="modal_menuList" class="modalWrap">
				<div class="modalTitle"> 
					<h2>Ȩ������ �ֿ� �޴�</h2>
					<a href="#" class="btn_modalClose">â�ݱ�</a>
				</div>
				<div class="modalContent">
					<img src="./images/img_modal_menuList.jpg" alt="">
				</div>
			</div>
		</div>
		<div id="section3" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>���� ���</h4>
				</div>
				<div class="contentWrap">
					<div class="mainCaseWrap">
						<ul>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���屺 ���������������� Ȩ������ ����</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���� ����������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase2.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���屺 ���������������� Ȩ������ ����</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���� ����������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���屺 ���������������� Ȩ������ ����</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���� ����������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase2.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���屺 ���������������� Ȩ������ ����</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���� ����������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>		
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���� ����������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase2.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���屺 ���������������� Ȩ������ ����</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�λ� ���� ����������������</span>
							</a></li>
							<li><a href="#modal_mainCase" class="btn_modalOpen">								
								<img src="./images/img_mainCase1.jpg" alt="">
								<span>�泲â��������������������</span>
							</a></li>		
						</ul>
						<div class="paging">
							<a href="#" class="first">ó�� ������</a>
							<a href="#" class="prev">���� ������</a>
							<div class="pagingNo">
							</div>
							<!--
							<a href="#" class="num active">1</a>
							<a href="#" class="num">2</a>
							<a href="#" class="num">3</a>
							<a href="#" class="num">4</a>
							<a href="#" class="num">5</a>
							-->
							<a href="#" class="next">���� ������</a>
							<a href="#" class="last">������ ������</a>
						</div>
					</div>
				</div>				
			</div>
			<div id="modal_mainCase" class="modalWrap">
				<div class="modalTitle">
					<h2>�λ� ���屺 ���������������� Ȩ������</h2>
					<a href="#" class="btn_modalClose">â�ݱ�</a>
				</div>
				<div class="modalContent">
					<ul class="modal_infoList">
						<li><span class="row">���͸�</span>�λ� ���屺 ����������������</li>
						<li><span class="row">�Ⱓ</span>2018-08 ~ 2018-11</li>
						<li><span class="row">����</span>������, ������, ���հ����ý��� ���� ����</li>
						<li><span class="row">���߾��</span><span class="type2">ASP</span><span class="type2">Ȩ������(URL)</span><span class="link">http://gijangchild.or.kr/</span><a href="http://gijangchild.or.kr/" target="_blank">Launch Site</a></li>
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
					<h4>Ȩ������ ���� ����</h4>
					<p>������ �þ�, ����, ����, �׽�Ʈ�� ��ģ �� ������ �������� �����մϴ�.</p>
				</div>
				<div class="contentWrap">
					<div class="homepageWrap">
						<ul class="step">
							<li><img src="./images/icon_homepage1.png" alt="">���</li>
							<li><img src="./images/icon_homepage2.png" alt="">������ �þ�</li>
							<li><img src="./images/icon_homepage3.png" alt="">�� ����</li>
							<li><img src="./images/icon_homepage4.png" alt="">����/�׽�Ʈ</li>
							<li><img src="./images/icon_homepage5.png" alt="">Ȩ������ ����</li>
						</ul>
						<div class="infoBox">
							<ul>
								<li>Ȩ������ ���� �� ��� �䱸���׿� ���� 2~3������ �ҿ�˴ϴ�.</li>
								<li>��� �� Ȩ������ �����ΰ� ����� ���(���α׷�)�� �����մϴ�.</li>
								<li>Ȩ������ ���� �� ���������� �����մϴ�.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="section5" class="section">
			<div class="inner">
				<div class="sectionTitle">
					<h4>��Ż �������� ���� ����</h4>
					<p>�ż�, ��Ȯ�� �������� ���� ������ ����մϴ�.</p>
				</div>
				<div class="contentWrap">					
					<div class="serviceList">
						<ul>							
							<li class="item1">
								<img src="./images/icon_serviceList1.jpg" alt="">
								<b>�˾�, �˾��� ����</b>
								<p>���, ���� ����, ���� ��å ȫ�� �� Ȩ������ <br />������ �ʿ��� �κп�  ���� �̹��� �۾� ����</p>
							</li>
							<li class="item2">
								<img src="./images/icon_serviceList2.jpg" alt="">
								<b>������ ����</b>
								<p>��, ���� ����, ���� ���� �� <br />������� �߻� ��  ������ ���� ����</p>
							</li>
							<li class="item3">
								<img src="./images/icon_serviceList3.jpg" alt="">
								<b>��� ����</b>
								<p>���/���� ��û, ���� ���� <br />��û ���� ���å ���� �� ��� ���� ���� </p>
							</li>
							<li class="item4">
								<img src="./images/icon_serviceList4.jpg" alt="">
								<b>���� ���� ����</b>
								<p>����, ������ �������� ��� <br />����� �߰� �� ���� ��ġ</p>
							</li>
							<li class="item5">
								<img src="./images/icon_serviceList5.jpg" alt="">
								<b>Ȩ������ ȣ����</b>
								<p>Ȩ�������� ������ ���������� <br />���񽺵� �� �ֵ��� ȣ���� ����</p>
							</li>
							<li class="item6">
								<img src="./images/icon_serviceList6.jpg" alt="">
								<b>��Ÿ</b>
								<p>���Ϳ��� Ȩ������ ����� <br />��û�ϴ� ���� ����</p>
							</li>
						</ul>
						<p>�� �������� ��� ���� ü�� ��</p>
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
							Ȩ������ ������� ���ǻ����� �����Ű���? <br />�Ʒ� ����ó�� ���� �ֽø� ģ���ϰ� ����ص帳�ϴ�. 
						</div>
						<div class="btnArea right">
							<a href="#">�Ұ��� �ٿ�ε�</a>
							<a href="#modal_maintenance" class="btn_modalOpen">�������� ��å</a>
						</div>
						<div class="tableBox">
							<table class="list">
								<caption>����ó ���ǥ</caption>
								<colgroup>
									<col />
								</colgroup>
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">Ȩ������ �ܵ� ����</th>
										<th scope="col">Ȩ������ + ���̷��긾ī��<br />���� ����</th>
										<th scope="col">Ȩ������, ���̷��긾ī�� <br />���� ����</th>
										<th scope="col">��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">���� �Ⱓ</th>
										<td>Ȩ������ ������ <br />���� �Ϸ� �� 1.5����</td>
										<td>Ȩ������ ������ <br />���� �Ϸ� �� 2����</td>
										<td>Ȩ������ ������ <br />���� �Ϸ� �� 2.5~3����</td>
										<td>���Ⱓ ��<br />��� ��������</td>
									</tr>
									<tr>
										<th scope="row">�ҿ� ���</th>
										<td>���� ����</td>
										<td>���� ����</td>
										<td>���� ����</td>
										<td>���� ����</td>
									</tr>
									<tr>
										<th scope="row">����ó</th>
										<td colspan="4" class="alignLeft">
											<p>
												<b>Ȩ������ ����/� ���/���� ����</b><br />
												- ���� �̻� : 010-6252-8107, pocas4356@injeinc.co.kr<br />
												- ��¿� ���� : 010-3264-5209, info100@injeinc.co.kr
											</p>
											<b>* ��� ���� : ������ ����, 031-456-2277(305), <span>ajk@injeinc.co.kr</span></b>
										</td>
									</tr>
								</thead>
							</table>
						</div>						
					</div>
					<div id="modal_maintenance" class="modalWrap">
						<div class="modalTitle"> 
							<h2>�������� ��å</h2>
							<a href="#" class="btn_modalClose">â�ݱ�</a>
						</div>
						<div class="modalContent">
							<div class="tableBox">
							<table class="list">
								<caption>����ó ���ǥ</caption>
								<colgroup>
									<col style="width:28%;">
									<col />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">����</th>
										<th scope="col">�⺻��</th>
										<th scope="col">�Ϲ���</th>
										<th scope="col">�߱���</th>
										<th scope="col">�����</th>
										<th scope="col">�����̾���</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">����</th>
										<td>5</td>
										<td>5</td>
										<td>10</td>
										<td>15</td>
										<td>20</td>
									</tr>
									<tr>
										<th scope="row">��Ż��/�ܼ���ũ����</th>
										<td>������</td>
										<td>������</td>
										<td>������</td>
										<td>������</td>
										<td>������</td>
									</tr>
									<tr>
										<th scope="row">����������</th>
										<td>1ȸ/��</td>
										<td>1ȸ/��</td>
										<td>2ȸ/��</td>
										<td>4ȸ/��</td>
										<td>6ȸ/��</td>
									</tr>
									<tr>
										<th scope="row">�̹�������</th>
										<td>1ȸ/��</td>
										<td>1ȸ/��</td>
										<td>2ȸ/��</td>
										<td>4ȸ/��</td>
										<td>6ȸ/��</td>
									</tr>
									<tr>
										<th scope="row">�ؽ�Ʈ����</th>
										<td>1ȸ/��</td>
										<td>1ȸ/��</td>
										<td>2ȸ/��</td>
										<td>4ȸ/��</td>
										<td>6ȸ/��</td>
									</tr>
									<tr>
										<th scope="row">�˾�/�������</th>
										<td>1ȸ/��</td>
										<td>1ȸ/��</td>
										<td>2ȸ/��</td>
										<td>4ȸ/��</td>
										<td>6ȸ/��</td>
									</tr>
									<tr>
										<th scope="row">�����</th>
										<td>������</td>
										<td>������</td>
										<td>������</td>
										<td>������</td>
										<td>������</td>
									</tr>
									<tr>
										<th scope="row">�����Խ����߰�</th>
										<td>-</td>
										<td>-</td>
										<td>2ȸ/��</td>
										<td>4ȸ/��</td>
										<td>6ȸ/��</td>
									</tr>
									<tr>
										<th scope="row">���α׷� ��������</th>
										<td>������</td>
										<td>������</td>
										<td>������</td>
										<td>������</td>
										<td>������</td>
									</tr>
									<tr>
										<th scope="row">ȣ����</th>
										<td>1�Ⱑ</td>
										<td>1�Ⱑ</td>
										<td>3�Ⱑ</td>
										<td>5�Ⱑ</td>
										<td>5�Ⱑ</td>
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
			<li class="active"><a href="#section1">�Ұ�</a></li>
			<li><a href="#section2">�ֿ���</a></li>
			<li><a href="#section3">������</a></li>
			<li><a href="#section4">Ȩ������ ���� ����</a></li>
			<li><a href="#section5">��Ż �������� ���� ����</a></li>
			<li><a href="#section6">Contact US</a></li>
		</ul>
	</div>
	</div>
	<div id="footer">
		<div class="inner">
			<p>
				���� : ����� ���α� �����з� 33�� 12, 1301ȣ (���ε�, �츲�̺����2��)<br />
				�������� : ������ ���� �л���117���� 66, 909ȣ (���⵿, ��庥óŸ��) <br />
				<br />
				<span>Copyright�� INJEINC 2019. All Rights Reserved.</span>
			</p>
		</div>
	</div>
</div>
<div id="overlay"></div>
</body>
</html>




