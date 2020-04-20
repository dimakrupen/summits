<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
Dim strEventHeader, strEventTypeId, intEventTypeId
strEventTypeId = Request.QueryString("id")
intEventTypeId = CInt(strEventTypeId)
strSelectedMenu = "Upcoming Meetings"

Select Case Request.Form("mode")
	Case "-1" 'remove
		strSQL = "DELETE FROM UserEvents WHERE EventId = " & Request.Form("eventid") & _
			"AND UserId = " & sesUserId
		%><!--#include file="includes/rsadd.asp"--><%
	Case "0" 'add
		strSQL = "INSERT INTO UserEvents (EventId, UserId) " & _
			"VALUES (" & Request.Form("eventid") & ", " & sesUserId & ")"
		%><!--#include file="includes/rsadd.asp"--><%
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
	document.frmMain.action = "lm_eventadd-invitation.asp";
	document.frmMain.submit();
}

function fnEdit(id)
{
	document.frmMain.mode.value = "editevent";
	document.frmMain.eventid.value = id;
	document.frmMain.submit();
}

//-->
</script>
	
</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<input type="hidden" name="mode">
<input type="hidden" name="eventid">
<img src="images/cap_meetings.gif">
&nbsp;<input type="button" name="btnSubmit1" value="Add Meeting" onclick="fnAdd();" class="tblBase">
<font style="font-size: 10pt"><input type="checkbox" name="cbxShowOld" class="i_wo_border" onclick="document.frmMain.submit();" <%If Request.Form("cbxShowOld") <> "" Then Response.Write("CHECKED") End If%>>Also display past/expired events</font><br><br>
    <%strSQL = "SELECT DialIn FROM Settings" %>
    <!--#include file="includes/rsopen.asp"-->
<p style="font-size:10pt;">
    To join a live event, at the scheduled time:<br>
&bull; Dial <%=rs("DialIn") %> (unless other in mtg email).<br>
&bull; View slides at <a href="http://secure-gopresent.com/ShowRoom/View.htm?id=743" target="_New">HERE</a>
    </p><br />
    <%rs.Close%>
<%
strSQL = "SELECT events.eventid, events.description, events.location, events.date, events.time, events.classonly, " & _
	"events.userid, userdata.first+' '+userdata.last AS postedby, events.hidden, userdata.class, events.attachment, events.adescription, " & _
	"events.filename2, events.descriptions2, events.filename3, events.descriptions3, events.filename4, events.descriptions4 " &_
	"FROM events INNER JOIN userdata ON events.userid = userdata.userid " & _
	"WHERE events.eventtypeid = 2 AND (userdata.class = '" & sesClass & "' OR classonly = false) "
 
If Request.Form("cbxShowOld") = "" Then strSQL = strSQL & " AND events.date >= Now()-1 "
strSQL = strSQL & " AND (events.hidden = False OR events.Userid = " & sesUserId & ") "
If Request.Form("cbxShowOld") = "" Then 
	strSQL = strSQL & "ORDER BY events.date, events.time" 
Else
	strSQL = strSQL & "ORDER BY events.date DESC, events.time DESC" 
End If
	%><!--#include file="includes/rsopen.asp"--><%
	Dim lngEventId, strEnrolledList, bIsEnrolled
	bIsEnrolled = False
	If Not rs.EOF Then
	%>
	<table width="100%" style="font-size: 10pt; border-spacing: 10px;">
		<tr>
			<!--<th colspan="2">Check Box to Enroll Meeting</th>-->
			<th>Description</th>
			<th>Date</th>
			<th>Posted by</th>
			<!--<th>Enrolled</th>-->
		</tr>
	<%
	Do While Not rs.EOF
		lngEventId = rs("eventid")
		'strEnrolledList = getEnrollers(lngEventId)
		'bIsEnrolled = InStr(strEnrolledList, sesFirst & " " & sesLast) <> 0
		%>
		<tr style="color: black">
			<!--<td>
			<input type="checkbox" class="i_wo_border" name="cbxEnr<%=lngEventId%>" <%If bIsEnrolled Then Response.Write("CHECKED") End If%> onclick="fnEnroll(<%=CInt(bIsEnrolled)%>, <%=lngEventId%>)">
			</td>-->
			<td><%=rs("description")%>
			<%
			If Not IsNull(rs("attachment")) Then
				%>&nbsp;&nbsp;<i><a href="files/<%=rs("attachment")%>"><%=rs("adescription")%></a>&nbsp;&nbsp;</i>
				<%If rs("filename2") <> "" Then%>
				<i><a href="files/<%=rs("filename2")%>"><%=rs("descriptions2")%></a>&nbsp;&nbsp;</i>
				<%End If%>
				<%If rs("filename3") <> "" Then%>
				<i><a href="files/<%=rs("filename3")%>"><%=rs("descriptions3")%></a>&nbsp;&nbsp;</i>
				<%End If%>
				<%If rs("filename4") <> "" Then%>
				<i><a href="files/<%=rs("filename4")%>"><%=rs("descriptions4")%></a></i>
				<%End If
			End If
			%>
			<%If rs("userid") = sesUserId Or sesClass2 = "Admin" Then%>
			&nbsp;&nbsp;&nbsp;<a href="javascript:document.frmMain.action='lm_eventedit-invitations.asp?id=<%=lngEventId%>';document.frmMain.submit();">Edit</a>
			<%End If%>
			</td>
			<td><%=formatDate(rs("date"), null, null)%></td>
			<!--<td><a href="javascript:document.frmMain.action='userinfo.asp?userid=<%=rs("userid")%>';document.frmMain.submit();"><%=rs("postedby")%></a></td>-->
			<td nowrap><%=rs("postedby")%></td>
			<!--<td><%=strEnrolledList%></td>-->
		</tr>
        <tr>
            <td colspan="3">&nbsp;</td>
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