<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
	<SCRIPT LANGUAGE=javascript>
<!--
function fnSort(sort)
{
	if (document.getElementById("sort").value == sort)
		document.getElementById("sort").value = sort + " DESC";
	else
		document.getElementById("sort").value = sort;
	document.frmMain.action='lm_classmates.asp';
	document.frmMain.submit();
}
//-->
</SCRIPT>

</head>
<body vlink="blue">
<%strSelectedMenu = "View My Group"%>
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="post">
<b style="FONT-SIZE: 10pt">Search All Groups</b>
<table width="80%" style="FONT-SIZE: 10pt" class="tblBase">
	<tr>
		<td>Enter Last <b>or</b> First name:</td>
		<td><input type="text" name="txtSearch" maxlength="50" class="tblBase"></td>
		<td><input type="submit" name="sbtSubmit" value="Search" class="tblBase"></td>
	</tr>
</table>
<%If Request.Form("txtSearch") <> "" Then
	Dim strSearchCond
	strSearchCond = Replace(Request.Form("txtSearch"), "'", "")
	strSearchCond = Replace(Request.Form("txtSearch"), """", "")
strSQL = "SELECT * FROM userdata WHERE UserId <> " & sesUserId & " " & _
	"AND first LIKE ""%" & strSearchCond & "%"" OR last LIKE ""%" & strSearchCond & "%"" " & _
	" AND DELETED = false"
'debug(strSQL)
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<table width="40%" style="FONT-SIZE: 10pt">
	<%
	Do While Not rs.EOF
	%>
	<tr>
		<td><%=rs("first")%>&nbsp;<%=rs("last")%></td>
		<td><a href="javascript:document.frmMain.action='userinfo.asp?userid=<%=rs("userid")%>';document.frmMain.submit();">Details</a></td>
	</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table>
	<%
End If
rs.Close
%>
<%End If%>
<br>
<img src="images/cap_mygroup.gif">
<input type="hidden" name="sort" id="sort" value="<%=Request.Form("sort")%>"> 
<%
strSQL = "SELECT * FROM userdata WHERE class = '" & sesClass & "' AND DELETED = false "
If Request.Form("sort") <> "" Then 
	strSQL = strSQL & "ORDER BY " & Request.Form("sort")
Else
	strSQL = strSQL & "ORDER BY first, last, company"
End If

%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<th>First<a href="javascript:fnSort('first');"><img src="images/ss_sort.gif" border="0"></a></th>
		<th>Last<a href="javascript:fnSort('last');"><img src="images/ss_sort.gif" border="0"></a></th>
		<th>Company<a href="javascript:fnSort('company');"><img src="images/ss_sort.gif" border="0"></a></th>
		<td></td>
		<%If CStr(rs("UserID")) = sesUserId Then%>
		<td></td>
		<%End If%>
	</tr>
	<%
	Do While Not rs.EOF
	%>
	<tr>
		<td><%=rs("first")%></td>
		<td><%=rs("last")%></td>
		<td><%=rs("company")%></td>
		<td><a href="javascript:document.frmMain.action='userinfo.asp?userid=<%=rs("userid")%>';document.frmMain.submit();">Details</a></td>
		<%If CStr(rs("UserID")) = sesUserId Then%>
		<td><a href="javascript:document.frmMenu.action='editprofile.asp';document.frmMenu.submit();">Edit</a></td>
		<%End If%>
	</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table>
	<%
End If
rs.Close
%>
<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->