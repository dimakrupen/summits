<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
Function RemoveHTML( strText )
	Dim RegEx

	Set RegEx = New RegExp

	RegEx.Pattern = "<[^>]*>"
	RegEx.Global = True

	RemoveHTML = RegEx.Replace(strText, "")
End Function


If Not IsNumeric(Request.QueryString("id")) Then
    Response.Write("Invalid data")
    Response.End
    %>
    <!--#include file="includes/DBClose.asp"-->
    <%
End If

strSQL = "INSERT INTO CertStatistic (SSID, UserID, DateClicked) " & _
    "VALUES (" & Request.QueryString("id") & ", " & Request.QueryString("i") & ", Now())"
	%><!--#include file="includes/rsadd.asp"--><%
strSQL = "SELECT photos.dateadded, photos.filename, photos.description, photos.description2, photos.photoid, photos.userid,  " &_
	"photos.filename2, photos.descriptions2, photos.filename3, photos.descriptions3, photos.filename4, photos.descriptions4, photos.Vimeo, photos.PDF, " &_
	"userdata.first, userdata.last FROM photos INNER JOIN userdata ON photos.userid = userdata.userid " &_
	"WHERE photoid = " & Request.QueryString("id")
%><!--#include file="includes/rsopen.asp"--><%
Dim strDescription
strDescription = RemoveHTML(rs("description2"))
strDescription = Replace(strDescription, "-", "")
strDescription = Replace(strDescription, vbCrLf, "")
strDescription = Server.UrlEncode(strDescription)

rs.Close
%>
<!--#include file="includes/DBClose.asp"-->
<%
' Response.Write(strDescription)   
Response.Redirect("http://thesummits.org/sso/generatecert.aspx?id=" + Request.QueryString("id") + "&f=" + Request.QueryString("f") + "&l=" + Request.QueryString("l") + "&d=" + strDescription + "&s=" + Request.QueryString("o") + "&date=" + Server.UrlEncode(Request.QueryString("date")))
%>