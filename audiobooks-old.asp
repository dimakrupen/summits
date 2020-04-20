<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
strSelectedMenu = "AudioBooks"
Select Case Request.Form("mode") 
	Case "addcategory"
		strSQL = "Categories" 
		rs.Open strSQL, oDBConn, 1, 3
		rs.AddNew
		rs("Category") = Request.Form("category")
		rs("CategoryTypeID") = 3
		rs.Update
		rs.Close
	Case "renamecategory"
		strSQL = "SELECT * FROM Categories WHERE id = " & Request.Form("oldcategory")
		rs.Open strSQL, oDBConn, 1, 3
		rs("Category") = Request.Form("category")
		rs.Update
		rs.Close
	Case "addresource"
		strSQL = "SharedStuff" 
		rs.Open strSQL, oDBConn, 1, 3
		rs.AddNew
		rs("filename") = Request.Form("newfile")
		rs("description") = Request.Form("newfiledesc")
		rs("postedby") = Request.Form("sesUserId")
		rs("categoryid") = Request.Form("oldcategory")
		If Request.Form("mygrouponly") = "" Then rs("mygrouponly") = False
		rs.Update
		rs.Close
	Case "editresource"
		strSQL = "SELECT * FROM SharedStuff WHERE id = " & Request.Form("oldcategory")
		rs.Open strSQL, oDBConn, 1, 3
		rs("filename") = Request.Form("newfile")
		rs("description") = Request.Form("newfiledesc")
		If Request.Form("mygrouponly") = "" Then rs("mygrouponly") = False
		rs.Update
		rs.Close
	Case "delFile"
		strSQL = "UPDATE SharedStuff " & _
			"SET deleted = True, deleteddate = Now(), DeletedBy = " & sesUserId & _
			" WHERE id = " & Request.Form("fileidtodelete")
		rs.Open strSQL, oDBConn, 3, 1
	Case "restoreFile"
		strSQL = "UPDATE SharedStuff " & _
			"SET deleted = False " & _
			" WHERE id = " & Request.Form("fileidtodelete")
		rs.Open strSQL, oDBConn, 3, 1
	Case "delCat"
		strSQL = "DELETE * FROM SharedStuff " & _
			" WHERE categoryid = " & Request.Form("fileidtodelete")
		rs.Open strSQL, oDBConn, 3, 1
		strSQL = "DELETE * FROM Categories " & _
			" WHERE	id = " & Request.Form("fileidtodelete")
		rs.Open strSQL, oDBConn, 3, 1
End Select

%>
<script LANGUAGE="javascript">
<!--
function fnAdd()
{
	document.all["ifHidden"].src = "_addcategory.asp";
}

function fnRename(category)
{
	document.all["ifHidden"].src = "_editcategory.asp?id=" + category;
}

function fnAddToCategory(catid)
{
	if (document.all["btnAdd" + catid].value == "Add Resource")
	{
		document.all["ifFileAdd" + catid].src = "_addresource.asp?id=" + catid;
		document.all["ifFileAdd" + catid].height = 65;
		document.all["btnAdd" + catid].value = "Cancel";
	}
	else
	{
		document.all["ifFileAdd" + catid].src = "_empty.htm";
		document.all["btnAdd" + catid].value = "Add Resource";
		document.all["ifFileAdd" + catid].height = 40;
	}
}

function EditFile(catid, id)
{
	if (document.all["btnAdd" + catid].value != "Cancel")
	{
		document.all["ifFileAdd" + catid].src = "_editresource.asp?id=" + id;
		document.all["ifFileAdd" + catid].height = 80;
		document.all["btnAdd" + catid].value = "Cancel";
	}
	else
	{
		document.all["ifFileAdd" + catid].src = "_empty.htm";
		document.all["btnAdd" + catid].value = "Add File";
		document.all["ifFileAdd" + catid].height = 40;
	}
}


function DeleteFile(intDeletedFileID) {
	if (!confirm("Are you sure you want to delete this resource?")) return;
	document.frmMain.mode.value = "delFile";
	document.frmMain.fileidtodelete.value = intDeletedFileID;
	document.frmMain.submit();
}

function DeleteCategory(id) {
	if (!confirm("Are you sure you want to delete this category? All resources in this category will be deleted.")) return;
	document.frmMain.mode.value = "delCat";
	document.frmMain.fileidtodelete.value = id;
	document.frmMain.submit();
}

