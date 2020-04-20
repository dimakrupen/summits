<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
strSQL = "SELECT * FROM SharedStuff WHERE id = " & Request.QueryString("id")
%><!--#include file="includes/rsopen.asp"-->
<HTML>
<HEAD>
<SCRIPT LANGUAGE=javascript>
<!--
function fnAdd()
{
	if (document.frmMain.txtCategory.value == '')
	{
		alert("Enter Resource URL please");
		return false;
	}
	else
	{
		if (document.frmMain.txtCategory.value.search("http://") != 0)
		{
			alert("Invalid Resource URL (must be started from 'http://')");
			return false;
		}
	}
	if (document.frmMain.txtDescr.value == '')
	{
		alert("Enter Resource Description please");
		return false;
	}
	parent.document.frmMain.newfile.value = document.frmMain.txtCategory.value;
	parent.document.frmMain.newfiledesc.value = document.frmMain.txtDescr.value;
	parent.document.frmMain.oldcategory.value = <%=Request.QueryString("id")%>;
	if (document.frmMain.cbxMyGroup.checked) parent.document.frmMain.mygrouponly.value = "True";
	parent.document.frmMain.mode.value = "editresource";
	parent.document.frmMain.submit();
}
//-->
</SCRIPT>
</HEAD>
<BODY>
<FORM name=frmMain method=post encType=multipart/form-data style="font-size: 10pt" >
URL:<input type="text" name="txtCategory" maxlength="255" value="<%=rs("filename")%>" class="tblBase" style="width: 250px;"><br>
Description: <textarea id=txtDescr name=txtDescr><%=rs("description")%></textarea><br>
<input type="checkbox" class="i_wo_border" name="cbxMyGroup" <%If rs("mygrouponly") Then%>CHECKED<%End If%>>Viewable by My Group only
<input type="button" name="Submit" class="t_input" value="Submit"
onclick="fnAdd();">
</FORM>
<%rs.Close%>
</BODY>
</HTML>
<!--#include file="includes/DBClose.asp"-->