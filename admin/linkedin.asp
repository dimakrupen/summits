<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<%
If Request.Form("btnSavePost") = "Save" Then
    strSQL = "SELECT * FROM Settings"
	%><!--#include file="../includes/rsadd.asp"--><%
	rs("AskAdviceGroupID") = Request.Form("txtGroupID")
    rs("LinkedInUserID") = CLng(Request.Form("selLIUser"))
	rs.Update
	rs.Close

End If 
        
Dim selLIUser, groupID
strSQL = "SELECT * FROM Settings"
%><!--#include file="../includes/rsadd.asp"--><%
selLIUser = rs("LinkedInUserID")
groupID = rs("AskAdviceGroupID")
rs.Close
%>
<html>
    <head>
        <link href="header.css" type="text/css" rel="stylesheet">
        <script lanuange="javascript" type="text/javascript">
            function fnAdd()
            {
                document.getElementById("ifSubmit").src = "http://thesummits.org/sso/addpost.aspx?lid=" + document.getElementById("selLIUser").value +
                    "&groupid=" + document.getElementById("txtGroupID").value + 
                    "&title=" + encodeURIComponent(document.getElementById("txtTitle").value) +
                    "&summary=" + encodeURIComponent(document.getElementById("txtSummary").value);
            }

        </script>
    </head>
    <body style="font-family: Verdana; font-size: 8pt;" vlink="blue">
        <!--#include file="header.asp"-->
<b>LinkedIn Settings</b><hr>
        <form name="frmMain" id="frmMain" method="post">
        
        <br />
        
            <table>
                <tr>
                    <td valign="top" style="width: 50%;">
                        <%
Dim rsLI, oDBConnLI
Set rsLI = Server.CreateObject ("ADODB.Recordset")
Set oDBConnLI = Server.CreateObject("ADODB.Connection")
oDBConnLI.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & server.MapPath("../../sso/App_Data/settings.mdb") 

oDBConnLI.Open
%>Select LinkedIn User: <select name="selLIUser" id="selLIUser" class="tblBase">
<%
strSQL = "SELECT * FROM LiSettings"
rsLI.Open strSQL, oDBConnLI, 3, 1

Do While Not rsLI.EOF
	%><option value="<%=rsLI("ID")%>" <%If rsLI("ID") = selLIUser Then Response.Write("SELECTED") End If %>><%=rsLI("LiLogin")%></option><%
	rsLI.MoveNext
Loop
rsLI.Close
%>
			</select><br />
Enter GroupID (user above must be in group): <input type="text" id="txtGroupID" name="txtGroupID" maxlength="50" value="<%=groupID %>" />
<input type="submit" name="btnSavePost" id="btnSavePost" value="Save" />
<br /><br />
<font style="color:red; font-size: 8pt;">Warning: </font><small>Empty value will hide 'Ask Advice' page</small>
<!--New Post Title:<br />
<textarea style="WIDTH: 600px; HEIGHT: 60px" name="txtTitle" id="txtTitle" rows="4" cols="37"></textarea><br />
Summary:<br />
<textarea style="WIDTH: 600px; HEIGHT: 60px" name="txtSummary" id="txtSummary" rows="4" cols="37"></textarea><br />
<input type="button" name="btnAdd" id="btnAdd" onclick="fnAdd();" value="Add New Post" /><br /><br />
<iframe id="ifSubmit" name="ifSubmit" width="600px"></iframe><br />-->
            <small>"Object reference not set to an instance of an object." means user is not assigned to group.</small>
<%
Set rsLI = Nothing
Set oDBConnLI = Nothing

%>
                    </td>
                    <td valign="top" style="width: 50%;">
                        <iframe frameborder="0" id="ifUsers" name="ifUsers" width="600px" height="400px" src="http://thesummits.org/sso/summitLIusers.aspx"></iframe>
                    </td>
                </tr>

            </table>

            </form>
    </body>
</html>
<!--#include file="../includes/DBClose.asp"-->