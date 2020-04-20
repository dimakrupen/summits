<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<%
Dim ShowChangePassword, email
ShowChangePassword = False
email = ""
Select Case Request.Form("mode")
	Case "email"
		strSQL = "SELECT [password], class FROM userdata WHERE email = '" & Request.Form("txtUserName") & "'"
		%><!--#include file="includes/rsopen.asp"--><%
		If Not rs.EOF Then
			Dim objMail
			Set objMail = Server.CreateObject("Persits.MailSender")
			objMail.Host = "localhost"
			strSQL = "SELECT moderatorEmail, moderatorName, siteAddress FROM Settings"
			rs2.Open strSQL, oDBConn, 3, 1
			objMail.From = rs2("moderatorEmail")
			objMail.FromName = rs2("moderatorName")
			objMail.AddAddress Request.Form("txtUserName")
			objMail.Subject = "Your " & rs("class") & " password"
			objMail.Body = "Here is your password: " & rs("password") & vbCrLf & vbCrLf '& _
				'"Address: " & rs2("siteAddress")
			rs2.Close
			objMail.Send
			SET objMail = Nothing
			strError = "Password has been sent."
		Else
			strError = "There is no user with email <b>" & Request.Form("txtUserName") & _
				"</b> in the system"
		End If
		rs.Close
	Case "login"
        If Request.Form("newpassword8443") <> "" Then
            strSQL = "SELECT * FROM userdata WHERE email = '" & Request.Form("txtUserName") & "' "
            rs.Open strSQL, oDBConn, 1, 3
            rs("Password") = Request.Form("newpassword8443")
            sesEmail = rs("email")
			sesFirst = rs("first")
			sesLast = rs("last")
			sesUserId = rs("userid")
			sesClass = rs("class")
			If rs("isAdmin") Then sesClass2 = "Admin"
            rs.Update
			rs.Close		
			%><!--#include file="includes/DBClose.asp"--><%
			ResponseRedirect("PastMeetingNotes.asp")
        Else
            If Len(Request.Form("txtUserName")) > 20 Then
                strSQL = "SELECT userid, first, last, email, class, isAdmin FROM userdata " &_
		            "WHERE email = '" & Request.Form("txtUserName") & "' " &_
		            "AND left([Password], 20) = '" & Request.Form("txtPassword") & "' "
            Else
		        strSQL = "SELECT userid, first, last, email, class, isAdmin FROM userdata " &_
		            "WHERE email = '" & Request.Form("txtUserName") & "' " &_
		            "AND [Password] = '" & Request.Form("txtPassword") & "' "
            End If
		    %><!--#include file="includes/rsopen.asp"--><%
		    If Not rs.EOF Then
                If LCase(rs("email")) = LCase(Request.Form("txtPassword")) Or (Len(Request.Form("txtUserName")) > 20 AND InStr(LCase(Request.Form("txtUserName")), LCase(Request.Form("txtPassword"))) = 1 ) Then
                    ShowChangePassword = True
                    email = rs("email")
                    rs.Close
                Else
			        sesEmail = rs("email")
			        sesFirst = rs("first")
			        sesLast = rs("last")
			        sesUserId = rs("userid")
			        sesClass = rs("class")
			        If rs("isAdmin") Then sesClass2 = "Admin"
			        rs.Close		
			        %><!--#include file="includes/DBClose.asp"--><%
			        ResponseRedirect("PastMeetingNotes.asp")
                End If
		    Else
			    rs.Close
			    strError = "Invalid User Name and (or) Password"
		    End If
	    End If
End Select
%>

	<script LANGUAGE="javascript">
<!--
var whitespace = "\t \n\r";
function isEmptyString(s)
{
   	var i;
  	if((s == null) || (s.length == 0)) return true;
  	for(i=0;i < s.length;i++)
  	{
  		var currchar = s.charAt(i);
  		if(whitespace.indexOf(currchar) == -1) return false;
  	}
      return true;
}

function isEmail(n)
{
	if ((n==null) || (n.length==0))	return false;
	if (isEmptyString(n)) return false;
	var i=1;
	var nLength=n.length;
	while((parseInt(i) < parseInt(nLength)) && (n.charAt(parseInt(i)) != '@'))
	{
		i++;
	}
	if ((parseInt(i) >= parseInt(nLength)) || (n.charAt(i)!="@")) 
		return false;	
	else 
		i+=2;
	while((i<nLength) && (n.charAt(i)!="."))
	{
		i++;
	}
	if ((i>=nLength-1) || (n.charAt(i)!="."))
		return false;	
	else 
		return true;		
}

function fnLogin()
{
	if (!isEmail(document.frmMain.txtUserName.value))
	{
		alert("Invalid E-mail Address");
		document.frmMain.txtUserName.focus();
		return false;
	}
	<%If ShowChangePassword = False Then %>
    if (document.frmMain.txtPassword.value == "")
	{
	    alert("Invalid Password");
	    document.frmMain.txtPassword.focus();
	    return false;
	}
	<%Else%>
    if (document.frmMain.newpassword8443.value == "")
	{
	    alert("Invalid Password");
	    document.frmMain.newpassword8443.focus();
	    return false;
	}
	<%End If%>
	document.frmMain.action = 'index.asp'; 
	document.frmMain.mode.value = "login";
	document.frmMain.submit();
}

