<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
Function RemoveHTML( strText )
	Dim RegEx

	Set RegEx = New RegExp

	RegEx.Pattern = "<[^>]*>"
	RegEx.Global = True

	RemoveHTML = RegEx.Replace(strText, "")
End Function

Dim strEventHeader, strEventTypeId, intEventTypeId
strEventTypeId = Request.QueryString("id")
intEventTypeId = CInt(strEventTypeId)
strSelectedMenu = "Past Meeting Library"

%>
<script LANGUAGE="javascript">
<!--
 

function hideToggle(elem) {
    if (document.getElementById(elem).style.display != "block")
        document.getElementById(elem).style.display = "block";
    else
        document.getElementById(elem).style.display = "none";
}
function hideToggle2(elem) {
    if (document.getElementById(elem).style.display != "table-row")
        document.getElementById(elem).style.display = "table-row";
    else
        document.getElementById(elem).style.display = "none";
} 
 
//-->
</script> 
</head>	
<body vlink="blue">
<form name="frmMain" method="POST">
<!--#include file="includes/formvars.asp"-->
<input type="hidden" name="mode">
<input type="hidden" name="id">
<img src="images/cap_PastMeetingNotesMY.gif">
<table width="100%" style="FONT-SIZE: 10pt;border-spacing: 10px;">
<%
strSQL = "SELECT photos.dateadded, photos.filename, photos.description, photos.description2, photos.photoid, photos.userid,  " &_
	"photos.filename2, photos.descriptions2, photos.filename3, photos.descriptions3, photos.filename4, photos.descriptions4, photos.Vimeo, photos.PDF, " &_
	"userdata.first, userdata.last FROM photos INNER JOIN userdata ON photos.userid = userdata.userid " &_
	"WHERE type = 1 AND (classonly = false OR photos.UserId = " & sesUserId & ") ORDER BY dateadded DESC, description"
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	Do While Not rs.EOF
		%>
		<tr>
			<td colspan="4">
                <%=rs("description2")%>
                (posted by <%=rs("first")%>&nbsp;<%=rs("last")%> on <%=formatDate(rs("dateadded"), Null, Null)%>)
                <br />
                <%If rs("Vimeo") <> "" Then %>
                    <img src='images/blue-arrow.gif' border='0'> <a id="a1" href="javascript:hideToggle('ifVimeo<%=rs("photoid")%>');">Watch presentation</a>&nbsp;&nbsp;
                <%ElseIf rs("description") <> "" Then %>
                    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="get2.asp?id=<%=rs("photoid")%>&i=<%=sesUserId %>"><%=rs("description")%></a>&nbsp;&nbsp;
                <%End If %>
                <%If rs("PDF") <> "" Then %>
                    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="photos/<%=rs("PDF") %>">View Summary</a>&nbsp;&nbsp;
                <%End If %>
                <%If rs("Vimeo") <> "" Then %>
                    <iframe id="ifVimeo<%=rs("photoid")%>" src="http://player.vimeo.com/video/<%=rs("Vimeo") %>" width="580" height="450" frameborder="0" style="display:none;"></iframe>
                <%End If %>
			    <%If rs("filename2") <> "" Then%>
			    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="get3.asp?id=<%=rs("photoid")%>&i=<%=sesUserId %>"><%=rs("descriptions2")%></a>&nbsp;&nbsp;
			    <%End If%>
			    <%If rs("filename3") <> "" Then%>
			    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="photos/<%=rs("filename3")%>"><%=rs("descriptions3")%></a>&nbsp;&nbsp;
			    <%End If%>
			    <%If rs("filename4") <> "" Then%>
			    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="photos/<%=rs("filename4")%>"><%=rs("descriptions4")%></a>
			    <%End If%>
			</td>
		</tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
		<%
		rs.MoveNext
	Loop
	%>
	<%
End If
rs.Close
%>
</table><br>
 
</form>

<!--#include file="includes/footer.asp"-->

</body>
</html>
<!--#include file="includes/DBClose.asp"-->