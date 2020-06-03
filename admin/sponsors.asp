<!--#include file="../includes/aspheader.asp"-->
<!--#include file="adminsecurity.asp"-->
<!--#include file="../includes/DBOpen.asp"-->
<%
Dim sClass
If Request.Form("selClass") <> "" Then
	sClass = Request.Form("selClass")
End If

Dim strErr
Dim placeToUpdate, groupToUpdate
Select Case Request.Form("btnSubmit") 
	Case "↑"
		strSQL = "SELECT Place, [Group] FROM Sponsors WHERE ID = " & Request.Form("RecordID") 
		rs.Open strSQL, oDBConn, 1, 3
		placeToUpdate = CInt(rs("Place")) - 1
		groupToUpdate = rs("Group")
		rs("Place") = placeToUpdate
		rs.Update
		rs.Close
		strSQL = "UPDATE Sponsors SET Place = Place + 1 WHERE [Group] = '" & groupToUpdate & "' AND Place = " & placeToUpdate & " AND ID <> " & Request.Form("RecordID") 
		rs.Open strSQL, oDBConn, 1, 3
	Case "↓"
		strSQL = "SELECT Place, [Group] FROM Sponsors WHERE ID = " & Request.Form("RecordID") 
		rs.Open strSQL, oDBConn, 1, 3
		placeToUpdate = CInt(rs("Place")) + 1
		groupToUpdate = rs("Group")
		rs("Place") = placeToUpdate
		rs.Update
		rs.Close
		strSQL = "UPDATE Sponsors SET Place = Place - 1 WHERE [Group] = '" & groupToUpdate & "' AND Place = " & placeToUpdate & " AND ID <> " & Request.Form("RecordID") 
		rs.Open strSQL, oDBConn, 1, 3
	Case "BACK"
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("sponsors.asp") 
	Case "Edit Sponsor"
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("sponsors.asp?show=" & Request.Form("RecordID")) 
	Case "Delete Sponsor"
		strSQL = "DELETE FROM SponsorsResources WHERE SponsorID = " & Request.Form("RecordID") 
		%><!--#include file="../includes/rsadd.asp"--><%
		strSQL = "DELETE FROM Sponsors WHERE ID = " & Request.Form("RecordID") 
		%><!--#include file="../includes/rsadd.asp"--><%
	Case "Delete Resource"
		strSQL = "DELETE FROM SponsorsResources WHERE ID = " & Request.Form("RecordID") 
		%><!--#include file="../includes/rsadd.asp"--><%
	Case "Add Resource"
		strSQL = "SELECT * FROM SponsorsResources WHERE -1 = 0"
		%><!--#include file="../includes/rsadd.asp"--><%
		rs.AddNew
		rs("SponsorID") = CInt(Request.QueryString("show"))
		rs("ResourceType") = Request.Form("txtResourceType")
		rs("ResourceTitle") = Request.Form("txtResourceTitle")
		rs("ResourceLink") = Request.Form("txtResourceLink")
		If Cstr(Request.Form("FileName2")) <> "" Then rs("ResourceFile") = Request.Form("FileName2")
		
		rs.Update
		rs.Close
	Case "ADD" 
		Dim place
		place = 1
		strSQL = "SELECT count(1) as cnt FROM Sponsors WHERE [Group] = '" & Request.Form("txtGroup") & "'"
		rs.Open strSQL, oDBConn, 3, 1
			If Not rs.EOF Then
				If rs("cnt") > 1 Then
					place = CInt(rs("cnt")) + 1
				End If
			End If
		rs.Close

		strSQL = "SELECT * FROM Sponsors WHERE -1 = 0"
		%><!--#include file="../includes/rsadd.asp"--><%
		rs.AddNew
		rs("Group") = Request.Form("txtGroup")
		rs("Company") = Request.Form("txtCompany")
		If Cstr(Request.Form("FileName")) <> "" Then rs("Logo") = Request.Form("FileName")
		If (Request.Form ("txtWidth") <> "") Then
			rs("LogoW") = CInt(Request.Form ("txtWidth"))
		End If
		If (Request.Form ("txtHeight") <> "") Then
			rs("LogoH") = CInt(Request.Form ("txtHeight"))
		End If
		
		rs("Website") = Request.Form("txtSite")
		rs("Description") = Request.Form ("txtDescription")
		rs("ContactName") = Request.Form("txtContactName")
		rs("ContactEmail") = Request.Form ("txtContactEmail")
		rs("ContactPhone") = Request.Form("txtContactPhone") 
		rs("Place") = place
		
		rs.Update
		Dim newID
		newID = rs("ID")
		rs.Close
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("sponsors.asp?show=" & newID) 
	Case "UPDATE" 
		strSQL = "SELECT * FROM Sponsors WHERE id = " & Request.QueryString("show")
		%><!--#include file="../includes/rsadd.asp"--><%
		rs("Company") = Request.Form("txtCompany")
		If Cstr(Request.Form("FileName")) <> "" Then rs("Logo") = Request.Form("FileName")
		If (Request.Form ("txtWidth") <> "") Then
			rs("LogoW") = CInt(Request.Form ("txtWidth"))
		End If
		If (Request.Form ("txtHeight") <> "") Then
			rs("LogoH") = CInt(Request.Form ("txtHeight"))
		End If
		
		rs("Website") = Request.Form("txtSite")
		rs("Description") = Request.Form ("txtDescription")
		rs("ContactName") = Request.Form("txtContactName")
		rs("ContactEmail") = Request.Form ("txtContactEmail")
		rs("ContactPhone") = Request.Form("txtContactPhone") 
		Dim useGroup
		useGroup = rs("Group")
		rs.Update
		rs.Close
		%><!--#include file="../includes/DBClose.asp"--><%
		Response.Redirect("sponsors.asp?useGroup=" & useGroup) 
