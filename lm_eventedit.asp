<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
Dim lngEventId
lngEventId = Request.QueryString("id")
If Request.Form("btnSubmit") = "Save" Then
	If IsDate(Request.Form("txtDate")) Then
		strSQL = "SELECT * FROM Events WHERE EventId = " & lngEventId
		rs.Open strSQL, oDBConn, 1, 3
		rs("description") = Request.Form("txtActivity")
		rs("date") = CDate(Request.Form("txtDate"))
		If Request.Form("cbxKeepPrivate") <> "" Then 
			rs("classonly") = True
		Else
			rs("classonly") = False
		End If
		rs.Update
		strEventTypeId = rs("eventtypeid")
		rs.Close
		
		ResponseRedirect("lm_events.asp?id=" & strEventTypeId)
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

<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="mode">
<%
strSQL = "SELECT * FROM Events WHERE EventId = " & lngEventId
%><!--#include file="includes/rsopen.asp"-->
<%
If rs("eventtypeid") = 3 Then
	%><img src="images/cap_ShareBreakThroughs_edit.gif"><%
Else
	%><img src="images/cap_questions_edit.gif"><%
End If
%>

<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxKeepPrivate" class="i_wo_border" <%If rs("classonly") Then Response.Write("CHECKED") End If%>>Keep Private</td>
	</tr>
	<tr>
		<td>Activity</td>
		<td><textarea class="tblBase" style="WIDTH: 274px; HEIGHT: 109px" name="txtActivity" rows="4" cols="37"><%=rs("Description")%></textarea></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=FormatDateTime(rs("date"), 2)%>" style="width:70px"></td>
	</tr>
</table>

<input type="submit" name="btnSubmit" value="Save" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_events.asp?id=3';document.frmMain.submit();" id="button1" name="button1">
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->