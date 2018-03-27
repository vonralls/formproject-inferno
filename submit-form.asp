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
response.write(contactName & "<br>" & contactPhone)
dim fs
dim f
set fs=Server.CreateObject("Scripting.FileSystemObject")
set f=fs.OpenTextFile("c:\inetpub\wwwroot\contactlog.txt",8, true)
f.WriteLine(contactName & "," & contactPhone & "," & contactEmail & "," & contactReason & "," & contactCity & "," & contactState & "," & contactMessage)
'f.WriteLine(contactName)
f.close
set f=nothing
set fs=nothing
emailBody = contactName & "<br>" & contactPhone & "<br>" & contactEmail & "<br>" & contactReason & "<br>" & contactCity & "<br>" & contactState & "<br>" & contactMessage
Set myMail = CreateObject("CDO.Message")
myMail.Subject = "Sending email with CDO"
myMail.From = "admin@WIN-297LFKPOP5C"
myMail.To = "von@creativeinferno.com"
'myMail.BodyFormat = 0
'myMail.Bcc = "someoneelse@somedomain.com"
'myMail.Cc = "someoneelse2@somedomain.com"
myMail.HTMLBody = emailBody
myMail.Send
set myMail = nothing
%>
