<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
If Request.Form("btnSubmit") = "Submit" Then
	If IsDate(Request.Form("txtDate")) Then
		strSQL = "Events" 
		rs.Open strSQL, oDBConn, 1, 3
		rs.AddNew
		rs("eventtypeid") = 1
		rs("userid") = sesUserId
		rs("description") = Request.Form("txtActivity")
		rs("location") = Request.Form("txtLocation")
		rs("date") = CDate(Request.Form("txtDate"))
		If IsDate(Request.Form("txtTime")) Then rs("time") = Request.Form("txtTime")
		If IsDate(Request.Form("txtETime")) Then rs("etime") = Request.Form("txtETime")
		If Request.Form("cbxClassOnly") <> "" Then rs("classonly") = True
		rs.Update
		rs.Close
		Dim strDate
		strDate = Request.Form("txtDate")
		If IsDate(Request.Form("txtTime")) Then 
			strDate = strDate & " from " & Request.Form("txtTime")
			If IsDate(Request.Form("txtETime")) Then 
				strDate = strDate & " to " & Request.Form("txtETime")
			End If
		End If
		If Request.Form("cbxSuppress") = "" Then
			strSQL = "SELECT Company FROM userdata WHERE userid = " & sesUserId
			%><!--#include file="includes/rsopen.asp"--><%
			SendMeetingEmail2Class sesFirst & " " & sesLast & " of " & rs("Company") & " (" & sesEmail & ")", Request.Form("txtActivity"), strDate, Request.Form("cbxClassOnly") <> ""
			rs.Close
		End If
		
		ResponseRedirect("lm_event-volunteer.asp")
	Else
		strError = "Invalid Date"
	End If
End If
%>
	<script LANGUAGE="javascript">
<!--

function fnCheck()
{
	if(document.frmMain.txtActivity.value == "")
	{
		alert("Enter Activity please");
		document.frmMain.txtActivity.focus();
		return false;
	}
	if(document.frmMain.txtLocation.value == "")
	{
		alert("Enter Location please");
		document.frmMain.txtLocation.focus();
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
</script>

</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<img src="images/cap_membervisitations_add.gif">
<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="mode">
<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="left" colspan="2">We encourage you to visit other members at their locations to exchange ideas.</td>
	</tr>
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxClassOnly" class="i_wo_border" CHECKED>Display to My Group Only</td>
	</tr>
	<tr>
		<td>Meeting Names &amp; Objectives</td>
		<td><textarea class="tblBase" style="WIDTH: 274px; HEIGHT: 109px" name="txtActivity" rows="4" cols="37"><%=Request.Form("txtActivity")%></textarea></td>
	</tr>
	<tr>
		<td>Location</td>
		<td><input type="text" name="txtLocation" class="tblBase" maxlength="100" value="<%=Request.Form("txtLocation")%>"></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=FormatDateTime(Now(), 2)%>" style="width:70px"></td>
	</tr>
	<tr>
		<td>Start Time (HH:MM)</td>
		<td><input type="text" name="txtTime" class="tblBase" maxlength="5" style="width:40px"></td>
	</tr>
	<tr>
		<td>End Time (HH:MM)</td>
		<td><input type="text" name="txtETime" class="tblBase" maxlength="5" style="width:40px" value></td>
	</tr>
	<TR>
		<TD colspan=2><input type="checkbox" name="cbxSuppress" class="i_wo_border">Suppress Email Notification to the Group</TD>
	</TR>
</table>

<input type="submit" name="btnSubmit" value="Submit" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_event-volunteer.asp';document.frmMain.submit();" id="button1" name="button1">
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->