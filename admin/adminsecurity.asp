<%
If Session("admin") <> "yes" Then
	Response.Redirect("login.asp")
End If
%>
