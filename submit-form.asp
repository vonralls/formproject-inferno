<%
Dim contactName
Dim contactPhone
Dim contactEmail
Dim contactMessage
Dim contactReason
Dim contactState
Dim contactCity
Dim emailBody
contactName = Request.form("contactName")
contactPhone = Request.form("contactPhone")
contactEmail = Request.form("contactEmail")
contactMessage = Request.form("contactMessage")
contactReason = Request.form("contactReason")
contactState = Request.form("contactState")
contactCity = Request.form("contactCity")
contactDataCheck = Request.form("contactDataCheck")
if contactDataCheck = 5678 Then
        dim fs
        dim f
        set fs=Server.CreateObject("Scripting.FileSystemObject")
        set f=fs.OpenTextFile("c:\inetpub\wwwroot\contactlog.txt",8, true)
        f.WriteLine(contactName & "," & contactPhone & "," & contactEmail & "," & contactReason & "," & contactCity & "," & contactState & "," & contactMessage)
        'f.WriteLine(contactName)
        f.close
        set f=nothing
        set fs=nothing
        emailBody = "<b>Name: </b>" & contactName & "<br>" & "<b>Phone Number: </b>" & contactPhone & "<br>" & "<b>Email: </b>" & contactEmail & "<br>" & "<b>Reason: </b>" & contactReason & "<br>" & "<b>City: </b>" & contactCity & "<br>" & "<b>State: </b>" & contactState & "<br>" & "<b>Message: </b><br>" & contactMessage
        Set myMail = CreateObject("CDO.Message")
        myMail.Subject = "Message from StaffLine website"
        myMail.From = "admin@WIN-297LFKPOP5C"
        myMail.To = "von@creativeinferno.com"
        'myMail.BodyFormat = 0
        'myMail.Bcc = "someoneelse@somedomain.com"
        'myMail.Cc = "someoneelse2@somedomain.com"
        myMail.HTMLBody = emailBody
        On Error Resume Next
        myMail.Send
        If Err.Number <> 0 Then
		      Response.WriteLine("There has been an error. Please contact the administrator")
	      end if
        set myMail = nothing
        Response.Redirect "thank-you.html"
Else

 End If
%>
