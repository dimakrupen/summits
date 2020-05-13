<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<%
Dim strErr
Select Case Request.Form("btnSubmit") 
	Case "Submit" 
		If Request.QueryString("id") <> "" Then
			strSQL = "SELECT * FROM userdata WHERE userid = " & Request.QueryString("id")
		Else
			strSQL = "SELECT * FROM userdata WHERE -1 = 0"
		End If
		%><!--#include file="../includes/rsadd.asp"--><%
		If Request.QueryString("id") = "" Then rs.AddNew
		rs("first") = Request.Form("txtFName")
		rs("password") = Request.Form("txtPassword")
		rs("last") = Request.Form("txtLName")
		rs("email") = Request.Form("txtEmail")
		rs("Cellphone") = Request.Form("txtPhone")
		rs("class") = Request.Form("selClass")
		rs("Company") = Request.Form("txtCompany")
		rs("Title") = Request.Form("txtTitle")
		rs("Address") = Request.Form("txtAddress")
		rs("City") = Request.Form("txtCity")
		rs("State") = Request.Form("txtState")
		rs("Zip") = Request.Form("txtZip")
		rs("Country") = Request.Form("txtCountry")
		rs("bio") = Request.Form("txtBio")
		rs("isAdmin") = Request.Form("cbxAdmin") <> ""
		rs("deleted") = Request.Form("cbxInactive") <> ""
		rs("ShowAudiobook") = Request.Form("cbxShowAudiobook") <> ""
		rs("ShowExecBooks") = Request.Form("cbxShowExecBooks") <> ""
		rs.Update
		rs.Close
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("users.asp")
	Case "Delete"
		strSQL = "UPDATE userdata SET Deleted = True " & _
			"WHERE userid = " & Request.QueryString("id")
		%><!--#include file="../includes/rsadd.asp"--><%
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("users.asp")
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
	<%If Request.QueryString("mode") <> "del" Then%>
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
	if(document.frmMain.selClass.value == "")
	{
		alert("Choose Group please");
		document.frmMain.selClass.focus();
		return false;
	}
	<%End If%>
	return true;
}
//-->
</script>

</head>
<body vlink="blue">
<!--#include file="header.asp"-->
<img src="../images/cap_admin_edituser.gif"><hr>
<p align="right"><a href="users.asp">Cancel</a></p>
<form name="frmMain" method="POST" onsubmit="return Validate();">
<blockquote>
<%
Dim sClass, first, last, email, password, Cellphone, Company, Title, Address, City, State, Zip, isAdmin, Country, bio, bInactive
Dim isShowAudiobook, isShowExecBooks
isAdmin = False
bInactive = False
isShowAudiobook = False
isShowExecBooks = False

If Request.QueryString("id") <> "" Then
	strSQL = "SELECT * FROM userdata WHERE userid = " & Request.QueryString("id")
	%><!--#include file="../includes/rsopen.asp"--><%
	If Not rs.EOF Then
		sClass = rs("class")
		first = rs("first")
		last = rs("last")
		email = rs("email")
		password = rs("password")
		Cellphone = rs("cellphone")
		Company = rs("Company")
		Title = rs("title")
		Address = rs("address")
		City = rs("city")
		State = rs("state")
		Zip = rs("zip")
		isAdmin = rs("isAdmin")
		Country = rs("Country")
		bio = rs("Bio")
		bInactive = rs("deleted")
		isShowAudiobook = rs("ShowAudiobook")
		isShowExecBooks = rs("ShowExecBooks")
	End If
	rs.Close
Else
	%><b>Add New User:</b><br><br><%
End If
If strErr <> "" Then%><font color="red"><%=strErr%></font><%End If
%>
<table style="FONT-SIZE: 10pt">
<%
If Request.QueryString("mode") = "del" Then
%>
	<tr>
		<td align="right">E-Mail: </td>
		<td align="left"><%=email%></td>
	</tr>
	<tr>
		<td align="right">Password: </td>
		<td align="left"><%=password%></td>
	</tr>
	<tr>
		<td align="right">First Name: </td>
		<td align="left"><%=first%></td>
	</tr>
	<tr>
		<td align="right">Last Name: </td>
		<td align="left"><%=last%></td>
	</tr>
	<tr>
		<td align="right">Phone: </td>
		<td align="left"><%=Cellphone%></td>
	</tr>
	<tr>
		<td align="right">Group: </td>
		<td align="left"><%=sClass%></td>
	</tr>
	<tr>
		<td align="right">Company: </td>
		<td align="left"><%=Company%></td>
	</tr>
	<tr>
		<td align="right">Title: </td>
		<td align="left"><%=Title%></td>
	</tr>
	<tr>
		<td align="right">Address: </td>
		<td align="left"><%=Address%></td>
	</tr>
	<tr>
		<td align="right">City: </td>
		<td align="left"><%=City%></td>
	</tr>
	<tr>
		<td align="right">State: </td>
		<td align="left"><%=State%> </td>
	</tr>
	<tr>
		<td align="right">Postal / Zip: </td>
		<td align="left"><%=Zip%></td>
	</tr>
	<tr>
		<td align="right">Country: </td>
		<td align="left"><%=Country%></td>
	</tr>
