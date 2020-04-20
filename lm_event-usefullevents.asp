<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
Dim strEventHeader, strEventTypeId, intEventTypeId
strEventTypeId = Request.QueryString("id")
intEventTypeId = CInt(strEventTypeId)
strSelectedMenu = "Useful Events"

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
	document.frmMain.action = "lm_eventadd-usefullevents.asp";
	document.frmMain.submit();
}

function fnDelete(id)
{
	if (!confirm("Are you sure you want to delete this record?")) return;
	document.frmMain.eventid.value = id;
	document.frmMain.mode.value = "delete";
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
<img src="images/cap_usefulevents.gif">&nbsp;<input type="button" name="btnSubmit1" value="Add" onclick="fnAdd();" class="tblBase">
<font style="font-size: 10pt"><input type="checkbox" class="i_wo_border" name="cbxShowOld" onclick="document.frmMain.submit();" <%If Request.Form("cbxShowOld") <> "" Then Response.Write("CHECKED") End If%>>Also display past/expired events</font><br>
    <small><i>Key upcoming professional events (for convenience, not related to your membership).</i></small><br />
<br>
<%
strSQL = "SELECT events.eventid, events.description, events.location, events.date, events.time, events.classonly, events.userid, events.url, " &_
	"userdata.first+' '+userdata.last AS postedby, events.attachment, events.DaysLength, events.Organizer " &_
	"FROM events INNER JOIN userdata ON events.userid=userdata.userid " &_
	"WHERE events.eventtypeid = 10 " 
If Request.Form("cbxShowOld") = "" Then strSQL = strSQL & " AND (date >= Now()-1 OR showexpired = TRUE)"
strSQL = strSQL & "ORDER BY events.date DESC, events.time" 
%><!--#include file="includes/rsopen.asp"--><%
Dim lngEventId, strEnrolledList, bIsEnrolled
bIsEnrolled = False
If Not rs.EOF Then
	%>
	<table width="100%" style="font-size: 10pt">
		<tr>
			<th>Event Descriptions<br></th>
			<th>Date</th>
			<th>Posted by</th>
		</tr>
	<%
	Do While Not rs.EOF
		lngEventId = rs("eventid")
		'strEnrolledList = getEnrollers(lngEventId)
		bIsEnrolled = InStr(strEnrolledList, sesFirst & " " & sesLast) <> 0
	%>
		<tr style="color: black">
			<td>
				<%If Not IsNull(rs("url")) Then
					%><a target="_blank" href="<%=rs("url")%>"><b><%=rs("description")%></a></b><%
				Else
					%><%=rs("description")%><%
				End If%>
			
				<%If rs("userid") = sesUserId Or sesClass2 = "Admin" Then%>
				<a href="javascript:document.frmMain.action='lm_eventedit-usefullevents.asp?id=<%=lngEventId%>';document.frmMain.submit();">Edit</a>
				<%End If%>
				<%If sesClass2 = "Admin" Then%>
				<a href="javascript:fnDelete(<%=rs("eventid")%>);">Delete</a>
				<%End If%>
				<%
				If Not IsNull(rs("attachment")) Then
					If rs("attachment") <> "" Then Response.Write("<br><a href='files/" & rs("attachment") & "'>Attached document</a>")
				End If
				%>
			</td>
			<td><%=formatDate(rs("date"), null, null)%>
                <%If Not IsNull(rs("DaysLength")) Then %>
                (<%=rs("DaysLength") %> <%If rs("DaysLength") = "1" Then Response.write("&nbsp;day") Else Response.write("&nbsp;days") End If  %>)
                <%End If %>
			</td>
			<td nowrap><a href="javascript:document.frmMain.action='userinfo.asp?userid=<%=rs("userid")%>';document.frmMain.submit();"><%=rs("postedby")%></a></td>
			<!--<td><%=strEnrolledList%></td>-->
		</tr>
	<%
        If Not IsNull(rs("Location")) Or Not IsNull(rs("Organizer")) Then
        %>
        <tr>
            <td>
                <%If Not IsNull(rs("Organizer")) Then %>
                by <%=rs("Organizer") %>
                <%End If %>
                <%If Not IsNull(rs("Location")) Then %>
                in <%=rs("Location") %>
                <%End If %>
            </td>
        </tr>
        <%
        End If
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