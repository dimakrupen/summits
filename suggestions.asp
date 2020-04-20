<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "Suggestions"
If Request.Form("btnSubmit") = "Send" Then
	If Request.Form("txtMessage") <> "" Then
		Dim strBody
		strBody = "New suggestion from " & sesFirst & " " & sesLast & " " & _
			"(" & sesEmail & "):" & vbCrLf & _
			Request.Form("txtMessage")
			
		strSQL = "SELECT suggestionsEmail FROM Settings"
		%><!--#include file="includes/rsopen.asp"--><%
		SendEmail rs("suggestionsEmail"), sesEmail, sesClass & " New Suggestion", strBody
		rs.Close
			
		SendEmail "mprice@listk.com", sesEmail, "Summit site: New Suggestion", strBody
	Else
		strError = "Invalid Date"
	End If
End If
%>

</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<%If Request.Form("btnSubmit") = "Send" Then%>
<img src="images/cap_suggestions_sent.gif">
<%Else%>
<img src="images/cap_suggestions.gif">
<%End If%>


<form name="frmMain" method="post">
<blockquote>
<table style="FONT-SIZE: 10pt">
	<tr>
		<td>
		Please enter your suggestions here and value your thoughts.
		</td>
	</tr>
	<tr>
		<td>
			<textarea id="txtMessage" style="WIDTH: 342px; HEIGHT: 104px" name="txtMessage" rows="4" cols="37"></textarea>
		</td>
	</tr>
	<tr>
		<td align="center">
			<input type="submit" name="btnSubmit" value="Send">
		</td>
	</tr>
</table>
</blockquote><!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->