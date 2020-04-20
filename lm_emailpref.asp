<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<%
If Request.Form("btnSubmit1") = "Save" Then
	strSQL = "SELECT emailevents, emailtransformations, emailgivings, emailnews, advicequestions, sharedideas " & _
	"FROM Userdata Where Userid =" & sesUserId
	rs.Open strSQL, oDBConn, 1, 3
	rs("emailevents") = Request.Form("cbxemailevents") <> ""
	rs("emailtransformations") = Request.Form("cbxemailtransformations") <> ""
	rs("emailgivings") = Request.Form("cbxemailgivings") <> ""
    rs("advicequestions") = Request.Form("cbxemailadvicequestions") <> ""
    rs("sharedideas") = Request.Form("cbxemailsharedideas") <> ""
	rs.Update
	rs.Close
	strError = "SAVED"
End If
%>
</head>
<body vlink="blue" style="font-size: 10pt">
<%
strSelectedMenu = "Email Preferences"
%>
<!--#include file="includes/header.asp"-->
<%If strError = "" Then%>
<img src="images/cap_EmailPreferences.gif">
<%Else%>
<img src="images/cap_EmailPreferences_saved.gif">
<%End If%>
<form name="frmMain" method="POST">
<blockquote>
Receive the following email (uncheck to stop):<br>
<%
strSQL = "SELECT emailevents, emailtransformations, emailgivings, emailnews, advicequestions, sharedideas " & _
	"FROM Userdata Where Userid =" & sesUserId
%><!--#include file="includes/rsopen.asp"-->
<input type="checkbox" class="i_wo_border" name="cbxemailgivings" <%If rs("emailgivings") Then Response.Write("CHECKED") End If%> class="tblBase"> All Member Visitations Requests<br>
<input type="checkbox" class="i_wo_border" name="cbxemailevents" <%If rs("emailevents") Then Response.Write("CHECKED") End If%> class="tblBase"> Group Meetings<br>
<input type="checkbox" class="i_wo_border" name="cbxemailtransformations" <%If rs("emailtransformations") Then Response.Write("CHECKED") End If%> class="tblBase"> Group Ideas<br>
<input type="checkbox" class="i_wo_border" name="cbxemailadvicequestions" <%If rs("advicequestions") Then Response.Write("CHECKED") End If%> class="tblBase"> Advice Questions<br>
<input type="checkbox" class="i_wo_border" name="cbxemailsharedideas" <%If rs("sharedideas") Then Response.Write("CHECKED") End If%> class="tblBase"> Shared Ideas<br>
<%rs.Close%>
</blockquote>
<br>
<input type="submit" name="btnSubmit1" value="Save" class="tblBase">
<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->