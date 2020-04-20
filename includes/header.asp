<%
Dim strCurrentLogo
strCurrentLogo = ""
If Not IsNull(customLogo) Then
	If customLogo <> "" Then strCurrentLogo = "files/" + customLogo
End If

Dim isShowAudiobook, isShowExecBooks, isShowCourses, isShowAudio
Dim isAskAdvice
If sesUserId > 0 Then
strSQL = "SELECT ShowAudiobook, ShowExecBooks, ShowCourses, ShowAudio, AskAdviceGroupID, LinkedInUserID FROM Userdata, Settings WHERE userid = " & sesUserId
If rs.State = 1 Then rs.Close    
rs.Open strSQL, oDBConn, 3, 1
isShowAudiobook = rs("ShowAudiobook")
isShowExecBooks = rs("ShowExecBooks")
isShowCourses = rs("ShowCourses")
isShowAudio = rs("ShowAudio")
isAskAdvice = Len(rs("AskAdviceGroupID")) > 0 And Not IsNull(rs("LinkedInUserID"))
rs.Close 
End If
     

%>
<div id="page">
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
    
  <table style="font-size: 10pt; border-spacing: 5px; width: 1250px; border: 0px solid black; height: 8000px;">
	<tr>
	   <td valign=top style="width: 210px;">
           <form name="frmMenu" method="POST">
            <!--#include file="formvars.asp"-->

            <table class="tableMenu">
                <tr>
                    <td class="menuRow"><img src="images/menu03-pastmeetinglibrary.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='PastMeetingNotes.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Past Meeting Library")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Past Meeting Library") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu02-upcomingmeetings.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_event-invitations.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Upcoming Meetings")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Upcoming Meetings") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu04-keyarticles.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='KeyArticles.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Key Articles")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Key Articles") %></td>
                </tr>
                <%if isShowCourses = True Then %>
                <tr>
                    <td class="menuRow"></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='courses.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Courses")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Courses") %></td>
                </tr>
                <%end if %>
                <tr>
                    <td class="menuRow"><img src="images/menu05-booksummaries.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='BookSummaries.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Book Summaries")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Book Summaries") %></td>
                </tr>
                <%if isShowAudio = True Then %>
                <tr>
                    <td class="menuRow"><img src="images/menu06-audiobooks.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='audiobooks.asp';document.frmMenu.submit();"><%writeLeftItemMenu("AudioBooks")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("AudioBooks") %></td>
                </tr>
                <%end if %>
                <tr>
                    <td class="menuRow"><img src="images/menu07-supersearch.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='SuperSearch.asp';document.frmMenu.submit();"><%writeLeftItemMenu("SuperSearch")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("SuperSearch") %></td>
                </tr>
                <!--<tr>
                    <td class="menuRow"><img src="images/menu08-usefulevents.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_event-usefullevents.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Useful Events")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Useful Events") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu09-sharedfiles.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='sharedfiles.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Shared Files")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Shared Files") %></td>
                </tr>-->
                <%if isAskAdvice = True Then %>
                <tr>
                    <td class="menuRow"><img src="images/menu10-askadvice.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_events.asp?id=6';document.frmMenu.submit();"><%writeLeftItemMenu("Ask Advice")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Ask Advice") %></td>
                </tr>
                <%end if %>
                <tr>
                    <td class="menuRow"><img src="images/menu11-shareideas.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_events.asp?id=3';document.frmMenu.submit();"><%writeLeftItemMenu("Share Ideas")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Share Ideas") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu01-viewmygroup.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_classmates.asp';document.frmMenu.submit();"><%writeLeftItemMenu("View My Group")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("View My Group") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu12-membervisitations.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_event-volunteer.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Request a Mentor")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Request a Mentor") %></td>
                </tr>
                <!--<tr>
                    <td class="menuRow"><img src="images/menu13-usefulresources.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='usefulresources.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Useful Resources")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Useful Resources") %></td>
                </tr>-->
                <tr>
                    <td class="menuRow"><img src="images/menu15-updatemyinfo.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='editprofile.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Update My Info")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Update My Info") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu16-emailpreferences.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='lm_emailpref.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Email Preferences")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Email Preferences") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu17-suggestions.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='suggestions.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Suggestions")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Suggestions") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu18-contactmoderator.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='contactmoderator.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Contact Moderator")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Contact Moderator") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu19-referanewmember.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='referanewmember.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Refer a New Member")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Refer a New Member") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu20-referapresenter.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='referapresenter.asp';document.frmMenu.submit();"><%writeLeftItemMenu("Refer a Presenter")%></a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Refer a Presenter") %></td>
                </tr>
                <tr>
                    <td class="menuRow"><img src="images/menu14-logout.gif" /></td>
                    <td class="menuRowText" nowrap><a class="menuRowTextA" href="javascript:document.frmMenu.action='logout.asp';document.frmMenu.submit();">Log Out</a></td>
                    <td class="menuRow"><%writeLeftItemMenuIcon("Log Out") %></td>
                </tr>
                <tr>
                    <td class="menuRow" colspan="3">&nbsp;</td>
                </tr>
            </table>
           </form>
	   </td> 
	   <td valign=top bgcolor="#FFFFFF" style="width:880px;">