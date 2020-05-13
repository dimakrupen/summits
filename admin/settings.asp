<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<%
Dim strErr
Select Case Request.Form("btnSubmit") 
	Case "Save" 
		strSQL = "SELECT * FROM Settings"
		%><!--#include file="../includes/rsadd.asp"--><%
		rs("moderatorEmail") = Request.Form("moderatorEmail")
		rs("moderatorName") = Request.Form("moderatorName")
		rs("suggestionsEmail") = Request.Form("suggestionsEmail")
		rs("referMemberEmail") = Request.Form("referMemberEmail")
		rs("referPresenterEmail") = Request.Form("referPresenterEmail")
		rs("siteAddress") = Request.Form("siteAddress")
        rs("DialIn") = Request.Form("dialIn")
		rs("adminlogin") = Request.Form("adminlogin")
		rs("adminpassword") = Request.Form("adminpassword")
		rs("customLogo") = Request.Form("FileName")
		rs("customSplash") = Request.Form("FileName2")
		rs("execbook") = Request.Form("execbook")
		rs("vipcode") = Request.Form("vipcode")
        rs("ShowCourses") = Request.Form("ShowCourses") <> ""
        rs("ShowAudio") = Request.Form("ShowAudio") <> ""
            
		rs.Update
		rs.Close
		strErr = "Saved"
End Select
%>
<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="header.css" type="text/css" rel="stylesheet">
<script LANGUAGE="javascript">
<!--
function Validate()
{
	document.all["FileName"].value = window.frames[0].window.document.frmMain.file.value;
	document.all["FileName2"].value = window.frames[1].window.document.frmMain.file.value;
	if(document.frmMain.moderatorEmail.value == "")
	{
		alert("Enter moderator Email please");
		document.frmMain.moderatorEmail.focus();
		return false;
	}
	if(document.frmMain.moderatorName.value == "")
	{
		alert("Enter moderator Name please");
		document.frmMain.moderatorName.focus();
		return false;
	}
	if(document.frmMain.suggestionsEmail.value == "")
	{
		alert("Enter suggestions Email please");
		document.frmMain.suggestionsEmail.focus();
		return false;
	}
	if(document.frmMain.referMemberEmail.value == "")
	{
		alert("Enter referMember Email please");
		document.frmMain.referMemberEmail.focus();
		return false;
	}
	if(document.frmMain.referPresenterEmail.value == "")
	{
		alert("Enter refer Presenter Email please");
		document.frmMain.referPresenterEmail.focus();
		return false;
	}
	if(document.frmMain.siteAddress.value == "")
	{
		alert("Enter site Address please");
		document.frmMain.siteAddress.focus();
		return false;
	}
	if(document.frmMain.adminlogin.value == "")
	{
		alert("Enter admin login please");
		document.frmMain.adminlogin.focus();
		return false;
	}
	if(document.frmMain.adminpassword.value == "")
	{
		alert("Enter admin password please");
		document.frmMain.adminpassword.focus();
		return false;
	}
	return true;
}
//-->
</script>

</head>
<body vlink="blue">
<!--#include file="header.asp"-->
<img src="../images/cap_admin_settings.gif"><hr>
<form name="frmMain" method="POST" onsubmit="return Validate();">
<input type="hidden" name="FileName" id="FileName">
<input type="hidden" name="FileName2" id="FileName2">
<blockquote>
<%
strSQL = "SELECT * FROM Settings"
%><!--#include file="../includes/rsopen.asp"-->
<table style="FONT-SIZE: 10pt">
	<tr>    
		<td align="right">Moderator Email: </td>
		<td align="left"><input type="text" name="moderatorEmail" style="width: 200px" maxlength="50" value="<%=rs("moderatorEmail")%>"></td>
	</tr>
	<tr>
		<td align="right">Moderator Name: </td>
		<td align="left"><input type="text" name="moderatorName" style="width: 200px" maxlength="50" value="<%=rs("moderatorName")%>"></td>
	</tr>
	<tr>
		<td align="right">Suggestions Email: </td>
		<td align="left"><input type="text" name="suggestionsEmail" style="width: 200px" maxlength="50" value="<%=rs("suggestionsEmail")%>"></td>
	</tr>
	<tr>
		<td align="right">Refer Member Email: </td>
		<td align="left"><input type="text" name="referMemberEmail" style="width: 200px" maxlength="50" value="<%=rs("referMemberEmail")%>"></td>
	</tr>
	<tr>
		<td align="right">Refer Presenter Email: </td>
		<td align="left"><input type="text" name="referPresenterEmail" style="width: 200px" maxlength="50" value="<%=rs("referPresenterEmail")%>"></td>
	</tr>
	<tr>
		<td align="right">Site Address: </td>
		<td align="left"><input type="text" name="siteAddress" style="width: 200px" maxlength="50" value="<%=rs("siteAddress")%>"></td>
	</tr>
    <tr>
		<td align="right">Dial-In: </td>
		<td align="left"><input type="text" name="dialIn" style="width: 200px" maxlength="50" value="<%=rs("DialIn")%>"></td>
	</tr>
	<tr>
		<td align="right">Admin Login: </td>
		<td align="left"><input type="text" name="adminlogin" style="width: 200px" maxlength="50" value="<%=rs("adminlogin")%>"></td>
	</tr>
	<tr>
		<td align="right">Admin Password: </td>
		<td align="left"><input type="text" name="adminpassword" style="width: 200px" maxlength="50" value="<%=rs("adminpassword")%>"></td>
	</tr>
	<tr>
		<td align="right" colspan=2><hr></td>
	</tr>
	<tr>
		<td align="right">ExecBook activation link: </td>
		<td align="left"><input type="text" name="execbook" style="width: 400px" value="<%=rs("execbook")%>"></td>
	</tr>
	<tr>
		<td align="right">VIP Code for Courses: </td>
		<td align="left"><input type="text" name="vipcode" style="width: 400px" value="<%=rs("vipcode")%>"></td>
	</tr>
	<tr>
		<td align="right" colspan=2><hr></td>
	</tr>
	<tr>
		<td align="right">Use a different masthead image: </td>
		<td align="left"><iframe src="../_upload.asp?file=<%=rs("customLogo")%>" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td align="right">Use a different splash page image: </td>
		<td align="left"><iframe src="../_upload.asp?file=<%=rs("customSplash")%>" id="ifAttach2" name="ifAttach2" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
    <tr>
		<td align="right" colspan=2><hr></td>
	</tr>
    <tr>
		<td align="right">Show Courses tab.</td>
		<td align="left"><input type="checkbox" name="ShowCourses" <%If rs("ShowCourses") Then%>CHECKED<%End If%>>Show Courses tab.</td>
	</tr>
    <tr>
		<td align="right">Show Audio tab.</td>
		<td align="left"><input type="checkbox" name="ShowAudio" <%If rs("ShowAudio") Then%>CHECKED<%End If%>>Show Audio tab.</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="submit" name="btnSubmit" value="Save">
		</td>
	</tr>
</table></blockquote>
</form>
<%
rs.Close
%>
</body>
</html>
<!--#include file="../includes/DBClose.asp"-->