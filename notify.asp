<!--#include file="connection.asp"-->
<%
	'
	if trim(request.form("email")) <> "" then
	'header('content-type: application/json');
'	$o = new stdClass();
'	$o->status = 'success';
'	echo json_encode($o);
	'
	project = "LDE"
	dim oCdoMsg, oCdoConfg, strReferer, strServer, strClientIP, strServerIP, blnSpam
	set oCdoMsg = server.createobject("CDO.Message")
	'
	oCdoMsg.to = "simon_bone@byteart.com"
	oCdoMsg.from = "website@byteart.com"
	oCdoMsg.Subject = project & " - Holding Page Signup"
	oCdoMsg.HTMLBody = request.form("email")
	'
	strMSSchema = "http://schemas.microsoft.com/cdo/configuration/"
	Set oCdoConfg = Server.CreateObject("CDO.Configuration")
	oCdoConfg.Fields.Item(strMSSchema & "sendusing") = 2
	oCdoConfg.Fields.Item(strMSSchema & "smtpserver") = "localhost"
	oCdoConfg.Fields.Item(strMSSchema & "smtpserverport") = 25
	
	oCdoConfg.Fields.Update 
	Set oCdoMsg.Configuration = oCdoConfg
	'
	oCdoMsg.send
	'
	set oCdoMsg = nothing
	set oCdoConfg = nothing
	'
	Set objConn = Server.CreateObject("ADODB.Connection") 
	objConn.ConnectionString = CONNECTIONSTRING
	objConn.Open
	'
	sql = "INSERT INTO holding_emails (holding_emails_email, holding_emails_data) VALUES ('" & replace(request.form("email"), "'", "''") & "', '')"
	SET ORS=objConn.execute(sql)
	'holding_emails_email
	'
	Response.ContentType = "application/json"
	'Response.AddHeader "WARNING","Error message text"
	response.write("{""status"": ""success""}")
	'
	end if
%>