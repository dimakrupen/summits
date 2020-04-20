<%
Dim rs, rs2, oDBConn, strSQL
Dim scriptType, strError, strSelectedMenu
Dim star, customLogo, customSplash
star = "<font color='red'>*</font>"

Set rs = Server.CreateObject ("ADODB.Recordset")
Set rs2 = Server.CreateObject ("ADODB.Recordset")
Set oDBConn = Server.CreateObject("ADODB.Connection")
If Session("admin") <> "yes" Then
	oDBConn.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & server.MapPath("summit.mdb") 
Else
	oDBConn.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & server.MapPath("../summit.mdb") 
End If

On Error Resume Next
oDBConn.Open
If Err.number <> 0 Then
	If InStr(1, err.Description, "Could not find file") > 0 Then
        Session("admin") = ""
        oDBConn.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & server.MapPath("summit.mdb") 
        oDBConn.Open
	End If
End If
On Error GoTo 0
    
'strSQL = "SELECT customLogo, customSplash FROM Settings"
'rs.Open strSQL, oDBConn, 3, 1
'customLogo = rs("customLogo")
'customSplash = rs("customSplash")
'rs.Close 

Dim sesEmail, sesFirst, sesLast, sesUserId, sesClass, sesClass2
sesUserId = 0
sesEmail = Request.Form("sesEmail")
sesFirst = Request.Form("sesFirst")	
sesLast = Request.Form("sesLast")
If Request.Form("sesUserId") <> "" Then sesUserId = Request.Form("sesUserId")
sesClass = Request.Form("sesClass")
sesClass2 = Request.Form("sesClass2")

If CLng(sesUserId) > 0 Then
    On Error Resume Next
    strSQL = "SELECT A.CustomLogo FROM userdata INNER JOIN [class] A ON userdata.[class] = A.classcode WHERE userdata.userid = " & sesUserId
    'Response.Write(strSQL)
    rs.Open strSQL, oDBConn, 3, 1
    If Not rs.EOF Then
        customLogo = rs("CustomLogo") 
        rs.Close 
    End If
    On Error GoTo 0
End If

Dim site, organization, logo, slogan

site = LCase(Request.ServerVariables("SCRIPT_NAME"))
site = Replace(Left(site, InStr(2, site, "/") - 1), "/", "")

Select Case Site
    Case "associationceosummit", "ceosummit"
        organization = "The CEO Summit"
        logo = "CEO"
        slogan = "The Organization for Top Executives"
    Case "womenleaders", "summits"
	    organization = "Women Leaders"
	    logo = "Women Leaders"
	    slogan = "Powerful Online Resources for Women Leaders"
    Case "dimasummit"
        organization = "Dima Summit"
        logo = "Queen"
        slogan = "Is this the real life? Is this just fantasy? Caught in a landslide, no escape from reality"
    Case "summits"
        organization = "The CEO Summit"
        logo = "CEO"
        slogan = "The Organization for Top Executives"
    Case "associationcfosummit", "cfosummit"
        organization = "The CFO Summit"
        logo  = "CFO"
        slogan = "The Organization for Finance Leaders"
    Case "hrsummit", "associationhrsummit"
        organization = "The HR Summit"
        logo  = "HR"
        slogan = "The Organization for Human Resources Leaders"
    Case "associationciosummit", "ciosummit"
        organization = "The CIO Summit"
        logo  = "CIO"
        slogan = "The Organization for IT Leaders"
    Case "thecoosummit"
        organization = "The COO Summit"
        logo  = "COO"
        slogan = "The Organization for Operations Leaders"
    Case "corpdevsummit"
        organization = "The Corporate Development Summit"
        logo  = "Corporate Development"
        slogan = "The Organization for Corp Dev Leaders"
    Case "theengineeringsummit"
        organization = "The Engineering Summit"
        logo  = "Engineering"
        slogan = "The Organization for Engineering Management Leaders"
    Case "healthcareadminsummit"
        organization = "The Hospital Growth Summit"
        logo  = "Hospital Growth"
        slogan = "The Organization for Healthcare Admin Leaders"
    Case "associationcustomerservicesummit", "customerservicesummit"
        organization = "The Customer Service Summit"
        logo  = "Customer Service"
        slogan = "The Organization for Customer Service Leaders"
    Case "corporatecounselsummit"
        organization = "The Corporate Counsel Summit"
        logo  = "Corporate Counsel"
        slogan = "The Organization for Corporate Counsel Leaders"
    Case "logisticsmanagementsummit", "associationlogisticsmanagementsummit"
        organization = "The Logistics Management Summit"
        logo  = "Logistics Management"
        slogan = ""
    Case "thecmosummit", "associationthecmosummit"
        organization = "The CMO Summit"
        logo  = "CMO"
        slogan = "The Organization for Marketing Leaders"
    Case "theprocurementsummit", "associationtheprocurementsummit"
        organization = "The Procurement Summit"
        logo  = "Procurement"
        slogan = "The Organization for Procurement Leaders"
    Case "productdevsummit", "associationproductdevsummit"
        organization = "The Product Development Summit"
        logo  = "Product Development"
        slogan = "The Organization for Product Development Leaders"
    Case "projectmanagementsummit"
        organization = "The Project Management Summit"
        logo  = "Project Management"
        slogan = "The Organization for Project Management Leaders"
    Case "publicrelationssummit", "associationpublicrelationssummit"
        organization = "The Public Relations Summit"
        logo  = "PR"
        slogan = "The Organization for Public Relations Leaders"
    Case "qualitymanagementsummit", "associationqualitymanagementsummit"
        organization = "The Quality Management Summit"
        logo  = "Quality Management"
        slogan = "The Organization for Quality Management Leaders"
    Case "riskmanagementsummit"
        organization = "The Risk Management Summit"
        logo  = "Risk Management"
        slogan = "The Organization for Risk Management Leaders"
    Case "safetymanagementsummit", "associationsafetymanagementsummit"
        organization = "The Safety Management Summit"
        logo  = "Safety Management"
        slogan = "The Organization for Safety Management Leaders"
    Case "thesalessummit", "associationthesalessummit"
        organization = "The Sales Summit"
        logo  = "Sales"
        slogan = "The Organization for Sales Leaders"
    Case "trainingsummit", "associationtrainingsummit"
        organization = "The Training Summit"
        logo  = "Training"
        slogan = "The Organization for Training Leaders"
    Case "csosummit"
        organization = "The Sales Summit"
        logo  = "Sales"
        slogan = "The Organization for Sales Leaders"
    Case "theoperationssummit", "associationtheoperationssummit"
        organization = "The Operations Summit"
        logo  = "COO"
        slogan = "The Organization for Operations Leaders"
