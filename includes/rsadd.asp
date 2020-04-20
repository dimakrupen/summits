<%
On Error Resume Next
rs.Open strSQL, oDBConn, 1, 3

If Err.number <> 0 Then
	Response.Write "Error occurred, please wait 5-10 min and try again<br>"  
	SendEmail "summits@4-asp.net", "Error Reporter", "Summit site error", _ 
		err.Description & vbCrLf &_
		err.number & vbCrLf &_ 
		err.Source & vbCrLf &_
		strSQL & vbCrLf &_    
		Request.ServerVariables("SCRIPT_NAME")

	Response.End 
End If

On Error GoTo 0
%>

 