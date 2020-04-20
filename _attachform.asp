<%@ Language=VBScript %>
<%
Server.ScriptTimeout = 1600

Dim PathInfo, FileName
PathInfo = Server.MapPath("files")

Dim objUpload
Set objUpload = Server.CreateObject("Persits.Upload")

objUpload.OverwriteFiles = True
objUpload.SetMaxSize 204000000, True 
objUpload.MaxTotalSize = 204000000

FileName = ""
If objUpload.FileCount > 0 Then
	Dim i, objFile
	SET objFile = objUpload.File(1)
	FileName = objFile.Filename 
Else
	If Request.QueryString("file") <> "" Then FileName = Request.QueryString("file")
	If objUpload.FormCount > 0 Then
		If objUpload.FormName(2) = "Submit" Then
			Dim objFSO
			Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
			objFSO.DeleteFile(PathInfo + "\" + objUpload.Form(1))
			Set objFSO = Nothing
			Response.Redirect("_attachform.asp")
		End If
	End If
End If
%>
<HTML>
<HEAD>
</HEAD>
<BODY>
<FORM name="frmMain" method="post" encType="multipart/form-data">
<%If FileName = "" Then%>
<INPUT type="file" class="t_input" name="fileUpload" style="width: 273px">
<input type="submit" name="Submit" class="t_input" value="Upload">
<INPUT type=hidden name=file>
<%Else%>
<INPUT type=hidden name="file" value="<%=FileName%>">
<%=FileName%> <input type="submit" name="Submit" class="t_input" value="Remove" class="t_input">
</FORM>
<%End If%>
</BODY>
</HTML>
