<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "Refer a New Member"
If Request.Form("btnSubmit") = "Send" Then
	Dim strBody
	strBody = "Referral of a New Member by  " & sesFirst & " " & sesLast & " " & _
		"(" & sesEmail & "):" & vbCrLf & _
		"Email: " & Request.Form("txtEmail") & vbCrLf & _
		"First Name: " & Request.Form("txtFName") & vbCrLf & _
		"Last Name: " & Request.Form("txtLName") & vbCrLf & _
		"Title: " & Request.Form("txtTitle") & vbCrLf & _
		"Company: " & Request.Form("txtCompany") & vbCrLf & _
		"Address: " & Request.Form("txtAddress") & vbCrLf & _
		"City: " & Request.Form("txtCity") & vbCrLf & _
		"State: " & Request.Form("txtState") & vbCrLf & _
		"Postal / Zip: " & Request.Form("txtZip") & vbCrLf & _
		"Country: " & Request.Form("txtCountry") & vbCrLf & _
		"Phone: " & Request.Form("txtPhone") & vbCrLf
	If Request.Form("txtWebSite") <> "" Then strBody = strBody & "Web Site: " & Request.Form("txtWebSite") & vbCrLf
	If Request.Form("txtComments") <> "" Then strBody = strBody & "Comments: " & Request.Form("txtComments") & vbCrLf
	strSQL = "SELECT referMemberEmail FROM Settings"
	%><!--#include file="includes/rsopen.asp"--><%
	SendEmail rs("referMemberEmail"), sesEmail, sesClass & " New Member Referral", strBody
	rs.Close
End If
%>
	<script LANGUAGE="javascript">
<!--

function fnCheck()
{
	if(document.frmMain.txtEmail.value == "")
	{
		alert("Enter Email please");
		document.frmMain.txtEmail.focus();
		return false;
	}
	if(document.frmMain.txtFName.value == "")
	{
		alert("Enter First Name please");
		document.frmMain.txtFName.focus();
		return false;
	}
	if(document.frmMain.txtLName.value == "")
	{
		alert("Enter Last Name please");
		document.frmMain.txtLName.focus();
		return false;
	}
	if(document.frmMain.txtPhone.value == "")
	{
		alert("Enter Phone please");
		document.frmMain.txtPhone.focus();
		return false;
	}
	return true;
}

//-->
</script>
</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<%If Request.Form("btnSubmit") = "Send" Then%>
<img src="images/cap_referanewmember_sent.gif">
<%Else%>
<img src="images/cap_referanewmember.gif">
<%End If%>


<form name="frmMain" method="post" onsubmit="return fnCheck();">
<table style="FONT-SIZE: 10pt">
	<tr>
		<td colspan="2">
			<blockquote>
			Thank you for taking the first step in sharing the experience with a friend.<br>
			We sincerely value and appreciate your willingness to invite a colleague.
			<br><br>
			When you take the time and initiative to refer a colleague, we recognize<br>the importance of ensuring that your referral is handled in a timely,<br>
			professional and respectful fashion.
			<br><br>
			<b>I am pleased to nominate the following candidate:</b><br><br>
			<%=star%>Indicated required field
			</blockquote>
		</td>
	</tr>
	<tr>
		<td align="right">Email <%=star%></td>
		<td align="left"><input name="txtEmail" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">Phone <%=star%></td>
		<td align="left"><input name="txtPhone" maxlength="50"></td>
	</tr>
	<tr>
		<td align="right">First Name <%=star%></td>
		<td align="left"><input name="txtFName" maxlength="50" style="WIDTH: 244px;" size="31"></td>
	</tr>
	<tr>
		<td align="right">Last Name <%=star%></td>
		<td align="left"><input name="txtLName" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">Title</td>
		<td align="left"><input name="txtTitle" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">Company</td>
		<td align="left"><input name="txtCompany" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">Address</td>
		<td align="left"><input name="txtAddress" maxlength="255" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">City</td>
		<td align="left"><input name="txtCity" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">State</td>
		<td align="left"><input name="txtState" maxlength="50"></td>
	</tr>
	<tr>
		<td align="right">Postal / Zip</td>
		<td align="left"><input name="txtZip" maxlength="12"></td>
	</tr>
	<tr>
		<td align="right">Country</td>
		<td align="left"><input name="txtCountry" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">Web Site </td>
		<td align="left"><input name="txtWebSite" maxlength="50" style="WIDTH: 244px;"></td>
	</tr>
	<tr>
		<td align="right">Comments </td>
		<td><textarea id="txtComments" style="WIDTH: 342px; HEIGHT: 104px" name="txtComments" rows="4"></textarea>
		</td>
	</tr>
	<tr>
		<td align="middle">
			<input type="submit" name="btnSubmit" value="Send">
		</td>
	</tr>
</table>
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->