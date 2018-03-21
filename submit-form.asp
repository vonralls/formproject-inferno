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


dim fs,f
set fs=Server.CreateObject("Scripting.FileSystemObject")
set f=fs.CreateTextFile("c:\Inetpub\contactlog.txt",true)
f.WriteLine(contactName & ',' & contactPhone & ',' & contactEmail & ',' & contactReason & ',' & contactCity & ',' & contactState & ',' & contactMessage)
f.close
set f=nothing
set fs=nothing




%>
