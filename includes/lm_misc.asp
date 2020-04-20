<%
Dim strEventHeader, strEventTypeId, strView, strViewC, intEventTypeId, strSubject
strEventTypeId = Request.QueryString("id")
intEventTypeId = CInt(strEventTypeId)

Select Case strEventTypeId
	Case "3"
		strSelectedMenu = "Share Ideas"
		strEventHeader = "<img src='images/cap_ShareBreakThroughsMy.gif'>"
		strView = "VW_Transformations WHERE Userid = " & sesUserId
		strViewC = "VW_Transformations WHERE classonly = False And Userid <> " & sesUserId
		strSubject = "Idea"
	Case "6"
		strSelectedMenu = "Ask Advice"
		strEventHeader = "<img src='images/cap_questionsMy.gif'>"
		strView = "VW_News WHERE Userid = " & sesUserId
		strViewC = "VW_News WHERE classonly = False And Userid <> " & sesUserId
		strSubject = "Question"
End Select
%>