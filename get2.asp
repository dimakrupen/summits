<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
If Not IsNumeric(Request.QueryString("id")) Then
    Response.Write("Invalid data")
    Response.End
    %>
    <!--#include file="includes/DBClose.asp"-->
    <%
End If

strSQL = "INSERT INTO Statistic2 (SSID, UserID, DateClicked) " & _
    "VALUES (" & Request.QueryString("id") & ", " & Request.QueryString("i") & ", Now())"
	%><!--#include file="includes/rsadd.asp"--><%

strSQL = "SELECT filename FROM photos WHERE photoid = " + Request.QueryString("id")
rs.Open strSQL, oDBConn, 3, 1
Dim filename
filename = rs("filename")
rs.Close
%>
<!--#include file="includes/DBClose.asp"-->
<%
Response.Redirect("photos/" & filename)
%>