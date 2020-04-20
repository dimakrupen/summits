<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
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
    //-->
    </script>

</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<img src="images/cap_upcomingeventsummary.gif"><br>
    <%strSQL = "SELECT DialIn, SiteAddress FROM Settings" %>
    <!--#include file="includes/rsopen.asp"-->
<p style="font-size:10pt;">
    To join a live event, at the scheduled time:<br>
&bull; Dial <%=rs("DialIn") %> (unless other in mtg email).<br>
&bull; View slides at <a href="http://secure-gopresent.com/ShowRoom/View.htm?id=743" target="_New">HERE</a>
    </p><br />
    <%rs.Close%>
<form name="frmMain" method="POST">
<input type="hidden" name="mode">
<input type="hidden" name="eventid">
<%
strSQL = "SELECT TOP 3 events.eventid, events.description, events.location, events.date, events.time, events.classonly, " & _
	"events.userid, userdata.first+' '+userdata.last AS postedby, events.hidden, userdata.class, events.attachment, events.adescription, " & _
	"events.filename2, events.descriptions2, events.filename3, events.descriptions3, events.filename4, events.descriptions4 " &_
	"FROM events INNER JOIN userdata ON events.userid = userdata.userid " & _
	"WHERE events.eventtypeid = 2 AND (userdata.class = '" & sesClass & "' OR classonly = false) AND events.date >= Now()-1  AND events.hidden = False ORDER BY events.date, events.time"
'debug(strSQL)
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<img src="images/cap_meetings.gif"><br>
	<table width="100%" style="font-size: 10pt;border-spacing: 10px;">
		<tr>
			<td colspan="2"><i>Check Box to Enroll Activity</td>
			<td><i>Date</td>
			<td><i>Posted by</td>
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
			<%
			If Not IsNull(rs("attachment")) Then
				%>&nbsp;&nbsp;<i><a href="files/<%=rs("attachment")%>"><%=rs("adescription")%></a>&nbsp;&nbsp;</i><%
				If rs("filename2") <> "" Then%>
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
			</td>
			<td wrap><%=formatDate(rs("date"), null, null)%></td>
			<td nowrap><%=rs("postedby")%></td>
		</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table><a href="javascript:document.frmMenu.action='lm_event-invitations.asp';document.frmMenu.submit();" style="font-size: 10pt">More...</a><br><br>
	<%
End If
rs.CLose


strSQL = "SELECT TOP 3 * FROM VW_Volunteers WHERE date >= Now()"
%><!--#include file="includes/rsopen.asp"--><%
Dim lngEventId, strEnrolledList, bIsEnrolled
bIsEnrolled = False
If Not rs.EOF Then
	%>
	<img src="images/cap_membervisitations.gif"><br>
	<table width="100%" style="font-size: 10pt">
		<tr>
			<td colspan="2"><i>Check Box to Enroll Visitation</td>
			<td><i>Location</td>
			<td><i>Date</td>
			<td><i>Posted by</td>
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
			<td wrap><%=rs("description")%></td>
			<td wrap><%=rs("location")%></td>
			<td wrap><%=formatDate(rs("date"), rs("time"), rs("etime"))%></td>
			<td><%=rs("postedby")%></td>
		</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table><a href="javascript:document.frmMenu.action='lm_event-volunteer.asp';document.frmMenu.submit();" style="font-size: 10pt">More...</a><br><br>
	<%
End If
rs.CLose
%>
<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->