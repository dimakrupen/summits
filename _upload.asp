<%@ Language=VBScript %>
<%
Server.ScriptTimeout = 1600
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
</HEAD>
<BODY style="FONT-SIZE: 12px; font-family: 'Liberation sans', Arial, Verdana, Helvetica, sans-serif;">
<%If FileName = "" Then%>
<FORM name="frmMain" method="post" encType="multipart/form-data">
<INPUT type="file" class="t_input" name="fileUpload" style="width: 273px; ">
<input type="submit" name="btnSubmit" class="t_input" value="Upload" 
	style="FONT-SIZE: 12px; font-family: 'Liberation sans', Arial, Verdana, Helvetica, sans-serif; border: #cfcfcf 1px solid; color: #404040; padding: 3px;">
<INPUT type=hidden name="file">
<%Else%>
<FORM name="frmMain" method="post" action="_upload.asp">
<INPUT type=hidden name="file" value="<%=FileName%>">
<%=FileName%> <input type="submit" name="Submit" class="t_input" value="Remove" class="t_input" style="FONT-SIZE: 12px; font-family: 'Liberation sans', Arial, Verdana, Helvetica, sans-serif; border: #cfcfcf 1px solid; color: #404040; padding: 3px;">

<%End If%>
</FORM>
</BODY>
</HTML>
