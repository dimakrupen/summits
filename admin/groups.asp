<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="../header.css" type="text/css" rel="stylesheet">
</head>
<body vlink="blue">
<!--#include file="header.asp"-->
<img src="../images/cap_admin_managegroups.gif"><hr>
<p align="right"><a href="groupedit.asp">Add New Group</a></p>
<%
strSQL = "SELECT classcode FROM class ORDER BY classcode"
%><!--#include file="../includes/rsopen.asp"--><%
If Not rs.EOF Then
	%><blockquote><table style="FONT-SIZE: 10pt" cellspacing="5" cellpadding="5"><tr>&nbsp;<th></th><th>Group Name</th></tr><%
End If
Do While Not rs.EOF
	%>
		<tr>
			<td><a href="groupedit.asp?group=<%=rs("Classcode")%>">edit</a></td>
			<td><%=rs("Classcode")%></td>
			<td><a href="groupedit.asp?mode=del&amp;group=<%=rs("Classcode")%>">delete</a></td>
		</tr>
	<%
	rs.MoveNext
Loop
rs.Close
%></table></blockquote>
</body>
</html>
<!--#include file="../includes/DBClose.asp"-->