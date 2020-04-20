<!--#include file="../includes/aspheader.asp"-->
<%
Dim strError
If Request.Form("btnLogin") = "Login" Then
	Dim rs, oDBConn, strSQL
	Set rs = Server.CreateObject ("ADODB.Recordset")
	Set oDBConn = Server.CreateObject("ADODB.Connection")
	oDBConn.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & server.MapPath("../summit.mdb") 
	oDBConn.Open

	strSQL = "SELECT * FROM Settings WHERE adminlogin = '" & Request.Form("Username") & "' AND " &_
		" adminpassword = '" & Request.Form("Password") & "'"
	rs.Open strSQL, oDBConn, 3, 1
	If Not rs.EOF Then
		Session("admin") = "yes"
		Response.Redirect("default.asp")
	Else
		strError = "Invalid Username Or Password"
	End If
	rs.Close
	Set oDBConn = Nothing
	Set rs = Nothing
End If
%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>

<form name="frmMain" method="POST">
<table width="100%" height="100%">
<tr>
	<td align=center >
	<table cellpadding="0" border="0" style="BORDER-RIGHT:#b5c7de 1px solid; BORDER-TOP:#b5c7de 1px solid; FONT-SIZE:0.8em; BORDER-LEFT:#b5c7de 1px solid; BORDER-BOTTOM:#b5c7de 1px solid; FONT-FAMILY:Verdana; BACKGROUND-COLOR:#eff3fb">
		<tr>
			<td align="center" colspan="2" style="FONT-WEIGHT:bold;FONT-SIZE:0.9em;COLOR:white;BACKGROUND-COLOR:#507cd1">
				Administrator Login
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2" style="FONT-WEIGHT:bold;FONT-SIZE:0.9em;COLOR:red;">
				<%=strError%>
			</td>
		</tr>
		
		<tr>
			<td align="right" style="FONT-SIZE:0.8em">
				<label for="Username">Username:</label>
			</td>
			<td>
				<input name="Username" type="text" id="Username" style="font-size:0.8em;" value="<%=Request.Form("Username")%>" /><span id="ChangePassword1_CurrentPasswordRequired" title="Username is required." style="VISIBILITY:hidden;COLOR:red">*</span>
			</td>
		</tr>
		<tr>
			<td align="right" style="FONT-SIZE:0.8em">
				<label for="Password">Password:</label>
			</td>
			<td>
				<input name="Password" type="password" id="Password" style="font-size:0.8em;" /><span id="ChangePassword1_CurrentPasswordRequired" title="Password is required." style="VISIBILITY:hidden;COLOR:red">*</span>
			</td>
		</tr>
		<tr>
			<td align="center" colspan="2">
				<input type="submit" name="btnLogin" value="Login" id="btnLogin" />
			</td>
		</tr>
	</table>
	</td>
</tr>
</table>
</form>

</BODY>
</HTML>