function fnRegister()
{
	if (!isEmail(document.frmMain.txtNewUserName.value))
	{
		alert("Invalid E-mail Address");
		document.frmMain.txtNewUserName.focus();
		return false;
	}
	if (document.frmMain.txtNewPassword.value == "")
	{
	    alert("Invalid Password");
	    document.frmMain.txtNewPassword.focus();
	    return false;
	}
	
	document.frmMain.action = 'register.asp'; 
	document.frmMain.submit();
}

function fnEmail()
{
	if (!isEmail(document.frmMain.txtUserName.value))
	{
		alert("Enter your E-mail address, please");
		document.frmMain.txtUserName.focus();
		return;
	}
	document.frmMain.action = 'index.asp'; 
	document.frmMain.mode.value = "email";
	document.frmMain.submit();
	
}

//-->
</script>

</head>
<body style="height: 92vh;">
    <% 
Dim strCurrentLogo

If Not IsNull(customLogo) Then
	If customLogo <> "" Then strCurrentLogo = "files/" + customLogo
End If

Dim isShowAudiobook, isShowExecBooks, isShowCourses, isShowAudio
Dim isAskAdvice
If sesUserId > 0 Then
    strSQL = "SELECT ShowAudiobook, ShowExecBooks, ShowCourses, ShowAudio, AskAdviceGroupID, LinkedInUserID FROM Userdata, Settings WHERE userid = " & sesUserId
    rs.Open strSQL, oDBConn, 3, 1
    isShowAudiobook = rs("ShowAudiobook")
    isShowExecBooks = rs("ShowExecBooks")
    isShowCourses = rs("ShowCourses")
    isShowAudio = rs("ShowAudio")
    isAskAdvice = Len(rs("AskAdviceGroupID")) > 0 And Not IsNull(rs("LinkedInUserID"))
    rs.Close 
End If

strCurrentLogo = ""
If Request("GroupName") <> "" Then
    strSQL = "SELECT CustomLogo FROM class WHERE CustomLogo IS NOT NULL AND CustomLogo <> '' AND classcode = '" & Request("GroupName") & "'"
    rs.Open strSQL, oDBConn, 3, 1
    If Not rs.EOF Then
        strCurrentLogo = "files/" & rs("CustomLogo") 
    End If
    rs.Close   
End If
     
%>
<div id="page" style="height: 100%;">
  <!--header-->
  <div id="header">
    <!-- logo-->
      <%If strCurrentLogo = "" Then %>
    <div class="logo">
      <h1><a href="javascript:document.frmMenu.action='default.asp';document.frmMenu.submit();">&nbsp;<span><%=logo %></span> Summit</a></h1>
      <span class="slogan"><%=slogan %></span> 
    </div>
     <%Else %>
     <img src="<%=strCurrentLogo %>" /><br /><span class="slogan"><%=slogan %></span> 
     <%End If %>   
    
    
    <!--/searchform -->
    <div class="clr"></div>

  </div>
    
  <table style="font-size: 16px; border-spacing: 5px; width: 100%; border: 0px solid black; ">
	<tr>
	     
	   <td valign=top bgcolor="#FFFFFF" colspan="2">
            <form name="frmMain" method="post">
            <input type="hidden" name="mode" action="index.asp">


                <br /><br /><br /><br /><br /><br />

								<table class="tblBase">
									<%If strError <> "" Then%>
									<tr>
										<td align="center" colspan="2"><font color="red"><%=strError%></font><br>Login:</td>
									</tr>
									<%End If%>
									
                                    <%If ShowChangePassword = True Then %>
                                    <tr>
										<td align="right">Enter New Password: </td>
										<td align="left"><input type="password" name="newpassword8443" id="newpassword8443" maxlength="70" class="tblBase"><input type="hidden" name="txtUserName" value="<%=email %>"></td>
									</tr>
                                    <%Else %>
									<tr>
										<td align="right">E-Mail: </td>
										<td align="left"><input type="text" name="txtUserName" id="txtUserName" maxlength="70" class="tblBase" value="<%=email%>" ></td>
									</tr>
                                    <tr>
										<td align="right">Password: </td>
										<td align="left"><input type="password" name="txtPassword" maxlength="70" class="tblBase"></td>
									</tr>
                                    <%End If%>
									<tr><td></td>
										<td><input type="submit" name="btnSubmit" value="Enter" class="tblBase" onclick="return fnLogin();">
											<%If ShowChangePassword = False Then %>
                                            &nbsp;&nbsp;&nbsp;<a href="javascript:fnEmail();" class="smallurl">Email Password</a>
                                            <%End If%>
										</td>
									</tr>
                                    <tr>
	</tr>
								</table> 
<center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<a style="color: #ffffff" href="admin/login.asp">admin</a></center>

<!--#include file="includes/footer.asp"-->
<!--#include file="includes/formvars.asp"--></form>
</body>
</html>
<!--#include file="includes/DBClose.asp"-->