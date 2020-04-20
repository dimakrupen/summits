<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
    strSelectedMenu = "Ask Advice" 

    Dim GroupID, LIUID
    strSQL = "SELECT * FROM Settings"
    %><!--#include file="includes/rsadd.asp"--><%
    GroupID = rs("AskAdviceGroupID")
    LIUID = rs("LinkedInUserID")
    rs.Close

Dim WebSite
WebSite = LCase(Request.ServerVariables("SCRIPT_NAME"))
WebSite = Replace(Left(WebSite, InStr(2, WebSite, "/") - 1), "/", "")
%> 
<SCRIPT LANGUAGE=javascript>
<!--
    function sleep(delay) {
        var start = new Date().getTime();
        while (new Date().getTime() < start + delay);
    }

    function fnAdd()
    {
        document.getElementById("ifAdd").src = "http://thesummits.org/sso/addpost.aspx?groupid=<%=GroupID%>&lid=<%=LIUID%>&title=" +
            encodeURIComponent(document.getElementById("txtTitle").value) +
            "&summary=" + encodeURIComponent(document.getElementById("txtSummary").value) +
            "&summit=<%=WebSite%>&first=<%=sesFirst%>&last=<%=sesLast%>&sessUserID=<%=sesUserId%>&sesClass2=<%=sesClass2%>";
        setTimeout(fnSubmit, 5000);
    }

    function fnSubmit()
    {
        document.getElementById("frmMain").submit();
    }

    function fnShowQuestion()
    {
        document.getElementById("tblQuestion").style.display = "block";
        document.getElementById("btnAddQuestion").style.display = "none";
    }
//-->
</SCRIPT>
	
</HEAD>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<FORM name="frmMain" id="frmMain" method="POST">
<input type="hidden" name="mode"> 
<img src="images/cap_askadvice.gif"><br />

<br><small>You may ask questions which will be automatically sent to an extended group for response. Note that your name will be hidden for security/confidentiality reasons.</small><br>
&nbsp;&nbsp;&nbsp;<input type="button" id="btnAddQuestion" value="Ask a Question" onclick="javascript: fnShowQuestion();" />

<TABLE id="tblQuestion" width="100%" style="FONT-SIZE: 10pt; display: none;">
	<TR>
		<TD>Question Title</TD>
		<TD><input type="text" name="txtTitle" id="txtTitle" class="tblBase" maxlength="200" style="width:450px"></TD>
	</TR>
	<TR>
		<TD>Detailed Question</TD>
		<TD><TEXTAREA class=tblBase style="WIDTH: 450px; HEIGHT: 109px" name=txtSummary id=txtSummary rows=4 cols=37></TEXTAREA></TD>
	</TR>
	<TR>
		<TD colspan=2 align="right"><input type="button" name="btnSavePost" id="btnSavePost" value="Post Question" onclick="fnAdd();" /></TD>
	</TR>
</TABLE>
<iframe src="http://thesummits.org/sso/summitpost.aspx?groupid=<%=GroupID%>&lid=<%=LIUID%>&summit=<%=WebSite%>&first=<%=sesFirst%>&last=<%=sesLast%>&sessUserID=<%=sesUserId%>" name="embeddedFrame" width="100%" height="800px" frameBorder="0"></iframe>
<iframe id="ifAdd" name="ifAdd" width="600px" style="display: none;"></iframe><!--width="0" height="0" style="display: none;"-->
<!--#include file="includes/formvars.asp"--></FORM>
<!--#include file="includes/footer.asp"-->
</BODY>
</HTML>
<!--#include file="includes/DBClose.asp"-->