End Select


Sub writeSortingHeader(strColumn)
	Response.Write("&nbsp;")
	Response.Write("<a href='" & Request.ServerVariables("SCRIPT_NAME") & "?sort=" & strColumn & "&type=desc'>")
	Response.Write("<img src='images/down.gif' alt='Sort Descending' border='0'>")
	Response.Write("</a>")
	Response.Write("&nbsp;")
	Response.Write("<a href='" & Request.ServerVariables("SCRIPT_NAME") & "?sort=" & strColumn & "&type=asc'>")
	Response.Write("<img src='images/up.gif' alt='Sort Ascending' border='0'>")
	Response.Write("</a>")
	Response.Write("&nbsp;")
End Sub

Sub writeLeftItemMenu(strMenu)
	If strSelectedMenu = strMenu Then
		Response.Write("<b>" & strMenu & "</b>")
	Else
		Response.Write(strMenu)
	End If
End Sub

Sub writeLeftItemMenuIcon(strMenu)
	If strSelectedMenu = strMenu Then
		Response.Write("<img src='images/menu-arrow-selected.gif' />")
	Else
		Response.Write("<img src='images/menu-arrow-unselected.gif' />")
	End If
End Sub

Sub debug(strInfo)
	Response.Write(strInfo)
	Response.End 
End Sub

Function fnGetSelected(value1)
	If value1 Then fnGetSelected = "SELECTED"
End Function

Function getEnrollers(eventid)
	getEnrollers = ""
	strSQL = "SELECT FullName FROM VW_EnrolledList WHERE EventId = " & eventid
	rs2.Open strSQL, oDBConn, 3, 1
	If Not rs2.EOF Then
		Do While Not rs2.EOF 
			getEnrollers = getEnrollers & rs2("FullName") & "<br>"
			rs2.MoveNext 
		Loop
	Else
		getEnrollers = "none"
	End If
	rs2.Close 
End Function

Function formatDate(dtDate, dtTime, dtETime)
	If Not IsNull(dtDate) Then
		If Day(dtDate) = Day(Now()) And Month(dtDate) = Month(Now()) And Year(dtDate) = Year(Now()) Then
			formatDate = "<b><font color=BLUE>TODAY</font></b>"
		Else
			formatDate = FormatDateTime(dtDate, 2)
		End If
		If Not IsNull(dtTime) Then
			formatDate = formatDate & " " & FormatDateTime(dtTime, 4)
		End If
		If Not IsNull(dtETime) Then
			formatDate = formatDate & "-" & FormatDateTime(dtETime, 4)
		End If
	Else
		formatDate = ""
	End If
End Function

Sub SendEmail(strTo, strFrom,  strSubject, strMessage)
	Dim objMail
	Set objMail = Server.CreateObject("Persits.MailSender")
	objMail.Host = "localhost"
	objMail.From = sesEmail
	objMail.FromName = strFrom
	objMail.AddAddress strTo
	objMail.Subject = strSubject
	objMail.Body = strMessage
	objMail.Send
	Set objMail = Nothing
End Sub

