<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "Useful Events"

Dim lngEventId
lngEventId = Request.QueryString("id")
If Request.Form("btnSubmit") = "Save" Then
	strSQL = "SELECT * FROM Events WHERE EventId = " & lngEventId
	rs.Open strSQL, oDBConn, 1, 3
	rs("description") = Request.Form("txtActivity")
	rs("Attachment") = Request.Form("FileName")
	If Request.Form("txtDate") <> "" Then 
		rs("date") = CDate(Request.Form("txtDate"))
	Else
		rs("date") = Null
	End If
	If Request.Form("cbxClassOnly") <> "" Then 
		rs("classonly") = True
	Else
		rs("classonly") = False
	End If
	If Request.Form("txtUrl") <> "" Then 
		rs("url") = Request.Form("txtUrl")
	Else
		rs("url") = Null
	End If
	rs("showexpired") = Request.Form("cbxShowExpired") <> ""

    If Request.Form("txtLocation") <> "" Then 
        rs("Location") = Request.Form("txtLocation")
    Else
        rs("Location") = Null
    End If

    If Request.Form("txtOrganizer") <> "" Then 
        rs("Organizer") = Request.Form("txtOrganizer")
    Else
        rs("Organizer") = Null
    End If

    If Request.Form("txtDaysLength") <> "" Then 
        rs("DaysLength") = Request.Form("txtDaysLength")
    Else
        rs("DaysLength") = Null
    End If
	rs.Update
	rs.Close
		
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
<img src="images/cap_usefulevents_edit.gif">
<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="FileName" id="FileName">
<input type="hidden" name="mode">
<%
strSQL = "SELECT * FROM Events WHERE EventId = " & lngEventId
'debug(strSQL)
%><!--#include file="includes/rsopen.asp"-->
<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<tr>
		<td>Activity</td>
		<td><textarea class="tblBase" style="WIDTH: 300; HEIGHT: 109px" name="txtActivity" rows="4" cols="37"><%=rs("Description")%></textarea></td>
	</tr>
    <tr>
		<td>Organizer (optional)</td>
		<td><input type="text" name="txtOrganizer" id="txtOrganizer" class="tblBase" maxlength="255" value="<%=rs("Organizer")%>" style="width:300px"></td>
	</tr>
    <tr>
		<td>Location (optional)</td>
		<td><input type="text" name="txtLocation" id="txtLocation" class="tblBase" maxlength="255" value="<%=rs("Location")%>" style="width:300px"></td>
	</tr>
	<tr>
		<td>Event Link (optional)</td>
		<td><input type="text" name="txtUrl" id="txtUrl" class="tblBase" maxlength="255" style="width:300px" value="<%=rs("url")%>"></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%If Not IsNull(rs("date")) Then Response.Write(FormatDateTime(rs("date"), 2)) End If%>" style="width:80px">
            &nbsp;Days Length (optional)
            <input type="text" name="txtDaysLength" class="tblBase" maxlength="10" style="width:80px" value="<%=rs("DaysLength")%>">
		</td>
	</tr>
	<tr>
		<td>Attach Document</td>
		<td>
			<iframe src="_upload.asp?file=<%=rs("attachment")%>" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="30px"></iframe>

		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxClassOnly" class="i_wo_border" <%If rs("classonly") Then Response.Write("CHECKED") End If%>>Invite My Group Only</td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxShowExpired" class="i_wo_border" <%If rs("ShowExpired") Then Response.Write("CHECKED") End If%>>Show Even if Expired</td>
	</tr>
</table>

<input type="submit" name="btnSubmit" value="Save" class="tblBase">
<input type="button" value="Cancel" onclick="document.frmMain.action = 'lm_event-usefullevents.asp';document.frmMain.submit();" id="button1" name="button1">
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->