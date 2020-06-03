<%@ Language=VBScript %>
<%Option Explicit%>
<%Response.Buffer = True%>
<%Response.Expires = -1%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
<head profile="http://gmpg.org/xfn/11">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="header.css" media="screen" />
</head>
<!--#include file="includes/DBOpen.asp"-->

<body vlink="blue" style="background:none;">
<%
function SQLInject(strWords) 
    dim badChars, newChars, i
    badChars = array("select", "drop", ";", "--", "insert", "delete", "xp_") 
    newChars = strWords 
    for i = 0 to uBound(badChars) 
        newChars = replace(newChars, badChars(i), "") 
    next 
    newChars = newChars 
    newChars= replace(newChars, "'", "''")
    newChars= replace(newChars, " ", "")
    newChars= replace(newChars, "'", "|")
    newChars= replace(newChars, "|", "''")
    newChars= replace(newChars, "\""", "|")
    newChars= replace(newChars, "|", "''")
    SQLInject=newChars
end function 


Dim strGroup
strGroup = SQLInject(Request.QueryString("group"))
%>
<!--#include file="_sponsors.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->