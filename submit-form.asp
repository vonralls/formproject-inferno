<%
Dim contactName
Dim contactPhone
Dim contactEmail
Dim contactMessage
Dim contactReason
Dim contactState
Dim contactCity
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

Set myMail = CreateObject("CDO.Message")
myMail.Subject = "Sending email with CDO"
myMail.From = "admin@WIN-297LFKPOP5C"
myMail.To = "von@creativeinferno.com"
'myMail.Bcc = "someoneelse@somedomain.com"
'myMail.Cc = "someoneelse2@somedomain.com"
myMail.TextBody = "This is a final message."
myMail.Send
set myMail = nothing
%>
