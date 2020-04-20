<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
strSelectedMenu = "ExecBooks"
Dim activationLink
strSQL = "SELECT execbook FROM Settings"
%><!--#include file="includes/rsopen.asp"--><%
activationLink = rs("execbook")
rs.Close
%>
</head>
<body vlink="blue"><!--#include file="includes/header.asp"-->
<img src="images/cap_execbooks.gif">

<form name="frmMain" method="post" onsubmit="return fnCheck();">
<blockquote>
<table style="FONT-SIZE: 10pt">
	<tr>
		<td>
		In addition to recommended Audiobooks in your field, you have access to over 600 
		additional top business book summaries in all management areas included in your membership. <br><br>
		<a href="<%=activationLink%>"><li>One-Time Activation (Included)</a><br>
		<a href="http://www.mobilebriefs.com/execbooks"><li>Access Content (after activation)</a><br>

		</td>
	</tr>
</table>
</blockquote>
<!--#include file="includes/formvars.asp"--></form><!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->