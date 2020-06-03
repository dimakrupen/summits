<table style="padding-top: 20px;">
<%
strSQL = "SELECT * FROM Sponsors WHERE [Group] = '" & strGroup & "' ORDER BY Place"
rs.Open strSQL, oDBConn, 3, 1
If Not rs.EOF Then
    %><table>
    <tr>
        <td colspan="2" style="font-size: 24px; font-style: italic; font-weight: 600;">Our Sponsors</td>
    </tr>
    <%
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
                <div style="margin: unset; font-size: 24px;">
                    <a style="text-decoration: none;" href="<%=rs("website")%>" target="_New" ><b><%=rs("company")%></b></a>
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
        <tr>
            <td colspan="2" style="padding-top: 20px;">&nbsp;</td>
        </tr>
        <%
        rs.MoveNext
    Loop
    %></table><%
End If
rs.Close
%> 
