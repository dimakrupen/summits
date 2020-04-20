<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
strSQL = "SELECT Category FROM Categories WHERE id = " & Request.QueryString("id")
%><!--#include file="includes/rsopen.asp"-->
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<LINK href="header.css" type="text/css" rel="stylesheet">
<SCRIPT LANGUAGE=javascript>
<!--
function fnAdd()
{
	if (document.frmMain.txtCategory.value == '')
	{
		alert("Enter Category Name please");
		return false;
	}
	parent.document.frmMain.oldcategory.value = "<%=Request.QueryString("id")%>";
	parent.document.frmMain.category.value = document.frmMain.txtCategory.value;
	parent.document.frmMain.mode.value = "renamecategory";
	parent.document.frmMain.submit();
}
//-->
</SCRIPT>

</HEAD>
<BODY>
<FORM name=frmMain method=post style="FONT-SIZE: 10pt" onsubmit="return fnAdd();">
Category Name:
<input type="text" name="txtCategory" maxlength="50" class="tblBase" style="width: 250px;"
	value="<%=rs("category")%>">
<input type="submit" name="Submit" class="t_input" value="Rename">
<input type="button" name="Submit" class="t_input" value="Cancel"
onclick="parent.document.all['ifHidden'].src = '_empty.htm';">
</FORM>
</BODY>
</HTML>
<%
rs.Close
%>
<!--#include file="includes/DBClose.asp"-->
