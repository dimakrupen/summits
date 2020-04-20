<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "Refer a Presenter"
If Request.Form("btnSubmit") = "Send" Then
	Dim strBody
	strBody = "Referral of a New Presenter by " & sesFirst & " " & sesLast & " " & _
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
		"Business Phone: " & Request.Form("txtPhone") & vbCrLf
	If Request.Form("txtWebSite") <> "" Then strBody = strBody & "Web Site: " & Request.Form("txtWebSite") & vbCrLf
	If Request.Form("txtAreaofExpertise") <> "" Then strBody = strBody & "Area of Expertise: " & Request.Form("txtAreaofExpertise") & vbCrLf
	strBody = strBody & "Would you like this Speaker to present to your group? " & Request.Form("q1") & vbCrLf
	strBody = strBody & "Is the Speaker expecting to be contected? " & Request.Form("q2") & vbCrLf
	If Request.Form("txtExp") <> "" Then strBody = strBody & "previous experience with this Speaker: " & Request.Form("txtExp") & vbCrLf
	If Request.Form("txtComments") <> "" Then strBody = strBody & "Comments: " & Request.Form("txtComments") & vbCrLf

	strSQL = "SELECT referPresenterEmail FROM Settings"
	%><!--#include file="includes/rsopen.asp"--><%
	SendEmail rs("referPresenterEmail"), sesEmail, sesClass & " New Presenter Referral", strBody
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
		alert("Enter Business Phone please");
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
<img src="images/cap_referapresenter_sent.gif">
<%Else%>
<img src="images/cap_referapresenter.gif">
<%End If%>

<form name="frmMain" method="post" onsubmit="return fnCheck();">
<table style="FONT-SIZE: 10pt">
	<tr>
		<td colspan="2">
			<blockquote>
			<%=star%>Indicated required field
			</blockquote>
		</td>
	</tr>
	<tr>
		<td align="right">Email <%=star%></td>
		<td align="left"><input name="txtEmail" maxlength="50" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">Business Phone <%=star%></td>
		<td align="left"><input name="txtPhone" maxlength="50"></td>
	</tr>
	<tr>
		<td align="right">First Name <%=star%></td>
		<td align="left"><input name="txtFName" maxlength="50" style="WIDTH: 244px" size="31"></td>
	</tr>
	<tr>
		<td align="right">Last Name <%=star%></td>
		<td align="left"><input name="txtLName" maxlength="50" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">Title</td>
		<td align="left"><input name="txtTitle" maxlength="50" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">Company</td>
		<td align="left"><input name="txtCompany" maxlength="50" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">Address</td>
		<td align="left"><input name="txtAddress" maxlength="255" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">City</td>
		<td align="left"><input name="txtCity" maxlength="50" style="WIDTH: 244px"></td>
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
		<td align="left"><input name="txtCountry" maxlength="50" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">Web Site </td>
		<td align="left"><input name="txtWebSite" maxlength="50" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right">Area of Expertise </td>
		<td align="left"><input name="txtAreaofExpertise" maxlength="500" style="WIDTH: 244px"></td>
	</tr>
	<tr>
		<td align="right" colspan="2">Would you like this Speaker to present to your group?
			<input type="radio" class="i_wo_border" name="q1" value="Yes" CHECKED>Yes<input type="radio" class="i_wo_border" name="q1" value="No">No
		</td>
	</tr>
	<tr>
		<td align="right" colspan="2">Is the Speaker expecting to be contected?
			<input type="radio" name="q2" value="Yes" class="i_wo_border" CHECKED>Yes<input type="radio" name="q2" value="No" class="i_wo_border">No
		</td>
	</tr>
	<tr><td colspan="2" height="15"></td></tr>
	<tr>
		<td colspan="2">Please describe your previous experience with this Speaker</td>
	</tr>
	<tr>
		<td colspan="2"><textarea style="WIDTH: 342px; HEIGHT: 104px" name="txtExp" rows="4"></textarea>
		</td>
	</tr>
	<tr><td colspan="2" height="15"></td></tr>
	<tr>
		<td colspan="2">Additional Comments </td>
	</tr>
	<tr>
		<td colspan="2"><textarea id="txtComments" style="WIDTH: 342px; HEIGHT: 104px" name="txtComments" rows="4"></textarea>
		</td>
	</tr>
	<tr>
		<td align="middle">
			<input type="submit" name="btnSubmit" value="Send">
		</td>
	</tr>
</table><!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->