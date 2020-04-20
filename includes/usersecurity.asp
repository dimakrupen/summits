<%
	If Clng(sesUserId) > 0 Then
		' space for some actions may be
	Else
		sesEmail = ""
		sesFirst = ""
		sesLast = ""
		sesUserId = ""
		sesClass = ""
		sesClass2 = ""

		ResponseRedirect("index.asp")
	End If
%>