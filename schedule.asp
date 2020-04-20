<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
Function UrlStartsWith(string1, string2)
     UrlStartsWith = InStr(1, string1, string2, 1) = 1
End Function

strSQL = "SELECT userdata.First, userdata.Last, userdata.company, userdata.Title, photos.description2 " &_
    "FROM photos INNER JOIN userdata ON photos.userid = userdata.userid " &_
	"WHERE type = 1 AND photos.description2 <> '' " &_
    "ORDER BY userdata.company "
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
<table width="900" style="FONT-SIZE: 9pt; FONT-FAMILY: Tahoma;">
	<%
	Do While Not rs.EOF
        Dim description
        description = rs("description2")
        If UrlStartsWith(description, "--") Then
            description = Replace(description, "--", "", 1, 1, 1)  
        End If
        If UrlStartsWith(description, "- ") Then
            description = Replace(description, "- ", "", 1, 1, 1) 
        End If
        If UrlStartsWith(description, "<b>- ") Then
            description = Replace(description, "<b>- ", "<b>", 1, 1, 1) 
        End If
        If UrlStartsWith(description, "-<b>") Then
            description = Replace(description, "-<b>", "<b>", 1, 1, 1) 
        End If
        If UrlStartsWith(description, "--<b>") Then
            description = Replace(description, "--<b>", "<b>", 1, 1, 1) 
        End If
        If UrlStartsWith(description, " - ") Then
            description = Replace(description, " - ", "", 1, 1, 1) 
        End If
        description = Replace(description, "She will present: ", "") 
        description = Replace(description, "He will present: ", "") 

	%>
        <tr> 
            <td valign='top' height='22'><%=description%> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table>
	<%
End If
%>
<!--#include file="includes/DBClose.asp"-->