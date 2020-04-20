<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
Function RemoveHTML( strText )
	Dim RegEx

	Set RegEx = New RegExp

	RegEx.Pattern = "<[^>]*>"
	RegEx.Global = True

	RemoveHTML = RegEx.Replace(strText, "")
End Function

Select Case Request.Form("mode")
	Case "delete"
		strSQL = "DELETE FROM Photos WHERE PhotoId = " & Request.Form("id") 
		%><!--#include file="includes/rsadd.asp"--><%
	Case "edit"
		strSQL = "SELECT * FROM Photos WHERE PhotoID = " & Request.Form("id")
		%><!--#include file="includes/rsadd.asp"--><%
		rs("filename") = Request.Form("FileName")
		rs("description") = Request.Form("txtDesc")
		rs("description2") = Request.Form("txtDesc2")
		rs("classonly") = Request.Form("cbxClassOnly") <> ""
		rs("filename2") = Request.Form("FileName2")
		rs("descriptions2") = Request.Form("txtDescs2")
		rs("filename3") = Request.Form("FileName3")
		rs("descriptions3") = Request.Form("txtDescs3")
		rs("filename4") = Request.Form("FileName4")
		rs("descriptions4") = Request.Form("txtDescs4")
        rs("Vimeo") = Request.Form("txtVimeo")
        rs("PDF") = Request.Form("FileNamePDF")
		If Request.Form("txtDate") <> "" Then
			rs("dateadded") = CDate(Request.Form("txtDate"))
		Else
			rs("dateadded") = Null
		End If
        
		rs.Update
		rs.Close
	Case "add"
		strSQL = "Photos"
		%><!--#include file="includes/rsadd.asp"--><%
		rs.AddNew
		rs("userid") = Replace(Trim(Request.Form("sesUserId")), "'", "''")
		rs("Type") = 1
		rs("filename") = Request.Form("FileName")
		rs("description") = Request.Form("txtDesc")
		rs("description2") = Request.Form("txtDesc2")
		rs("classonly") = Request.Form("cbxClassOnly") <> ""
		rs("filename2") = Request.Form("FileName2")
		rs("descriptions2") = Request.Form("txtDescs2")
		rs("filename3") = Request.Form("FileName3")
		rs("descriptions3") = Request.Form("txtDescs3")
		rs("filename4") = Request.Form("FileName4")
		rs("descriptions4") = Request.Form("txtDescs4")
        rs("Vimeo") = Request.Form("txtVimeo")
        rs("PDF") = Request.Form("FileNamePDF")
		If Request.Form("txtDate") <> "" Then
			rs("dateadded") = CDate(Request.Form("txtDate"))
		Else
			rs("dateadded") = Null
		End If
		rs.Update
		rs.Close
End Select


Dim strEventHeader, strEventTypeId, intEventTypeId
strEventTypeId = Request.QueryString("id")
intEventTypeId = CInt(strEventTypeId)
strSelectedMenu = "Past Meeting Library"

%>
<script LANGUAGE="javascript">
<!--
function fnDelete(id)
{
	if (!confirm("Are you sure you want to delete this record?")) return;
	document.frmMain.mode.value = "delete";
	document.frmMain.id.value = id;
	document.frmMain.submit();
}

function fnEdit(id)
{
	document.frmMain.action = "PastMeetingNotesEdit.asp";
	document.frmMain.id.value = id;
	document.frmMain.submit();
}

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

