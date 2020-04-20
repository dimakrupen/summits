<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "Useful Events"

If Request.Form("btnSubmit") = "Submit" Then
	strSQL = "Events" 
	rs.Open strSQL, oDBConn, 1, 3
	rs.AddNew
	rs("eventtypeid") = 10
	rs("userid") = sesUserId
	rs("description") = Request.Form("txtActivity")

    If Request.Form("txtLocation") <> "" Then rs("Location") = Request.Form("txtLocation")
    If Request.Form("txtOrganizer") <> "" Then rs("Organizer") = Request.Form("txtOrganizer")
    If Request.Form("txtDaysLength") <> "" Then rs("DaysLength") = Request.Form("txtDaysLength")

	If Request.Form("txtDate") <> "" Then rs("date") = CDate(Request.Form("txtDate"))
	If Request.Form("cbxClassOnly") <> "" Then rs("classonly") = True
	If Request.Form("txtUrl") <> "" And Request.Form("txtUrl") <> "http://" Then rs("url") = Request.Form("txtUrl")
	rs("Attachment") = Request.Form("FileName")
	rs("showexpired") = Request.Form("cbxShowExpired") <> ""
	rs.Update
	rs.Close

	If Request.Form("cbxSuppress") = "" Then
		strSQL = "SELECT Company FROM userdata WHERE userid = " & sesUserId
		%><!--#include file="includes/rsopen.asp"--><%
		SendMeetingEmail2Class sesFirst & " " & sesLast & " of " & rs("Company") & " (" & sesEmail & ")", Request.Form("txtActivity"), Request.Form("txtDate"), Request.Form("cbxClassOnly") <> ""
		rs.Close
	End If
	ResponseRedirect("lm_event-usefullevents.asp")
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
	/*if(document.frmMain.txtDate.value == "")
	{
		alert("Enter Date please");
		document.frmMain.txtDate.focus();
		return false;
	}*/
	if (document.getElementById("txtUrl").value != "")
	{
		if (document.getElementById("txtUrl").value.indexOf("http://") != 0)
		{
			alert("Event Link must starts from 'http://'");
			document.getElementById("txtUrl").focus();
			return false;
		}
	}
	document.all["FileName"].value = window.frames[0].window.document.frmMain.file.value;
	return true;
}

//-->
</script>

</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<img src="images/cap_usefulevents_add.gif">

<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="mode">
<input type="hidden" name="FileName" id="FileName">
<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<tr>
		<td>Activity</td>
		<td><textarea class="tblBase" style="WIDTH: 300px; HEIGHT: 109px" name="txtActivity" rows="4" cols="37"><%=Request.Form("txtActivity")%></textarea></td>
	</tr>
    <tr>
		<td>Organizer (optional)</td>
		<td><input type="text" name="txtOrganizer" id="txtOrganizer" class="tblBase" maxlength="255" style="width:300px"></td>
	</tr>
    <tr>
		<td>Location (optional)</td>
		<td><input type="text" name="txtLocation" id="txtLocation" class="tblBase" maxlength="255" style="width:300px"></td>
	</tr>
	<tr>
		<td>Event Link (optional)</td>
		<td><input type="text" name="txtUrl" id="txtUrl" class="tblBase" maxlength="255" value="http://" style="width:300px"></td>
	</tr>
	<tr>
		<td>Date (optional)</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=FormatDateTime(Now(), 2)%>" style="width:80px">
            &nbsp;Days Length (optional)
            <input type="text" name="txtDaysLength" class="tblBase" maxlength="10" style="width:80px">
		</td>
	</tr>
	<tr>
		<td>Attach Document</td>
		<td>
			<iframe src="_upload.asp" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="30px"></iframe>
		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxClassOnly" class="i_wo_border">Invite My Group Only</td>
	</tr>
	<TR>
		<TD colspan=2><input type="checkbox" name="cbxSuppress" class="i_wo_border" CHECKED>Suppress Email Notification to the Group</TD>
	</TR>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxShowExpired" class="i_wo_border">Show Even if Expired</td>
	</tr>
</table>

<input type="submit" name="btnSubmit" value="Submit" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_event-usefullevents.asp';document.frmMain.submit();">

<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->