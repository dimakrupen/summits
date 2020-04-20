<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<img src="images/cap_userinfo.gif">
<%
strSQL = "SELECT * FROM UserData WHERE UserId = " & Request.QueryString("userid")
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<table width="100%" style="font-size: 10pt">
		<tr>
			<td>Name</td>
			<td><%=rs("first")%>&nbsp;<%=rs("last")%></td>
		</tr>
		<tr>
			<td>Company</td>
			<td><%=rs("Company")%></td>
		</tr>
		<tr>
			<td>Title</td>
			<td><%=rs("title")%></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><%=rs("address")%></td>
		</tr>
		<tr>
			<td>City</td>
			<td><%=rs("City")%></td>
		</tr>
		<tr>
			<td>State</td>
			<td><%=rs("State")%></td>
		</tr>
		<tr>
			<td>Postal/Zip</td>
			<td><%=rs("zip")%></td>
		</tr>
		<tr>
			<td>Country</td>
			<td><%=rs("Country")%></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><%=rs("email")%></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><%=rs("Cellphone")%></td>
		</tr>
		<tr>
			<td>Group</td>
			<td><%=rs("class")%></td>
		</tr>
	<%
	Dim bio
	If Not IsNull(rs("bio")) Then bio = Replace(rs("bio"), vbNewLine, "<br>")
	%>
		<tr>
			<td>Bio</td>
			<td><%=bio%></td>
		</tr>
	<%

	If Not IsNull(rs("JobProfile")) Then bio = Replace(rs("JobProfile"), vbNewLine, "<br>")
	%>
		<tr>
			<td>Job Profile/Background</td>
			<td><%=bio%></td>
		</tr>
	<%

	If Not IsNull(rs("Interests")) Then bio = Replace(rs("Interests"), vbNewLine, "<br>")
	%>
		<tr>
			<td>Areas of Interest and Expertise</td>
			<td><%=bio%></td>
		</tr>
	</table><br>
	<%
End If

rs.Close
strSQL = "SELECT * FROM VW_Givings WHERE date >= Now() And ClassOnly = False And UserId = " & Request.QueryString("userid")
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<h5>Member Visitations</h5>
	<table width="100%" style="font-size: 10pt">
		<tr>
			<th>Visitation</th>
			<th>Date</th>
		</tr>
	<%
	Do While Not rs.EOF
	%>
		<tr style="color: black">
			<td wrap><%=rs("description")%></td>
			<td wrap><%=formatDate(rs("date"), null, null)%></td>
		</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table>
	<%
End If
rs.CLose

strSQL = "SELECT * FROM VW_Transformations WHERE date >= Now() And ClassOnly = False And UserId = " & Request.QueryString("userid")
%><!--#include file="includes/rsopen.asp"--><%
If Not rs.EOF Then
	%>
	<h5>Ideas</h5>
	<table width="100%" style="font-size: 10pt">
		<tr>
			<th>Idea</th>
			<th>Date</th>
		</tr>
	<%
	Do While Not rs.EOF
	%>
		<tr style="color: black">
			<td wrap><%=rs("description")%></td>
			<td wrap><%=formatDate(rs("date"), null, null)%></td>
		</tr>
	<%
		rs.MoveNext
	Loop
	%>
	</table>
	<%
End If
rs.CLose

%>
<input type="button" name="btnBack" value="Back" onclick="window.history.back(-2);" class="tblBase">
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->