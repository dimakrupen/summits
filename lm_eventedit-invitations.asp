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
		rs("date") = CDate(Request.Form("txtDate"))
		rs("classonly") = Request.Form("cbxClassOnly") <> ""
		rs("hidden") = Request.Form("cbxHide") <> ""
		rs("Attachment") = Request.Form("FileName")
		rs("adescription") = Request.Form("txtADescription")
		
		rs("filename2") = Request.Form("FileName2")
		rs("descriptions2") = Request.Form("txtDescs2")
		rs("filename3") = Request.Form("FileName3")
		rs("descriptions3") = Request.Form("txtDescs3")
		rs("filename4") = Request.Form("FileName4")
		rs("descriptions4") = Request.Form("txtDescs4")
		
		rs.Update
		rs.Close
		
		ResponseRedirect("lm_event-invitations.asp")
	Else
		strError = "Invalid Date"
	End If
End If
%>
	<script LANGUAGE="javascript">
<!--

function fnCheck()
{
	if (document.frmMain.cbxClassOnly.checked)
	{
		if(!window.confirm("Invite My Group Only is CHECKED!\r\nAre you sure? This will make the meeting visible by only the members in this specific group."))
			return false;
	}
	if (document.frmMain.cbxHide.checked)
	{
		if(!window.confirm("Hide it from display to other group members is CHECKED!\r\nAre you sure? This will hide the event from all members as if it was deleted."))
			return false;
	}
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
	document.all["FileName"].value = window.frames[0].window.document.frmMain.file.value;
	document.all["FileName2"].value = window.frames[1].window.document.frmMain.file.value;
	document.all["FileName3"].value = window.frames[2].window.document.frmMain.file.value;
	document.all["FileName4"].value = window.frames[3].window.document.frmMain.file.value;
	return true;
}

//-->
</script>

</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<img src="images/cap_meetings_edit.gif">
<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="FileName" id="FileName">

<input type="hidden" name="FileName2" id="FileName2">
<input type="hidden" name="FileName3" id="FileName3">
<input type="hidden" name="FileName4" id="FileName4">
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
		<td colspan="2">
			<input type="checkbox" name="cbxHide" <%If rs("hidden") Then%>CHECKED<%End If%> class="i_wo_border">Hide it from display to other group members
		</td>
	</tr>
	<tr>
		<td>Activity</td>
		<td><textarea class="tblBase" style="WIDTH: 274px; HEIGHT: 109px" name="txtActivity" rows="4" cols="37"><%=rs("Description")%></textarea></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=FormatDateTime(rs("date"), 2)%>" style="width:80px"></td>
	</tr>
	<tr>
		<td>Attach Document</td>
		<td>
			<iframe src="_upload.asp?file=<%=rs("attachment")%>" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="30px"></iframe>

		</td>
	</tr>
	<tr>
		<td>Description of the attachment</td>
		<td><input type="text" name="txtADescription" class="tblBase" maxlength="255" value="<%=rs("adescription")%>" style="width:275px"></td>
	</tr>
	<tr>
		<td>Additional File #2</td>
		<td><iframe src="_upload.asp?file=<%=rs("filename2")%>" id="ifAttach2" name="ifAttach2" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>File Description #2</td>
		<td><input type="text" name="txtDescs2" class="tblBase" maxlength="100" style="width: 340px" value="<%=rs("descriptions2")%>"></td>
	</tr>
	<tr>
		<td>Additional File #3</td>
		<td><iframe src="_upload.asp?file=<%=rs("filename3")%>" id="ifAttach3" name="ifAttach3" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>File Description #3</td>
		<td><input type="text" name="txtDescs3" class="tblBase" maxlength="100" style="width: 340px" value="<%=rs("descriptions3")%>"></td>
	</tr>
	<tr>
		<td>Additional File #4</td>
		<td><iframe src="_upload.asp?file=<%=rs("filename4")%>" id="ifAttach4" name="ifAttach4" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>File Description #4</td>
		<td><input type="text" name="txtDescs4" class="tblBase" maxlength="100" style="width: 340px" value="<%=rs("descriptions4")%>"></td>
	</tr>
</table>

<input type="submit" name="btnSubmit" value="Save" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_event-invitations.asp';document.frmMain.submit();" id="button1" name="button1">
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->