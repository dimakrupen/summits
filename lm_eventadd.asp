<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
If Request.Form("btnSubmit") = "Submit" Then
	If IsDate(Request.Form("txtDate")) Then
		strSQL = "Events" 
		rs.Open strSQL, oDBConn, 1, 3
		rs.AddNew
		rs("eventtypeid") = strEventTypeId
		rs("userid") = sesUserId
		rs("description") = Request.Form("txtActivity")
		rs("date") = CDate(Request.Form("txtDate"))
		If Request.Form("cbxKeepPrivate") <> "" Then rs("classonly") = True
		rs.Update
		rs.Close
		
		If Request.Form("cbxSuppress") = "" Then
			strSQL = "SELECT Company FROM userdata WHERE userid = " & sesUserId
			%><!--#include file="includes/rsopen.asp"--><%
			If Request.Form("cbxKeepPrivate") = "" Then
				If strEventTypeId = "6" Then SendQuestion2Class sesFirst & " " & sesLast & " of " & rs("Company") & " (" & sesEmail & ")", Request.Form("txtActivity"), Request.Form("txtDate")
				If strEventTypeId = "3" Then SendIdea2Class sesFirst & " " & sesLast & " of " & rs("Company") & " (" & sesEmail & ")", Request.Form("txtActivity"), Request.Form("txtDate")
			End If
			rs.Close
		End If		
		ResponseRedirect("lm_events.asp?id=" & strEventTypeId)
	Else
		strError = "Invalid Date"
	End If
End If
%>
	<SCRIPT LANGUAGE=javascript>
<!--

function fnCheck()
{
	if(document.frmMain.txtActivity.value == "")
	{
		alert("Enter Activity please");
		document.frmMain.txtActivity.focus();
		return false;
	}
	if(document.frmMain.txtDate.value == "")
	{
		alert("Enter Date please");
		document.frmMain.txtDate.focus();
		return false;
	}
	return true;
}

//-->
</SCRIPT>

</HEAD>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<%=Replace(strEventHeader, "My", "_add")%>
<FORM name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="mode">

<TABLE width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<TR>
		<TD colspan=2><input type="checkbox" name="cbxKeepPrivate" class="i_wo_border">Keep Private</TD>
	</TR>
	<TR>
		<TD><%=strSubject%></TD>
		<TD><TEXTAREA class=tblBase style="WIDTH: 274px; HEIGHT: 109px" name=txtActivity rows=4 cols=37><%=Request.Form("txtActivity")%></TEXTAREA></TD>
	</TR>
	<TR>
		<TD>Date</TD>
		<TD><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=FormatDateTime(Now(), 2)%>" style="width:80px"></TD>
	</TR>
	<TR>
		<TD colspan=2><input type="checkbox" name="cbxSuppress" class="i_wo_border">Suppress Email Notification to the Group</TD>
	</TR>
</TABLE>

<input type="submit" name="btnSubmit" value="Submit" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_events.asp?id=<%=strEventTypeId%>';document.frmMain.submit();" id=button1 name=button1>

<!--#include file="includes/formvars.asp"--></FORM><!--#include file="includes/footer.asp"-->
</body>
</HTML>
<!--#include file="includes/DBClose.asp"-->