function fnIfChecked(elem, id, i, elemDate)
{
    if (!document.getElementById(elem).checked) {
        alert("You need to agree you certify under perjury that You have watched this entire presentation.");
    }
    else {
        window.open("get4.asp?id=" + id + "&i=" + i + "&date=" + document.getElementById(elemDate).value + "&f=<%=sesFirst%>&l=<%=sesLast%>&o=<%=Server.UrlEncode(organization)%>");
    }
}
//-->
</script>
</head>	
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<!--#include file="includes/formvars.asp"-->
<input type="hidden" name="mode">
<input type="hidden" name="id">
<img src="images/cap_PastMeetingNotesMY.gif">
<input type="button" name="btnSubmit1" value="Add new" onclick="fnEdit('');" class="tblBase">
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
        <!--<tr>
            <td colspan="4"><hr /></td>
        </tr>-->
		<tr>
			<td colspan="4">
                <%=rs("description2")%>
                (posted by <%=rs("first")%>&nbsp;<%=rs("last")%> on <%=formatDate(rs("dateadded"), Null, Null)%>)
                <%If sesClass2 = "Admin" Or Cstr(rs("userid")) = CStr(sesUserId) Then%>
			    <a href="javascript:fnEdit('<%=rs("photoid")%>');">Edit</a>
			    <a href="javascript:fnDelete('<%=rs("photoid")%>');">Delete</a>
			    <%End If%>
                <br />
                <%If rs("Vimeo") <> "" Then %>
                    <img src='images/blue-arrow.gif' border='0'> <a id="a1" href="javascript:hideToggle('ifVimeo<%=rs("photoid")%>');">Watch presentation</a>&nbsp;
                <%ElseIf rs("description") <> "" Then %>
                    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="get2.asp?id=<%=rs("photoid")%>&i=<%=sesUserId %>"><%=rs("description")%></a>&nbsp;
                <%End If %>
                <%If rs("PDF") <> "" Then %>
                    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="photos/<%=rs("PDF") %>">View Summary</a>
                <%End If %>
                <%If rs("Vimeo") <> "" Then %>
                    <iframe id="ifVimeo<%=rs("photoid")%>" src="https://player.vimeo.com/video/<%=rs("Vimeo") %>" width="600" height="450" frameborder="0" style="display:none;"></iframe>
                <%End If %>
			    <%If rs("filename2") <> "" Then%>
			    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="get3.asp?id=<%=rs("photoid")%>&i=<%=sesUserId %>"><%=rs("descriptions2")%></a>&nbsp;
			    <%End If%>
			    <%If rs("filename3") <> "" Then%>
			    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="photos/<%=rs("filename3")%>"><%=rs("descriptions3")%></a>&nbsp;
			    <%End If%>
			    <%If rs("filename4") <> "" Then%>
			    <img src='images/blue-arrow.gif' border='0'> <a target="_blank" href="photos/<%=rs("filename4")%>"><%=rs("descriptions4")%></a>
			    <%End If%>
                <img src='images/blue-arrow.gif' border='0'> <a href="javascript:hideToggle2('trCert<%=rs("photoid")%>');">Certificate of Completion</a>
			</td>
		</tr>
        <tr id="trCert<%=rs("photoid")%>" style="display:none;">
            <td colspan="4">
                <%
                    Dim strDescription
                    strDescription = RemoveHTML(rs("description2"))
                    strDescription = Replace(strDescription, vbCrLf, "")
                    strDescription = Replace(strDescription, "-", "")
                    strDescription = Replace(strDescription, """", "")
                    'strDescription = Replace(strDescription, "&", "&#38;")
                    strDescription = Replace(strDescription, "'", "&#39;")
                    
                %>
                <input type="checkbox" name="cbxCertify<%=rs("photoid")%>" id="cbxCertify<%=rs("photoid")%>" class="tblBase"><label for="cbxCertify">I certify under perjury that I have watched this entire presentation.</label><br />
                Taken date: <input type="text" id="txtTakenDate<%=rs("photoid")%>" name="txtTakenDate" value="<%=FormatDateTime(Now(), 2) %>" /><br />
                <a href="javascript:fnIfChecked('cbxCertify<%=rs("photoid")%>', <%=rs("photoid")%>, <%=Request.Form("sesUserId") %>, 'txtTakenDate<%=rs("photoid")%>');">Generate Certificate</a>
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
<%If False Then%>
<img src="images/cap_PastMeetingNotesGroup.gif"><br>
<%
strSQL = "SELECT * FROM VW_CLASSNOTES WHERE Photos.UserId <> " & sesUserId & " " & _
	"AND (class IN ('" & sesClass & "','" & sesClass2 & "') " & _
	" OR alternateclass IN ('" & sesClass & "','" & sesClass2 & "'))"

%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
<table width="100%" style="FONT-SIZE: 10pt">
	<%
	Do While Not rs.EOF
	%>
	<tr>
		<td><%=FormatDateTime(rs("dateadded"), 2)%></td>
		<td><%=rs("description")%></td>
		<td><a target="_blank" href="get2.asp?id=<%=rs("photoid")%>&i=<%=sesUserId %>"><%=rs("filename")%></a></td>
		<td><%=rs("first")%>&nbsp;<%=rs("last")%></td>
		<%If sesClass2 = "Admin" Then%>
		<td><a href="javascript:fnDelete('<%=rs("photoid")%>');">Delete notes</a></td>
		<%End If%>
	</tr>
	<%
		rs.MoveNext
	Loop
End If

End If
%>
</table>
</form>

<!--#include file="includes/footer.asp"-->

</body>
</html>
<!--#include file="includes/DBClose.asp"-->