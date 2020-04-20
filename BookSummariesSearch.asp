<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
strSelectedMenu = "Book Summaries"
%>
</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<input type="hidden" name="mode">
<input type="hidden" name="category">
<input type="hidden" name="oldcategory">
<input type="hidden" name="newfile">
<input type="hidden" name="newfiledesc">
<input type="hidden" name="mygrouponly">
<input type="hidden" name="fileidtodelete">
<input type="hidden" name="currentfileid">
<img src="images/cap_BookSummaries.gif">
    <br />
    <small><i>Over 8,000 top business book summaries (many with audios as well) are included in your membership, click the Search Icon on the right to find a title or topics of interest to you.</i></small>
    <br />
<iframe src="http://thesummits.org/sso/iframe.aspx?f=<%=sesFirst %>&l=<%=sesLast %>&e=<%=sesEmail %>" name="embeddedFrame" width="100%" height="1000px" frameBorder="0"></iframe>

<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->