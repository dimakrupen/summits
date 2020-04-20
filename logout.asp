<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
Dim siteAddress

strSQL = "SELECT siteAddress FROM Settings"
rs.Open strSQL, oDBConn, 3, 1
siteAddress = rs("siteAddress")
rs.Close

If sesClass <> "" Then 
    strSQL = "SELECT LogOff FROM class where classcode = '" & sesClass & "'"
    If rs.State = 1 Then 
        rs.Close
    End If
    rs.Open strSQL, oDBConn, 3, 1
    If Not rs.EOF Then
        If Len(rs("LogOff")) > 0 Then siteAddress = rs("LogOff")
    End If
    rs.Close
  
End If
%>
<!--#include file="includes/DBClose.asp"-->
<%
If InStr(siteAddress, "http://") <> 0 Then
    Response.Redirect(siteAddress)
Else 
    If InStr(siteAddress, "https://") <> 0 Then
        Response.Redirect(siteAddress)
    Else
        Response.Redirect("http://" & siteAddress)
    End If
End If
%>