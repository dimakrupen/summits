<%@ Language=VBScript %>
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
	parent.document.frmMain.mode.value = "addresource";
	parent.document.frmMain.submit();
}
//-->
</SCRIPT>

</HEAD>
<BODY>
<FORM name=frmMain method=post style="FONT-SIZE: 10pt" onsubmit="return fnAdd();">
URL:<input type="text" name="txtCategory" maxlength="255" value="http://" class="tblBase" style="width: 250px;"><br>
Description: <textarea id=txtDescr name=txtDescr><%=Request.QueryString("desc")%></textarea>
<input type="checkbox" class="i_wo_border" name="cbxMyGroup" CHECKED>Viewable by My Group only
<input type="submit" name="Submit" class="t_input" value="Add">
</FORM>
</BODY>
</HTML>
