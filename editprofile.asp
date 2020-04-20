<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
strSelectedMenu = "Update My Info"

If Request.Form("btnSubmit") = "Submit" Then
	strSQL = "SELECT * FROM userdata WHERE userid = " & sesUserId
    If RS.State = 1 Then
        RS.Close
    End If
	rs.Open strSQL, oDBConn, 1, 3
	rs("first") = Request.Form("txtFName")
	rs("last") = Request.Form("txtLName")
	rs("email") = Request.Form("txtEmail")
	rs("Cellphone") = Request.Form("txtPhone")
	rs("Company") = Request.Form("txtCompany")
	rs("Title") = Request.Form("txtTitle")
	rs("Address") = Request.Form("txtAddress")
	rs("City") = Request.Form("txtCity")
	rs("State") = Request.Form("txtState")
	rs("Zip") = Request.Form("txtZip")
	rs("Country") = Request.Form("txtCountry")
	rs("Bio") = Request.Form("txtBio")
	rs("JobProfile") = Request.Form("txtJobProfile")
	rs("Interests") = Request.Form("txtInterests")
	rs("password") = Request.Form("txtPassword")
	rs.Update
	rs.Close
	strError = "SAVED"
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
	return true;
}

//-->
</script>

</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<%If strError = "" Then%>
<img src="images/cap_updatemyinfo.gif">
<%Else%>
<img src="images/cap_updatemyinfo_done.gif">
<%End If%>
<form name="frmMain" method="post" onsubmit="return fnCheck();">
<input type="hidden" name="mode">
<%
strSQL = "SELECT * FROM userdata WHERE userid = " & sesUserId
%><!--#include file="includes/rsopen.asp"--><%

%>
<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="right">E-Mail: </td>
		<td align="left"><input type="text" name="txtEmail" maxlength="70" value="<%=rs("email")%>"></td>
	</tr>
	<tr>
		<td align="right">Password: </td>
		<td align="left"><input type="text" name="txtPassword" maxlength="70" value="<%=rs("Password")%>"></td>
	</tr>
	<tr>
		<td align="right">First Name: </td>
		<td align="left"><input type="text" name="txtFName" maxlength="50" value="<%=rs("first")%>"></td>
	</tr>
	<tr>
		<td align="right">Last Name: </td>
		<td align="left"><input type="text" name="txtLName" maxlength="50" value="<%=rs("last")%>"></td>
	</tr>
	<tr>
		<td align="right">Phone: </td>
		<td align="left"><input type="text" name="txtPhone" maxlength="50" value="<%=rs("Cellphone")%>"></td>
	</tr>
	<tr>
		<td align="right">Company: </td>
		<td align="left"><input type="text" name="txtCompany" maxlength="50" value="<%=rs("Company")%>"></td>
	</tr>
	<tr>
		<td align="right">Title: </td>
		<td align="left"><input type="text" name="txtTitle" maxlength="50" value="<%=rs("Title")%>"></td>
	</tr>
	<tr>
		<td align="right">Address: </td>
		<td align="left"><input type="text" name="txtAddress" maxlength="255" value="<%=rs("Address")%>"></td>
	</tr>
	<tr>
		<td align="right">City: </td>
		<td align="left"><input type="text" name="txtCity" maxlength="50" value="<%=rs("City")%>"></td>
	</tr>
	<tr>
		<td align="right">State: </td>
		<td align="left"><input type="text" name="txtState" maxlength="50" value="<%=rs("State")%>"></td>
	</tr>
	<tr>
		<td align="right">Postal / Zip: </td>
		<td align="left"><input type="text" name="txtZip" maxlength="12" value="<%=rs("Zip")%>"></td>
	</tr>
	<tr>
		<td align="right">Country: </td>
		<td align="left"><input type="text" name="txtCountry" maxlength="50" value="<%=rs("Country")%>"></td>
	</tr>
	<tr>
		<td align="right">Bio: </td>
		<td align="left"><TEXTAREA id=txtBio name=txtBio cols="40" rows="5"><%=rs("Bio")%></TEXTAREA></td>
	</tr>
	<tr>
		<td align="right">Job Profile/Background: </td>
		<td align="left"><TEXTAREA id=txtBio name=txtJobProfile cols="40" rows="5"><%=rs("JobProfile")%></TEXTAREA></td>
	</tr>
	<tr>
		<td align="right">Areas of Interest and Expertise: </td>
		<td align="left"><TEXTAREA id=txtBio name=txtInterests cols="40" rows="5"><%=rs("Interests")%></TEXTAREA></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" name="btnSubmit" value="Submit" class="tblBase"></td>
	</tr>
</table>


<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->