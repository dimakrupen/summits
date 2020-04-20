<%@ Language=VBScript %>
<%server.ScriptTimeout = 1600%>
<%

PathInfo = Server.MapPath("files")

If Request.QueryString("file") <> "" Then FileName = Request.QueryString("file")

Set Upload = Server.CreateObject("Persits.Upload")
Upload.IgnoreNoPost = True
Upload.SetMaxSize 204000000, True 
Upload.MaxTotalSize = 204000000
Count = Upload.Save(PathInfo)

For Each Item in Upload.Files 
	FileName = Item.FileName
Next

Set objUpload = Nothing
%>
<HTML>
<HEAD>
<SCRIPT LANGUAGE=javascript>
<!--
function fnAdd()
{
	if (document.frmMain.txtDescr.value == '')
	{
		alert("Enter Description please");
		return false;
	}
	parent.document.frmMain.oldcategory.value = "<%=Request.QueryString("id")%>";
	parent.document.frmMain.newfile.value = document.frmMain.file.value;
	parent.document.frmMain.newfiledesc.value = document.frmMain.txtDescr.value;
	if (document.frmMain.cbxMyGroup.checked) parent.document.frmMain.mygrouponly.value = "True";
	<%If Request.QueryString("desc") = "" Then%>
	parent.document.frmMain.mode.value = "addfile";
	<%Else%>
	parent.document.frmMain.mode.value = "savefile";
	parent.document.frmMain.currentfileid.value = <%=Request.QueryString("fid")%>;
	<%End If%>
	parent.document.frmMain.submit();
}
//-->
</SCRIPT>
</HEAD>
<BODY>
<FORM name=frmMain method=post encType=multipart/form-data style="font-size: 10pt" >
<%If FileName = "" Then%>
<INPUT type=file class="t_input" name=fileUpload>
<input type="submit" name="Submit" class="t_input" value="Upload">
<INPUT type=hidden name=file>
<%Else%>
<INPUT type=hidden name=file value="<%=FileName%>">
<b><%=FileName%></b>
Description: <textarea id=txtDescr name=txtDescr cols=50><%=Request.QueryString("desc")%></textarea><br>
<input type="checkbox" class="i_wo_border" name="cbxMyGroup" CHECKED>Viewable by My Group only
<input type="button" name="Submit" class="t_input" value="Submit"
onclick="fnAdd();">
</FORM>
<%End If%>
</BODY>
</HTML>