//-->
</script>
	
</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<input type="hidden" name="mode">
<input type="hidden" name="category">
<input type="hidden" name="oldcategory">
<input type="hidden" name="newfile">
<input type="hidden" name="newfiledesc">
<input type="hidden" name="mygrouponly">
<input type="hidden" name="fileidtodelete">
<input type="hidden" name="currentfileid">
<img src="images/cap_AudioBooks.gif"><input type="button" name="btnSubmit1" value="Add Category" onclick="fnAdd();" class="tblBase">
<iframe src="_empty.htm" id="ifHidden" name="ifHidden" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="500px" height="20px"></iframe>
<br>
<small>You may listen to these audiobooks at no charge (included).<br>
<b>To Listen while Commuting.</b><br>
1. Quickest Way: Just login here using any smartphone browser then click any audiobook, OR<br>
2. Alternatively if your cell service is poor: <br>
&nbsp; &nbsp; &nbsp; - For iPhone/iPod: Right click, SaveAs, then in iTunes click File, AddFileToLibrary, then sync.<br>
&nbsp; &nbsp; &nbsp; - For Android: Right click, SaveAs, then in Explorer drag the file to your phone's SD card.<br>
&nbsp; &nbsp; &nbsp; - For WindowsPhone: Right click, SaveAs, then in Explorer drag the file to your phone's SD card.<br>
&nbsp; &nbsp; &nbsp; - For Blackberry: Right click, SaveAs, then use <a target="_blank" href="http://na.blackberry.com/eng/services/media/mediasync.jsp">BB Media Sync</a> to transfer.
</small>
<br>
<br>
<%
strSQL = "SELECT * FROM Categories WHERE CategoryTypeID = 3"
%><!--#include file="includes/rsopen.asp"-->
<table width="100%" style="font-size: 10pt">
<%
Do While Not rs.EOF
	%>
		<tr>
			<td><b><%=rs("Category")%></b><%If sesClass2 = "Admin" Then%>&nbsp;&nbsp;<a href="javascript:fnRename(<%=rs("id")%>);">Rename</a>&nbsp;&nbsp;<a href="javascript:DeleteCategory(<%=rs("id")%>);">Delete</a><%End If%></td>
			<td><i>By</i></td>
			<td>&nbsp;&nbsp;</td>
		</tr>
	<%
	strSQL = "SELECT SharedStuff.*, userdata.first + ' ' + userdata.last as userposted FROM SharedStuff " & _
		"INNER JOIN userdata ON SharedStuff.postedby = userdata.userid WHERE categoryid = " & rs("id") &_
		" AND SharedStuff.deleted = False " & _
		" AND (mygrouponly = False OR postedby IN " &_
		"(SELECT userid FROM userdata WHERE class = '" & sesClass & "' OR class = '" & sesClass2 & "'))"
	%><!--#include file="includes/rsopen2.asp"--><%
	Do While Not rs2.EOF
		%>
			<tr>
				<td>&nbsp;&nbsp;<img src="images/arrow.gif">
					<a target="_blank" href="get.asp?id=<%=rs2("id")%>&i=<%=Request.Form("sesUserId") %>"><%=rs2("description")%></a>
				</td>
				<td nowrap><%=rs2("userposted")%></b></td>
				<%If sesClass2 = "Admin" Or rs2("postedby") = sesUserId Then%>
				<td><a href="javascript:EditFile(<%=rs("id")%>, <%=rs2("id")%>);">edit</a>
					<a href="javascript:DeleteFile(<%=rs2("id")%>);">delete</a></td>
				<%End If%>
			</tr>
		<%
		rs2.MoveNext	
	Loop
	rs2.Close
	%>
		<tr>
			<td colspan="2" align="right">
				<iframe src="_empty.htm" id="ifFileAdd<%=rs("id")%>" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="500px" height="40px"></iframe>
			</td>
			<td align="right"><input type="button" name="btnAdd<%=rs("id")%>" name="btnAdd<%=rs("id")%>" value="Add Resource" onclick="fnAddToCategory(<%=rs("id")%>);" class="tblBase"></td>
		</tr>
	<%
	rs.MoveNext
Loop
rs.Close
%>
</table>
<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->