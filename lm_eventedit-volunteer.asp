<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
Dim lngEventId
lngEventId = Request.QueryString("id")
If Request.Form("btnSubmit") = "Save" Then
	If IsDate(Request.Form("txtDate")) Then
		strSQL = "SELECT * FROM Events WHERE EventId = " & lngEventId
		rs.Open strSQL, oDBConn, 1, 3
		rs("description") = Request.Form("txtActivity")
		rs("location") = Request.Form("txtLocation")
		rs("date") = CDate(Request.Form("txtDate"))
		If IsDate(Request.Form("txtTime")) Then 
			rs("time") = Request.Form("txtTime")
		Else
			rs("time") = null
		End If
		If IsDate(Request.Form("txtETime")) Then 
			rs("etime") = Request.Form("txtETime")
		Else
			rs("etime") = null
		End If
		If Request.Form("cbxClassOnly") <> "" Then 
			rs("classonly") = True
		Else
			rs("classonly") = False
		End If
		rs.Update
		rs.Close
		
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
<img src="images/cap_membervisitations_edit.gif">

<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="mode">
<%
strSQL = "SELECT * FROM Events WHERE EventId = " & lngEventId
%><!--#include file="includes/rsopen.asp"-->
<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxClassOnly" class="i_wo_border" <%If rs("classonly") Then Response.Write("CHECKED") End If%>>Invite My Group Only</td>
	</tr>
	<tr>
		<td>Meeting Names &amp; Objectives</td>
		<td><textarea class="tblBase" style="WIDTH: 274px; HEIGHT: 109px" name="txtActivity" rows="4" cols="37"><%=rs("Description")%></textarea></td>
	</tr>
	<tr>
		<td>Location</td>
		<td><input type="text" name="txtLocation" class="tblBase" maxlength="100" value="<%=rs("location")%>"></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=FormatDateTime(rs("date"), 2)%>" style="width:70px"></td>
	</tr>
	<tr>
		<td>Start Time (HH:MM)</td>
		<td><input type="text" name="txtTime" class="tblBase" maxlength="5" style="width:40px" value="<%=rs("time")%>"></td>
	</tr>
	<tr>
		<td>End Time (HH:MM)</td>
		<td><input type="text" name="txtETime" class="tblBase" maxlength="5" style="width:40px" value="<%=rs("etime")%>"></td>
	</tr>
</table>

<input type="submit" name="btnSubmit" value="Save" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_event-volunteer.asp';document.frmMain.submit();" id="button1" name="button1">
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->