<%
Dim sbio
If Not IsNull(bio) Then sbio = Replace(bio, vbNewLine, "<br>")
%>
	<tr>
		<td align="right">Bio: </td>
		<td align="left"><%=sbio%></td>
	</tr>
	<tr>
		<td align="right">Is Admin: </td>
		<td align="left"><%=isAdmin%></td>
	</tr>
<%
	strSQL = "SELECT class FROM userdata " & _
		"WHERE class = '" & Request.QueryString("group") & "'"
	%><!--#include file="../includes/rsopen.asp"--><%
	If Not rs.EOF Then
		%>
		<tr>
			<td colspan="2" style="color:red">You can not delete this group, because it assigned to some users <br>
				<input type="button" name="btnCancel" value="Cancel" onclick="document.location.href='users.asp'">
			</td>
		</tr>
		<%
	Else
		%>
		<tr>
			<td colspan="2">
				<input type="submit" name="btnSubmit" value="Delete">
				<input type="button" name="btnCancel" value="Cancel" onclick="document.location.href='users.asp'">
			</td>
		</tr>
		<%	
	End If
	rs.Close
Else
%>
	<tr>
		<td align="right">E-Mail: </td>
		<td align="left"><input type="text" name="txtEmail" maxlength="70" value="<%=email%>"></td>
	</tr>
	<tr>
		<td align="right">Password: </td>
		<td align="left"><input type="text" name="txtPassword" maxlength="70" value="<%=password%>"></td>
	</tr>
	<tr>
		<td align="right">First Name: </td>
		<td align="left"><input type="text" name="txtFName" maxlength="50" value="<%=first%>"></td>
	</tr>
	<tr>
		<td align="right">Last Name: </td>
		<td align="left"><input type="text" name="txtLName" maxlength="50" value="<%=last%>"></td>
	</tr>
	<tr>
		<td align="right">Phone: </td>
		<td align="left"><input type="text" name="txtPhone" maxlength="50" value="<%=Cellphone%>"></td>
	</tr>
	<tr>
		<td align="right">Group: </td>
		<td align="left">
			<select name="selClass" class="tblBase">
<%
strSQL = "SELECT classcode FROM [class]"
%><!--#include file="../includes/rsopen2.asp"-->
<%
Do While Not rs2.EOF
	%><option <%=fnGetSelected(sClass = rs2("classcode"))%> value="<%=rs2("classcode")%>"><%=rs2("classcode")%></option><%
	rs2.MoveNext
Loop
rs2.Close
%>
			</select>
		</td>
	</tr>
	<tr>
		<td align="right">Company: </td>
		<td align="left"><input type="text" name="txtCompany" maxlength="50" value="<%=Company%>"></td>
	</tr>
	<tr>
		<td align="right">Title: </td>
		<td align="left"><input type="text" name="txtTitle" maxlength="50" value="<%=Title%>"></td>
	</tr>
	<tr>
		<td align="right">Address: </td>
		<td align="left"><input type="text" name="txtAddress" maxlength="255" value="<%=Address%>"></td>
	</tr>
	<tr>
		<td align="right">City: </td>
		<td align="left"><input type="text" name="txtCity" maxlength="50" value="<%=City%>"></td>
	</tr>
	<tr>
		<td align="right">State: </td>
		<td align="left"><input type="text" name="txtState" maxlength="50" value="<%=State%>"> (if US use initials like CA)</td>
	</tr>
	<tr>
		<td align="right">Postal / Zip: </td>
		<td align="left"><input type="text" name="txtZip" maxlength="12" value="<%=Zip%>"></td>
	</tr>
	<tr>
		<td align="right">Country: </td>
		<td align="left"><input type="text" name="txtCountry" maxlength="50" value="<%=Country%>"></td>
	</tr>
	<tr>
		<td align="right">Bio: </td>
		<td align="left"><TEXTAREA id=txtBio name=txtBio cols="40" rows="5"><%=bio%></TEXTAREA></td>
	</tr>
	<tr>
		<td align="left" colspan="2">
			<input type="checkbox" style="border: 0px;" name="cbxInactive" id="cbxInactive" <%If bInactive Then Response.Write("CHECKED") End If%>>
			<label for="cbxInactive" style="cursor: hand;">Make Inactive (disables login)</label>
		</td>
	</tr>
	<tr>
		<td align="left" colspan="2">
			<input type="checkbox" style="border: 0px;" name="cbxAdmin" id="cbxAdmin" <%If isAdmin Then Response.Write("CHECKED") End If%>>
			<label for="cbxAdmin" style="cursor: hand;">Make Administrator</label>
		</td>
	</tr>
	<tr>
		<td align="left" colspan="2">
			<input type="checkbox" style="border: 0px;" name="cbxShowAudiobook" id="cbxShowAudiobook" <%If isShowAudiobook Then Response.Write("CHECKED") End If%>>
			<label for="cbxShowAudiobook" style="cursor: hand;">DISABLED: Show Audiobook menu choice (normally off for new members)</label>
		</td>
	</tr>
	<tr>
		<td align="left" colspan="2">
			<input type="checkbox" style="border: 0px;" name="cbxShowExecBooks" id="cbxShowExecBooks" <%If isShowExecBooks Then Response.Write("CHECKED") End If%>>
			<label for="cbxShowExecBooks" style="cursor: hand;">DISABLED: Show ExecBooks menu choice (normally off for new members)</label>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="btnSubmit" value="Submit">
			<input type="button" name="btnCancel" value="Cancel" onclick="document.location.href='users.asp'">
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