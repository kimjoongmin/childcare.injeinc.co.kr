<%
	Dim DBconnectionSTR, DB
	DBconnectionSTR = "Provider=SQLOLEDB.1;Password=2018inje!;Persist Security Info=True;User ID=2018_new.injeinc.co.kr;Initial Catalog=2018_new.injeinc.co.kr;Data Source=211.115.72.172"
	Set DB = Server.CreateObject("ADODB.Connection")
	DB.Open DBconnectionSTR
%>