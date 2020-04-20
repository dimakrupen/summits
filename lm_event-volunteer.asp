<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
Dim strEventHeader, strEventTypeId, intEventTypeId
strEventTypeId = Request.QueryString("id")
intEventTypeId = CInt(strEventTypeId)
strSelectedMenu = "Member Visitations"

Select Case Request.Form("mode")
	Case "-1" 'remove
		strSQL = "DELETE FROM UserEvents WHERE EventId = " & Request.Form("eventid") & _
			"AND UserId = " & sesUserId
		%><!--#include file="includes/rsadd.asp"--><%
	Case "0" 'add
		strSQL = "INSERT INTO UserEvents (EventId, UserId) " & _
			"VALUES (" & Request.Form("eventid") & ", " & sesUserId & ")"
		%><!--#include file="includes/rsadd.asp"--><%
	Case "delete"
		strSQL = "DELETE * FROM EVENTS " & _
			" WHERE eventid = " & Request.Form("eventid")
		rs.Open strSQL, oDBConn, 3, 1
End Select
%>
<script LANGUAGE="javascript">
<!--

function fnEnroll(mode, eventid)
{
	document.frmMain.mode.value = mode;
	document.frmMain.eventid.value = eventid;
	document.frmMain.submit();
}

function fnAdd()
{
	document.frmMain.action = "lm_eventadd-volunteer.asp";
	document.frmMain.submit();
}

function fnDelete(id)
{
	if (!confirm("Are you sure you want to delete this record?")) return;
	document.frmMain.eventid.value = id;
	document.frmMain.mode.value = "delete";
	document.frmMain.submit();
}

function fnSort(sort)
{
	if (document.getElementById("sort").value == sort)
		document.getElementById("sort").value = sort + " DESC";
	else
		document.getElementById("sort").value = sort;
	document.frmMain.submit();
}

//-->
</script>
	
</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<input type="hidden" name="mode" value="<%=Request.Form("mode")%>">
<input type="hidden" name="eventid">
<input type="hidden" name="sort" id="sort" value="<%=Request.Form("sort")%>"> 

<img src="images/cap_membervisitations.gif">
<input type="button" name="btnSubmit1" value="Add Visitation" onclick="fnAdd();" class="tblBase">
<font style="font-size: 10pt"><input type="checkbox" name="cbxShowOld" class="i_wo_border" onclick="document.frmMain.submit();" <%If Request.Form("cbxShowOld") <> "" Then Response.Write("CHECKED") End If%>>Also display past/expired events</font><br>
<small>We encourage you to visit other members to view their operations and share/exchange ideas and best practices. Please record your visits here.</small><br><br>
<%If Request.Form("mode") = "show" Then%>
	<small><a href="javascript:document.frmMain.mode.value='';document.frmMain.submit();">Click here to HIDE members sorted by location</a><small>
	<br>
	<%
	strSQL = "SELECT * FROM userdata WHERE DELETED = false AND class = '" & sesClass & "'"
	If Request.Form("sort") <> "" Then 
		strSQL = strSQL & "ORDER BY " & Request.Form("sort")
	Else
		strSQL = strSQL & "ORDER BY state, city, company, first, last"
	End If
	
	'debug(strSQL)
	%><!--#include file="includes/rsopen.asp"--><%
	If Not rs.EOF Then
	%>
	<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<th>State<a href="javascript:fnSort('State');"><img src="images/ss_sort.gif" border="0"></a></th>
		<th>City<a href="javascript:fnSort('City');"><img src="images/ss_sort.gif" border="0"></a></th>
		<th>Company<a href="javascript:fnSort('company');"><img src="images/ss_sort.gif" border="0"></a></th>
		<th>First<a href="javascript:fnSort('first');"><img src="images/ss_sort.gif" border="0"></a></th>
		<th>Last<a href="javascript:fnSort('last');"><img src="images/ss_sort.gif" border="0"></a></th>
		<td></td>
		<%If CStr(rs("UserID")) = sesUserId Then%>
		<td></td>
		<%End If%>
	</tr>
	<%
	Do While Not rs.EOF
	%>
	<tr>
		<td><%=rs("state")%></td>
		<td><%=rs("city")%></td>
		<td><%=rs("company")%></td>
		<td><%=rs("first")%></td>
		<td><%=rs("last")%></td>
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
Else
	%><small><a href="javascript:document.frmMain.mode.value='show';document.frmMain.submit();">Click here to show members sorted by location</a><small><%
End If

strSQL = "SELECT * FROM VW_Volunteers WHERE class = '" & sesClass & "' "
If Request.Form("cbxShowOld") = "" Then strSQL = strSQL & " AND date >= Now()-1"

%><!--#include file="includes/rsopen.asp"--><%
Dim lngEventId, strEnrolledList, bIsEnrolled
bIsEnrolled = False
If Not rs.EOF Then
	%>
	<table width="100%" style="font-size: 10pt">
		<tr>
			<th colspan="2">Check Box to Enroll Visitation</th>
			<th>Location</th>
			<th>Date</th>
			<th>Posted by</th>
			<th>Enrolled</th>
		</tr>
	<%
	Do While Not rs.EOF
		lngEventId = rs("eventid")
		strEnrolledList = getEnrollers(lngEventId)
		bIsEnrolled = InStr(strEnrolledList, sesFirst & " " & sesLast) <> 0
	%>
		<tr style="color: black">
			<td>
			<input type="checkbox" class="i_wo_border" name="cbxEnr<%=lngEventId%>" <%If bIsEnrolled Then Response.Write("CHECKED") End If%> onclick="fnEnroll(<%=CInt(bIsEnrolled)%>, <%=lngEventId%>)">
			</td>
			<td wrap><%=rs("description")%>
			<%If rs("userid") = sesUserId Or sesClass2 = "Admin" Then%>
			<a href="javascript:document.frmMain.action='lm_eventedit-volunteer.asp?id=<%=lngEventId%>';document.frmMain.submit();">Edit</a>
			<%End If%>
			<%If sesClass2 = "Admin" Then%>
			<a href="javascript:fnDelete(<%=rs("eventid")%>);">Delete</a>
			<%End If%>
			</td>
			<td wrap><%=rs("location")%></td>
			<td wrap><%=formatDate(rs("date"), rs("time"), rs("etime"))%></td>
			<td><a href="javascript:document.frmMain.action='userinfo.asp?userid=<%=rs("userid")%>';document.frmMain.submit();"><%=rs("postedby")%></a></td>
			<td wrap><%=strEnrolledList%></td>
		</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table>
	<%
End If
%>
<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->