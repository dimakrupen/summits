<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<%
Dim strErr
Select Case Request.Form("btnSubmit") 
	Case "Submit" 
		strSQL = "SELECT * FROM class WHERE classcode = '" & Request.Form ("txtGroup") & "'"
		rs.Open strSQL, oDBConn, 1, 3
		If Not rs.EOF Then
			If Cstr(Request.Form("FileName")) <> "" Then rs("customLogo") = Request.Form("FileName")
            rs("LogOff") = Request.Form("txtLogOff")
            rs.Update
			rs.Close
            %><!--#include file="../includes/DBClose.asp"--><%
		    Response.Redirect("groups.asp")
		Else
			rs.Close
			If Request.QueryString("group") <> "" Then
				strSQL = "SELECT * FROM class WHERE classcode = '" & Request.QueryString("group") & "'"
			Else
				strSQL = "SELECT * FROM class WHERE -1 = 0"
			End If
			%><!--#include file="../includes/rsadd.asp"--><%
			If Request.QueryString("group") = "" Then rs.AddNew
			rs("classcode") = Request.Form ("txtGroup")
            rs("LogOff") = Request.Form("txtLogOff")
            If Cstr(Request.Form("FileName")) <> "" Then rs("customLogo") = Request.Form("FileName")
			rs.Update
			rs.Close
			If Request.QueryString("group") <> "" Then
				strSQL = "UPDATE userdata SET class = '" & Request.Form ("txtGroup") & "' " & _
					"WHERE class = '" & Request.QueryString("group") & "'"
				%><!--#include file="../includes/rsadd.asp"--><%
			End If
			%><!--#include file="../includes/DBClose.asp"--><%
			Response.Redirect("groups.asp")
		End If
	Case "Delete"
		strSQL = "DELETE * FROM class " & _
			"WHERE classcode = '" & Request.QueryString("group") & "'"
		%><!--#include file="../includes/rsadd.asp"--><%
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("groups.asp")
End Select
%>
<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="../header.css" type="text/css" rel="stylesheet">
<script LANGUAGE="javascript">
<!--
function Validate()
{
	<%If Request.QueryString("mode") <> "del" Then%>
    document.all["FileName"].value = window.frames[0].window.document.frmMain.file.value;
	if (document.frmMain.txtGroup.value == "")
	{
		alert("Enter Group Name please");
		document.frmMain.txtGroup.focus();
		return false;
	}
	else
	{
		if(document.frmMain.txtGroup.value.search("'") > 0)
		{
			alert("Invalid Group Name. Use letters and numbers only please.");
			document.frmMain.txtGroup.focus();
			return false;
		}
	}
	<%End If%>
	return true;
}
//-->
</script>

</head>
<body vlink="blue">
<!--#include file="header.asp"-->
<img src="../images/cap_admin_editgroup.gif"><hr>
<p align="right"><a href="groups.asp">Cancel</a></p>
<form name="frmMain" method="POST" onsubmit="return Validate();">
    <input type="hidden" name="FileName" id="FileName">
<blockquote>
<%
Dim group, GroupLogo, logoff
If Request.QueryString("group") <> "" Then
	strSQL = "SELECT * FROM class WHERE classcode = '" & Request.QueryString("group") & "'"
	%><!--#include file="../includes/rsopen.asp"--><%
	If Not rs.EOF Then
		group = rs("classcode")
        GroupLogo = rs("CustomLogo")
        logoff = rs("logoff")
	End If
	rs.Close
Else
	%><b>Add New Group:</b><br><br><%
End If
If strErr <> "" Then%><font color="red"><%=strErr%></font><%End If
%>
<table style="FONT-SIZE: 10pt">
<%
If Request.QueryString("mode") = "del" Then
%>
	<tr>
		<td><b>Group Name</b></td>
		<td><%=group%></td>
	</tr>
<%
	strSQL = "SELECT class FROM userdata " & _
		"WHERE class = '" & Request.QueryString("group") & "'"
	%><!--#include file="../includes/rsopen.asp"--><%
	If Not rs.EOF Then
		%>
		<tr>
			<td colspan="2" style="color:red">You can not delete this group, because it assigned to some users <br>
				<input type="button" name="btnCancel" value="Cancel" onclick="document.location.href='groups.asp'">
			</td>
		</tr>
		<%
	Else
		%>
		<tr>
			<td colspan="2">
				<input type="submit" name="btnSubmit" value="Delete">
				<input type="button" name="btnCancel" value="Cancel" onclick="document.location.href='groups.asp'">
			</td>
		</tr>
		<%	
	End If
	rs.Close
Else
%>
	<tr>
		<td>Group Name:</td>
		<td><input type="text" name="txtGroup" maxlength="50" value="<%=group%>" style="width: 200px;"></td>
	</tr>
    <tr>
		<td>Log Off URL:</td>
		<td><input type="text" name="txtLogOff" maxlength="255" value="<%=logoff%>" style="width: 200px;"></td>
	</tr>
    <tr>
		<td>Display custom logo: </td>
		<td><iframe src="../_upload.asp?file=<%=GroupLogo%>" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="btnSubmit" value="Submit">
			<input type="button" name="btnCancel" value="Cancel" onclick="document.location.href='groups.asp'">
		</td>
	</tr>
<%
End If
%>
</table></blockquote>
</form>
</body>
</html>
<!--#include file="../includes/DBClose.asp"-->