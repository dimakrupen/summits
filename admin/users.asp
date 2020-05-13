<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="header.css" type="text/css" rel="stylesheet">
</head>
<body vlink="blue">
<!--#include file="header.asp"-->
<img src="../images/cap_admin_manageusers.gif"><hr>
<p align="right"><a href="useredit.asp">Add New User</a></p>
<%
strSQL = "SELECT * FROM userdata ORDER BY first, last"
%><!--#include file="../includes/rsopen.asp"--><%
If Not rs.EOF Then
	%><blockquote>
		<table style="FONT-SIZE: 10pt" cellspacing="5" cellpadding="5">
			<tr>
				<th></th>
				<th>User Name</th>
				<th>Email</th>
				<th>Group</th>
				<th>Phone</th>
				<th>Company</th>
				<th>Title</th>
				<th>InActive</th>
				<th></th>
			</tr>
	<%
End If
Do While Not rs.EOF
	%>
		<tr>
			<td><a href="useredit.asp?id=<%=rs("userid")%>">edit</a></td>
			<td><%=rs("first")%>&nbsp;<%=rs("last")%></td>
			<td><%=rs("email")%></td>
			<td><%=rs("class")%></td>
			<td><%=rs("cellphone")%></td>
			<td><%=rs("company")%></td>
			<td><%=rs("title")%></td>
			<td><%=rs("deleted")%></td>
			<td><a href="useredit.asp?mode=del&amp;id=<%=rs("userid")%>">delete</a></td>
		</tr>
	<%
	rs.MoveNext
Loop
rs.Close
%></table></blockquote>
</body>
</html>
<!--#include file="../includes/DBClose.asp"-->