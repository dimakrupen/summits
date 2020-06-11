<table style="padding-top: 20px;">
<%
Dim sSQL
sSQL = "WHERE [Group] = '" & strGroup & "'"
If strGroup = "All" Then
    sSQL = ""
End If
strSQL = "SELECT * FROM Sponsors " & sSQL & " ORDER BY Place"
rs.Open strSQL, oDBConn, 3, 1
If Not rs.EOF Then
    If showLogoOnly = True Then
        %><div style="display: flex; align-items: center; align-content: flex-start; "><%
        Do While Not rs.EOF
            If rs("logo") <> "" And Len(rs("logo")) > 3 Then
            %><img src="files/<%=rs("logo")%>" style="padding-right: 30px; margin: 0;" width="150px"><%
            End If
            rs.MoveNext
        Loop
        %></div><%
    Else
        %><table><%
        Do While Not rs.EOF
            %>
            <tr>
                <td style="vertical-align: top; padding-right: 20px; padding-bottom: 40px;">
                    <%If rs("logo") <> "" And Len(rs("logo")) > 3 Then%>
                        <img src="files/<%=rs("logo")%>" style="padding: 0px 15px 20px 0px; margin: 0;"

                        <%If rs("LogoW") <> "" Then%>
                        width="<%=rs("LogoW")%>px"
                        <%End If%>

                        <%If rs("LogoH") <> "" Then%>
                        height="<%=rs("LogoH")%>px"
                        <%End If%>
                    >
                    <%End If%>
                </td>
                <td style="vertical-align: top; padding-bottom: 40px;">
                    <div style="display: flex; flex-direction: column; align-content: flex-start; margin: unset;">
                    <div style="margin: unset; font-size: 24px;">
                        <b><%=rs("company")%></b>
                    </div>
                    <div style="margin: unset;">
                        <a style="text-decoration: none;" href="<%=rs("website")%>" target="_New" ><%=rs("website")%></a>
                    </div>
                    <div style="margin: unset;">
                        <%=rs("ContactName")%>&nbsp;&nbsp;&nbsp;
                        <a href="mailto:<%=rs("ContactEmail")%>?subject=more-information">Email</a>&nbsp;&nbsp;&nbsp;
                        Telephone: <%=rs("ContactPhone")%>
                    </div>
                    <%If rs("Description") <> "" Then%>
                    <div style="margin: unset; max-width: 800px; padding-bottom: 20px; padding-top: 10px;font-style: italic;">
                        <%=rs("Description")%>
                    </div>
                    <%End If%>
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
                    
                    </div>
                </td>
            </tr>
            <%
            rs.MoveNext
        Loop
        %></table><%
    End If
End If
rs.Close
%> 
<script>
window.addEventListener('message', function (event) {
   if (event.data == "FrameHeight") {
        var body = document.body, html = document.documentElement;
        var height = Math.max(body.scrollHeight, body.offsetHeight,
            html.clientHeight, html.scrollHeight, html.offsetHeight);
        event.source.postMessage({ "FrameHeight": height }, "*");       
    }
});
</script>
