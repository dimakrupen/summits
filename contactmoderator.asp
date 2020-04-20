<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "Contact Moderator"
If Request.Form("btnSubmit") = "Send" Then
	If Request.Form("txtMessage") <> "" Then
		Dim strBody
		strBody = "There was a request to contact the moderator from " & sesFirst & " " & sesLast & " " & _
			"(" & sesEmail & "):" & vbCrLf & _
			Request.Form("txtMessage")
		strSQL = "SELECT moderatorEmail FROM Settings"
		%><!--#include file="includes/rsopen.asp"--><%
		SendEmail rs("moderatorEmail"), sesEmail, sesClass & ": Contact moderator", strBody
		rs.Close
	Else
		strError = "Invalid Date"
	End If
End If
%>

<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="//v2.zopim.com/?3iQQ64w7MAy4hUKQ8jIuPuq5YjiX62uy";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zopim Live Chat Script-->
</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<%If Request.Form("btnSubmit") = "Send" Then%>
<img src="images/cap_contactmoderator_sent.gif">
<%Else%>
<img src="images/cap_contactmoderator.gif">
<%End If%>


<form name="frmMain" method="post">
<blockquote>
<table style="FONT-SIZE: 10pt">
	<tr>
		<td>
		<img src='images/blue-arrow.gif' border='0'> <a href="javascript:$zopim.livechat.window.show()"><u>Ask a Live Question Now</u></a><br><br>
		</td>
	</tr>
	<tr>
		<td>
		Please advise on how we can assist:
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