<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
If Request.QueryString("error") = "1" Then strError = "Invalid file format or size"
%>
<SCRIPT LANGUAGE=javascript>
<!--
function fnSubmit()
{
    document.all["FileName"].value = window.frames[0].window.document.frmMain.file.value;
    document.all["FileNamePDF"].value = window.frames[1].window.document.frmMain.file.value;
    document.all["FileName2"].value = window.frames[2].window.document.frmMain.file.value;
    document.all["FileName3"].value = window.frames[3].window.document.frmMain.file.value;
    document.all["FileName4"].value = window.frames[4].window.document.frmMain.file.value;

	return true;
}
//-->
</SCRIPT>

<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form action="PastMeetingNotes.asp" method="post" name="frmMain" onsubmit="return fnSubmit();">
<%If Request.Form("id") <> "" Then
	strSQL = "SELECT * FROM Photos WHERE PhotoID = " & Request.Form("id")
	%><!--#include file="includes/rsopen.asp"--><%
	Dim classonly, filename, description, description2
	Dim filename2, descriptions2, filename3, descriptions3, filename4, descriptions4, eventdate, vimeo, filenamePDF
	If Not rs.EOF Then
		classonly = rs("classonly")
		filename = rs("filename")
		description = rs("description")
		description2 = rs("description2")

		filename2 = rs("filename2")
		descriptions2 = rs("descriptions2")

		filename3 = rs("filename3")
		descriptions3 = rs("descriptions3")

		filename4 = rs("filename4")
		descriptions4 = rs("descriptions4")

		If Not IsNull(rs("dateadded")) Then
			eventdate = FormatDateTime(rs("dateadded"))
		End If
        vimeo = rs("vimeo")
        filenamePDF = rs("PDF")
	End If
	rs.Close

%>
<img src="images/cap_PastMeetingNotesEdit.gif">
<input type="hidden" name="mode" value="edit">
<%Else%>
<img src="images/cap_PastMeetingNotesAdd.gif">
<input type="hidden" name="mode" value="add">
<%End If%>
<input type="hidden" name="FileName" id="FileName">
<input type="hidden" name="FileName2" id="FileName2">
<input type="hidden" name="FileName3" id="FileName3">
<input type="hidden" name="FileName4" id="FileName4">
<input type="hidden" name="FileNamePDF" id="FileNamePDF">
<input type="hidden" name="id" value="<%=Request.Form("id")%>">
<%
%>
<table width="100%" style="FONT-SIZE: 10pt">
	<tr>
		<td align="middle" colspan="2"><font color="red"><%=strError%></font></td>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox" name="cbxClassOnly" class="i_wo_border" <%If classonly Then%>CHECKED<%End If%>>For My Group Only</td>
	</tr>
	<tr>
		<td>Event Date</td>
		<td><input type="text" name="txtDate" class="tblBase" maxlength="10" value="<%=eventdate%>" style="width:80px"> (optional)</td>
	</tr>
    <tr>
        <td>VimeoID</td>
        <td># <input type="text" name="txtVimeo" class="tblBase" maxlength="50" value="<%=vimeo%>" style="width: 100px"></td>
    </tr>
    <tr>
		<td>&nbsp;or Audio File</td>
		<td><iframe src="_addphoto.asp?file=<%=filename%>" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>Audio Description</td>
		<td><input type="text" name="txtDesc" class="tblBase" maxlength="100" value="<%=description%>" style="width: 340px"></td>
	</tr>
	<tr>
		<td>Meeting Description</td>
		<td><TEXTAREA name="txtDesc2" rows=5 cols=40 class="tblBase"><%=description2%></textarea></td>
	</tr>
    <tr>
        <td>Summary PDF</td>
        <td><iframe src="_addphoto.asp?file=<%=filenamePDF%>" id="ifAttachPDF" name="ifAttachPDF" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
    </tr>
	<tr>
		<td>Additional File #2</td>
		<td><iframe src="_addphoto.asp?file=<%=filename2%>" id="ifAttach2" name="ifAttach2" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>File Description #2</td>
		<td><input type="text" name="txtDescs2" class="tblBase" maxlength="100" value="<%=descriptions2%>" style="width: 340px"></td>
	</tr>
	<tr>
		<td>Additional File #3</td>
		<td><iframe src="_addphoto.asp?file=<%=filename3%>" id="ifAttach3" name="ifAttach3" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>File Description #3</td>
		<td><input type="text" name="txtDescs3" class="tblBase" maxlength="100" value="<%=descriptions3%>" style="width: 340px"></td>
	</tr>
	<tr>
		<td>Additional File #4</td>
		<td><iframe src="_addphoto.asp?file=<%=filename4%>" id="ifAttach4" name="ifAttach4" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="20px"></iframe></td>
	</tr>
	<tr>
		<td>File Description #4</td>
		<td><input type="text" name="txtDescs4" class="tblBase" maxlength="100" value="<%=descriptions4%>" style="width: 340px"></td>
	</tr>
</table>
<input type="submit" name="btnSubmit1" value="Save" class="tblBase">
<!--#include file="includes/formvars.asp"-->
<input type="hidden" name="type" value=1>
</form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->