End Select

%>
<html>
<head>
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="header.css" type="text/css" rel="stylesheet"><script LANGUAGE="javascript">
<!--
function Validate() {
    document.all["FileName"].value = window.frames[0].window.document.frmMain.file.value;
	document.all["FileName2"].value = window.frames[1].window.document.frmMain.file.value;
	return true;
}


function fnMarkRecord(id) {
	document.all["RecordID"].value = id;
}

function viewLogo(logo) {
	window.open('../files/' + logo, '_blank');
}

function groupChanged(group) {
	document.frmMain.txtGroup.value = group;
	document.frmMain.submit();
}
//-->
</script>

</head>
<body vlink="blue">
<!--#include file="header.asp"-->
<form name="frmMain" method="POST" onsubmit="return Validate();">
	<input type="hidden" name="mode" />
	<input type="hidden" name="FileName" id="FileName">
	<input type="hidden" name="FileName2" id="FileName2">
	<input type="hidden" name="RecordID" id="RecordID">

	<div style="color: gray; font-size: 16pt; font-weight: 600;">ADMIN: Sponsors</div>
	<hr>
	
	<%If Request.QueryString("show") = "" Then%>
	<table>
		<tr>
			<td>Group:</td>
			<td>
			<select name="txtGroup" class="tblBase" onchange="groupChanged(this.value)">
			<%
			sClass = Request.Form("txtGroup")
			If sClass = "" And Request.QueryString("useGroup") <> "" Then
				sClass = Request.QueryString("useGroup")
			End If
			strSQL = "SELECT classcode FROM class ORDER BY classcode"
			%><!--#include file="../includes/rsopen2.asp"--><%
			Do While Not rs2.EOF
				If sClass = "" Then
					sClass = rs2("classcode")
				End If
				%><option <%=fnGetSelected(sClass = rs2("classcode"))%> value="<%=rs2("classcode")%>"><%=rs2("classcode")%></option><%
				rs2.MoveNext
			Loop
			rs2.Close
			%>
			</select>
			</td>
		</tr>
	</table>
	<br>
	<%	
		strSQL = "SELECT * FROM Sponsors WHERE [Group] = '" & sClass & "' ORDER BY Place"
		rs.Open strSQL, oDBConn, 3, 1
		If Not rs.EOF Then
			%>&nbsp;<u>Current Sponsors for <%=sClass%>:</u>
			<table>
			<tr>
				<td><b>Company</b></td>
				<td><b>Website</b></td>
				<td><b>ContactName</b></td>
				<td><b>ContactEmail</b></td>
				<td><b>ContactPhone</b></td>
				<td><b></b></td>
			</tr>
			<%
			Dim recordCount
			recordCount = rs.recordCount
			Do While Not rs.EOF
				%>
				<tr>
					<td style="vertical-align: top;">
						<%=rs("Company")%>
					</td>
					<td style="vertical-align: top;">
						<%=rs("Website")%>
					</td>
					<td style="vertical-align: top;">
						<%=rs("ContactName")%>
					</td>
					<td style="vertical-align: top;">
						<%=rs("ContactEmail")%>
					</td>
					<td style="vertical-align: top;">
						<%=rs("ContactPhone")%>
					</td>
					<td style="vertical-align: top; text-align: center;">
						<%If rs("Place") <> 1 Then%>
						<input type="submit" name="btnSubmit" onclick="fnMarkRecord('<%=rs("ID")%>');" value="↑">
						<%End If%>
					
						<%If rs("Place") < recordCount Then%>
						<input type="submit" name="btnSubmit" onclick="fnMarkRecord('<%=rs("ID")%>');" value="↓">
						<%End If%>
					</td>
					<td>
						<input type="submit" name="btnSubmit" onclick="fnMarkRecord('<%=rs("ID")%>');" value="Edit Sponsor">
						<input type="submit" name="btnSubmit" onclick="fnMarkRecord('<%=rs("ID")%>');return confirm('Are you sure you want to delete this sponsor?')" value="Delete Sponsor">
					</td>
				</tr>
				<%
				rs.MoveNext
			Loop
			%></table><%
		End If
		rs.Close
	%>

	<%End If%>
	<br><br>
	<div style="border: 1px solid blue;">
		<%
		Dim txtCompany, txtSite, txtDescription, txtContactName, txtContactEmail, txtContactPhone, txtWidth, txtHeight, txtLogo
		If Request.QueryString("show") <> "" Then
			strSQL = "SELECT * FROM Sponsors WHERE ID = " & Request.QueryString("show")
			%><!--#include file="../includes/rsopen.asp"-->
			<%
			If Not rs.EOF Then
				txtCompany = rs("Company")
				txtLogo = rs("Logo")
				txtSite = rs("Website")
				txtDescription = rs("Description")
				txtContactName = rs("ContactName")
				txtContactEmail = rs("ContactEmail")
				txtContactPhone = rs("ContactPhone")
				txtWidth = rs("LogoW")
				txtHeight = rs("LogoH")
			End If
			rs.Close
		%>
		<h4>Edit Sponsor:</h4>
		<%Else%>
		<h4>Add Sponsor:</h4>
		<%End If%>
		<table>
			<tr>
				<td>
					Company: 
				</td>
				<td colspan=2>
					<input type="text" id="txtCompany" name="txtCompany" maxlength="255" value="<%=txtCompany%>">
				</td>
			</tr>
			<tr>
				<td>
					Logo:
				</td> 
				<td>
					<iframe src="../_upload.asp?file=<%=txtLogo%>" id="ifAttach" name="ifAttach" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="23px"></iframe>
				</td>
				<td>
					<%If Request.QueryString("show") <> "" Then%>
					<input type="button" name="btnView" value="VIEW" onclick="viewLogo('<%=txtLogo%>');">
					<%End If%>
				</td>
			</tr>
			<tr>
				<td>
					Force size (optional)
				</td>
				<td colspan=2>
					Width: <input type="text" style="width: 40px;" id="txtWidth" name="txtWidth" maxlength="4" value="<%=txtWidth%>">px
					Height: <input type="text" style="width: 40px;" id="txtHeight" name="txtHeight" maxlength="4" value="<%=txtHeight%>">px
				</td>
			</tr>
			<tr>
				<td>
					Site (include http): 
				</td>
				<td>
					<input type="text" id="txtSite" name="txtSite" maxlength="255" value="<%=txtSite%>">
				</td>
			</tr> 
			<tr>
				<td style="vertical-align: top;">
					Description: 
				</td>
				<td colspan=3> 
					<textarea id="txtDescription" style="WIDTH: 342px; HEIGHT: 104px" name="txtDescription" rows="5" cols="37"><%=txtDescription%></textarea>
				</td>
			</tr>
			<tr>
				<td>
					Contact Name: 
				</td>
				<td colspan=2>
					<input type="text" id="txtContactName" name="txtContactName" maxlength="255" value="<%=txtContactName%>">
					Email:  
					<input type="text" id="txtContactEmail" name="txtContactEmail" maxlength="255" value="<%=txtContactEmail%>">
					Phone: 
					<input type="text" id="txtContactPhone" name="txtContactPhone" maxlength="255" value="<%=txtContactPhone%>">
				</td> 
			</tr> 
		</table>
		<%If Request.QueryString("show") <> "" Then
			strSQL = "SELECT * FROM SponsorsResources WHERE SponsorID = " & Request.QueryString("show")
			%><!--#include file="../includes/rsopen2.asp"-->
			<%
			If Not rs2.EOF Then
				%>
				<br>
				&nbsp;<u>Current Resources:</u>
				<table><%
				Do While Not rs2.EOF
					%>
					<tr>
						<td style="vertical-align: top;">
							<%=rs2("ResourceType")%>
						</td>
						<td style="vertical-align: top;">
							<%=rs2("ResourceTitle")%>
						</td>
						<td style="vertical-align: top;">
							<%=rs2("ResourceLink")%>
						</td>
						<td style="vertical-align: top;">
							<%=rs2("ResourceFile")%>
						</td>
						<td style="vertical-align: top;">
							<input type="submit" name="btnSubmit" onclick="fnMarkRecord('<%=rs2("ID")%>');return confirm('Are you sure you want to delete this Resource?')" value="Delete Resource">
						</td>
					</tr>
					<%
					rs2.MoveNext
				Loop
				%></table><%
			End If
			rs2.Close
		%><br>
		<table>
			<tr>
				<td colspan="5"><u>Add Resource:</u></td>
			</tr>
			<tr>
				<td>
					Type: <input type="text" id="txtResourceType" name="txtResourceType" maxlength="255" >
				</td>
				<td>
					Title: <input type="text" id="txtResourceTitle" name="txtResourceTitle" maxlength="255" >
				</td>
				<td>
					Link: <input type="text" id="txtResourceLink" name="txtResourceLink" maxlength="255" > or 
				</td>
				<td>
					<iframe src="../_upload.asp?file=" id="ifResource" name="ifResource" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" width="350px" height="23px"></iframe>
				</td>
				<td>
					<input type="submit" name="btnSubmit" value="Add Resource">
				</td>
			</tr>
		</table>
		
		<br><br>
		<input type="submit" name="btnSubmit" value="UPDATE">
		<input type="submit" name="btnSubmit" value="BACK">
		<%Else%>
		<input type="submit" name="btnSubmit" value="ADD">
		<%End If%>
	</div>

	 
<br><br>

	
</form>
</body>
</html>
<!--#include file="../includes/DBClose.asp"-->