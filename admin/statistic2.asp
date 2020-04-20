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
<img src="../images/cap_admin_statistic.gif"><hr>
<form method="post" id="frmMain" action="statistic2.asp">
<blockquote>
<%
Dim dtDateFrom
Dim dtDateTo
dtDateFrom = FormatDateTime(DateAdd("m", -1, Now()), 2)
dtDateTo = FormatDateTime(Now(), 2)
If Request.Form("txtDateFrom") <> "" Then
    dtDateFrom = Request.Form("txtDateFrom")
End If 
If Request.Form("txtDateTo") <> "" Then
    dtDateTo = Request.Form("txtDateTo")
End If 
%>
Date From: <input type="text" name="txtDateFrom" value="<%=dtDateFrom %>" style="width: 80px;" maxlength="10" />
Date To: <input type="text" name="txtDateTo" value="<%=dtDateTo %>" style="width: 80px;" maxlength="10"/>
<input type="submit" name="btnSubmit" value="Apply" />
<%
strSQL = "SELECT COUNT(Statistic2.DateClicked) as CNT, photos.filename, photos.description  " &_
    "FROM Statistic2 INNER JOIN photos ON Statistic2.SSID = photos.photoid " &_
    "WHERE Statistic2.DateClicked BETWEEN CDate('" & dtDateFrom & "') AND CDate('" & dtDateTo & "') " &_
    "GROUP BY photos.filename, photos.description " &_
    "ORDER BY COUNT(Statistic2.DateClicked) DESC, photos.filename, photos.description"
%><!--#include file="../includes/rsopen.asp"--><%
If Not rs.EOF Then
	%><table style="FONT-SIZE: 10pt" cellspacing="5" cellpadding="5"><tr><th>Count</th><th>Filename</th><th>Description</th></tr><%
End If
Do While Not rs.EOF
	%>
		<tr>
			<td><%=rs("CNT")%></td>
			<td><%=rs("filename")%></td>
			<td><%=rs("description")%></td>
		</tr>
	<%
	rs.MoveNext
Loop
rs.Close
%></table></blockquote>
</form>
</body>
</html>
<!--#include file="../includes/DBClose.asp"-->