Sub SendVolunteersEmail(strSendBy, strDescription, strDate, bClassOnly)
	Dim sMessage
	sMessage = "The following was posted to Worldworks www.wwgiver.com site. " & _
		"If you could assist it would be appreciated." & vbCrLf & vbCrLf & _
		"Posted By: " & strSendBy & vbCrLf & _
		strDescription & vbCrLf & _
		strDate & vbCrLf & vbCrLf & _
		"To volunteer to assist, to post your own giving events, or to change your email notification preferences at any time just log in to www.wwgiver.com"
	
	strSQL = "SELECT email FROM userdata WHERE Deleted = false AND emailgivings = True "
	If bClassOnly Then strSQL = strSQL & " AND class = '" & sesClass & "'"
	rs2.Open strSQL, oDBConn, 3, 1
	If Not rs2.EOF Then
		Do While Not rs2.EOF
			SendEmail rs2("Email"), strSendBy, "Worldworks Giving/Volunteers Needed Request from " & strSendBy, sMessage
			rs2.MoveNext 
		Loop
	End If
	rs2.Close 
End Sub

Sub SendMeetingEmail2Class(strSendBy, strDescription, strDate, bClassOnly)
	Dim sMessage
	strSQL = "SELECT siteAddress FROM Settings"
	rs2.Open strSQL, oDBConn, 3, 1
	strDescription = Replace(strDescription, "<b>", "")
	strDescription = Replace(strDescription, "</b>", "")
	strDescription = Replace(strDescription, "<i>", "")
	strDescription = Replace(strDescription, "</i>", "")
	strDescription = Replace(strDescription, "<u>", "")
	strDescription = Replace(strDescription, "</u>", "")
	strDescription = Replace(strDescription, "<br>", "")
	sMessage = "The following was posted on the " & sesClass & " site." & _
		"More details are available by logging in at " & rs2("siteAddress") & vbCrLf & vbCrLf & _
		"Posted By: " & strSendBy & vbCrLf & _
		" - Date: " & strDate & vbCrLf & _
		" - Description: " & strDescription & vbCrLf & _
		vbCrLf & _
		"To change your email notification preferences at any time just log in to " & rs2("siteAddress")
	'Response.Write(sMessage)
	'Response.End 
	rs2.Close	
	strSQL = "SELECT email FROM userdata WHERE Deleted = false AND emailevents = True "
	If bClassOnly Then strSQL = strSQL & " AND class = '" & sesClass & "'"
	rs2.Open strSQL, oDBConn, 3, 1
	If Not rs2.EOF Then
		Do While Not rs2.EOF
			SendEmail rs2("Email"), strSendBy, sesClass & " Invitation/Event from " & strSendBy, sMessage
			rs2.MoveNext 
		Loop
	End If
	rs2.Close 
End Sub

Sub SendQuestion2Class(strSendBy, strDescription, strDate)
	Dim sMessage
	strSQL = "SELECT siteAddress FROM Settings"
	rs2.Open strSQL, oDBConn, 3, 1
	sMessage = "The following question was posted at the " & organization & " site. If you could offer any advice, the following question was submitted by " & strSendBy & vbCrLf & vbCrLf & _
		strDescription & vbCrLf & strDate & vbCrLf & vbCrLf & _
		"To post questions, view all of them, or to change your email " & _
		"notification preferences at any time just log into:" & vbCrLf & _
		rs2("siteAddress")
	rs2.Close
	strSQL = "SELECT email, advicequestions FROM userdata WHERE Deleted = false AND emailtransformations = True AND class = '" & sesClass & "'"
	rs2.Open strSQL, oDBConn, 3, 1
	If Not rs2.EOF Then
		Do While Not rs2.EOF
            If rs2("advicequestions") = True Then
			    SendEmail rs2("email"), strSendBy, organization & " question by " & strSendBy, sMessage
            End If
			rs2.MoveNext 
		Loop
	End If
	rs2.Close 
End Sub

Sub SendIdea2Class(strSendBy, strDescription, strDate)
	Dim sMessage
	strSQL = "SELECT siteAddress FROM Settings"
	rs2.Open strSQL, oDBConn, 3, 1
	sMessage = "The following idea was posted at the " & organization & _
		" site by " & strSendBy & _
		". If useful, please take a moment to thank them for posting it." & vbCrLf & vbCrLf & _
		strDescription & vbCrLf & strDate & vbCrLf & vbCrLf & _
		"To post ideas, view all of them, or to change your email " & _
		"notification preferences at any time just log into:" & vbCrLf & _
		rs2("siteAddress")
	rs2.Close
	strSQL = "SELECT email, sharedideas FROM userdata WHERE Deleted = false AND emailtransformations = True " & _
		" AND class = '" & sesClass & "'"
	rs2.Open strSQL, oDBConn, 3, 1
	If Not rs2.EOF Then
		Do While Not rs2.EOF
            If rs2("sharedideas") = True Then
			    SendEmail rs2("Email"), strSendBy, organization & " key Idea by " & strSendBy, sMessage
            End If
			rs2.MoveNext 
		Loop
	End If
	rs2.Close 
End Sub

Sub ResponseRedirect(strPage)
	Response.Write("<html>")
	Response.Write("<body onload='document.frmMain.submit();'>")
	Response.Write("<form name='frmMain' action='" + strPage + "' method='POST'>")
	%><!--#include file="formvars.asp"--><%
	Response.Write("</FORM>")
	Response.Write("</body>")
	Response.Write("</html>")
	Response.End 
End Sub

%>
