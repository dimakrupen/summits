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

strSQL = "SELECT * FROM Sponsors WHERE [Group] = '" & strGroup & "' ORDER BY Place"
rs.Open strSQL, oDBConn, 3, 1
%><table><%
Do While Not rs.EOF
    %>
    
        <tr>
            <td style="vertical-align: top;">
                <img src="files/<%=rs("logo")%>" style="padding: 0px 10px 20px 0px;"
                <%If rs("LogoW") <> "" Then%>
                width="<%=rs("LogoW")%>px"
                <%End If%>
                <%If rs("LogoH") <> "" Then%>
                height="<%=rs("LogoH")%>px"
                <%End If%>
                >
            </td>
            <td style="vertical-align: top;">
                <div style="display: flex; flex-direction: column; align-content: flex-start; margin: unset;">
            <div style="margin: unset;">
                <b><%=rs("company")%></b>&nbsp;<a href="<%=rs("website")%>" target="_New" >Website</a>
            </div>
            <%
            strSQL = "SELECT * FROM SponsorsResources WHERE SponsorID = " & rs("ID")
            rs2.Open strSQL, oDBConn, 3, 1
            Dim fileOrlink
            Do While Not rs2.EOF
                %><div style="margin: unset;"><%
                fileOrlink = rs2("ResourceLink")
                If rs2("ResourceFile") <> "" Then
                    fileOrlink = rs2("ResourceFile")
                End If
                If rs2("ResourceType") <> "" Then
                    %><b><%=rs2("ResourceType")%></b>&nbsp;<%
                End If
                %>
                    <a href="<%=fileOrlink%>" target="_New"><%=rs2("ResourceTitle")%></a>
                </div>
                <%
                rs2.MoveNext
            Loop
            rs2.Close
            %>
            <div style="margin: unset;">
                <b>Email</b>&nbsp;
                <a href="mailto:<%=rs("ContactEmail")%>?subject=more-information"><%=rs("ContactName")%></a>&nbsp;&nbsp;&nbsp;
                Telephone: <%=rs("ContactPhone")%>
            </div>
        </div>
            </td>
        </tr>
    

    <!--<div style="display: flex; width: 610px; border: 1px solid black; align-content: flex-start; ">
        <div style="width: 210px; margin: unset;">
            <img src="files/<%=rs("logo")%>" style="padding: 0px 10px 20px 0px;">
        </div>
        
    </div>
    -->
    <%
    rs.MoveNext
Loop

rs.Close
%> 
</table>
</body>
</html>
<!--#include file="includes/DBClose.asp"-->