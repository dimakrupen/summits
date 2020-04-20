<%@ Language=VBScript %>
<%
%>
<HTML>
<HEAD>
<SCRIPT LANGUAGE=javascript>
<!--
function fnAdd()
{
	if (document.frmMain.txtCategory.value == '')
	{
		alert("Enter Category Name please");
		return false;
	}
	parent.document.frmMain.category.value = document.frmMain.txtCategory.value;
	parent.document.frmMain.mode.value = "addcategory";
	parent.document.frmMain.submit();
}
//-->
</SCRIPT>

</HEAD>
<BODY>
<FORM name=frmMain method=post style="FONT-SIZE: 10pt" onsubmit="return fnAdd();">
Category Name:
<input type="text" name="txtCategory" maxlength="50" class="tblBase" style="width: 250px;">
<input type="submit" name="Submit" class="t_input" value="Add">
<input type="button" name="Submit" class="t_input" value="Cancel"
onclick="parent.document.all['ifHidden'].src = '_empty.htm';">
</FORM>
</BODY>
</HTML>
