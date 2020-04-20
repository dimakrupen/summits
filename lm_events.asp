<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
If Request.Form("mode") = "delete" Then
	strSQL = "DELETE * FROM EVENTS " & _
		" WHERE eventid = " & Request.Form("eventid")
	rs.Open strSQL, oDBConn, 3, 1
End If
%> 
<SCRIPT LANGUAGE=javascript>
<!--

function fnAdd()
{
	document.frmMain.action = "lm_eventadd.asp?id=<%=strEventTypeId%>";
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
</SCRIPT>
	
</HEAD>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<FORM name="frmMain" method="POST">
<input type="hidden" name="mode">
<input type="hidden" name="eventid">

<b><%=strEventHeader%></b>&nbsp;<input type="button" name="btnSubmit1" value="Add" onclick="fnAdd();" class="tblBase">
<%If strEventTypeId = "6" Then %>
<br><small>You may ask questions which will be automatically sent to the entire group for response.</small><br><br>
<%
End If
If strEventTypeId = "3" Then %>
<br><small>You may add ideas/strategies/procedures that worked well and they will be automatically sent to the entire group.</small><br><br>
<%
End If
strSQL = "SELECT * FROM " & strView & " AND events.date > DateAdd('m', -6, Now()) "
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<TABLE width="100%" style="font-size: 10pt">
		<TR>
			<TD><i>Idea</TD>
			<TD><i>Date</TD>
		</TR>
	<%
	Do While Not rs.EOF
	%>
		<TR style="color: black">
			<TD wrap><%=rs("description")%>
			<%If rs("userid") = sesUserId Or sesClass2 = "Admin" Then%>
			<a href="javascript:document.frmMain.action='lm_eventedit.asp?id=<%=rs("eventid")%>';document.frmMain.submit();">Edit</a>
			<%End If%>
			<%If sesClass2 = "Admin" Then%>
			<a href="javascript:fnDelete(<%=rs("eventid")%>);">Delete</a>
			<%End If%>
			</TD>
			<TD wrap><%=formatDate(rs("date"), null, null)%></TD>
		</TR>
	<%
		rs.MoveNext
	Loop
	%>
	</TABLE>
	<%
End If
rs.Close


strSQL = "SELECT * FROM " & strViewC & " AND events.date > DateAdd('m', -6, Now()) "

%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%><br>
	<%=Replace(strEventHeader, "My", "Group")%>
	<TABLE width="100%" style="font-size: 10pt">
		<TR>
			<TD><i>Idea</TD>
			<TD><i>Date</TD>
			<TD><i>By</TD>
		</TR>
	<%
	Do While Not rs.EOF
	%>
		<TR style="color: black">
			<TD wrap><%=rs("description")%></TD>
			<TD wrap><%=formatDate(rs("date"), null, null)%></TD>
			<TD><a href="javascript:document.frmMain.action='userinfo.asp?userid=<%=rs("userid")%>';document.frmMain.submit();"><%=rs("postedby")%></a>
			<%If sesClass2 = "Admin" Then%>
			<a href="javascript:fnDelete(<%=rs("eventid")%>);">Delete</a>
			<%End If%>
			</TD>
		</TR>
	<%
		rs.MoveNext
	Loop
	%>
	</TABLE>
	<%
End If
rs.Close
%>
<!--#include file="includes/formvars.asp"--></FORM>
<!--#include file="includes/footer.asp"-->
</BODY>
</HTML>
<!--#include file="includes/DBClose.asp"-->