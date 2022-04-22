<%@ CODEPAGE=65001%>
<%response.charset = "utf-8"%>
<!--#include virtual = "/include/db_open.asp"-->
<!--#include virtual = "/include/function.asp"-->
<%	
	Name		= FilterWord(request("Name"))
	Tel			= FilterWord(request("Tel"))
	ip			= FilterWord(request("ip"))
	Memo		= Write_txt(FilterWord(request("Memo")))
	auto_num	= FilterWord(request("auto_num"))

	If Name = "" Or Tel = "" Or auto_num = "" Then
		ftnjsAlertMsgUrl "잘못된 경로로 접근하셨습니다. 다시 확인부탁드립니다.", "/"
		response.end
	End If
	
	chk_num		= request.cookies("chk_num")
		
	if abs(int(chk_num) - int(auto_num)) > 0  Then
		ftnjsAlertMsgUrl "자동등록방지를 위한 숫자가 일치하지 않습니다.", "/"
		response.End
	end If

	'## 변수처리 ##
	MaxNumber		= SR_FUN_getMaxFromDB ("tb_demo", "sn", "")
	state			= "N"

	'-----------쿼리 작성--------------------------------------------------------------
	SQL = "insert into tb_demo(sn,Name,Tel,ip,Memo,state,registip,regist_day) values ('"
	SQL = SQL &  MaxNumber        	& "','"

	SQL = SQL &  Name          	& "','"
	SQL = SQL &  Tel         	& "','"
	SQL = SQL &  ip				& "','"
	SQL = SQL &  Memo			& "','"

	SQL = SQL &  state			& "','"
	SQL = SQL &  page_info(1)	& "','"
	SQL = SQL &  now()			& "')"

	DB.execute(SQL)


	ftnjsAlertMsgUrl "데모체험 신청이 완료되었습니다. 담당자 확인 후 연락드리겠습니다.","/"
%>
<!--#include virtual="/include/db_closs.asp"-->


