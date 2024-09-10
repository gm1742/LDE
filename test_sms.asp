<% Server.ScriptTimeout = 100000 %>
<!--#include file="connection.asp"-->
<%

'	curl --location --request POST 'https://api.thesmsworks.co.uk/v1/message/send' --header 'Authorization: YOUR JWT GOES HERE' --header 'Content-Type: application/json' --header 'Content-Type: text/plain' --data-raw '{
'			"sender": "",
'			"destination": "",
'			"content": "",
'			"tag": ""
'	}'

Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP.3.0")

  '"token": "JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJiN2MyMTM1ZC01NmMxLTRmZjQtYWI2ZS0zM2Q5OTlkOGNmNTIiLCJzZWNyZXQiOiIyNmMyMzI5Y2ExZGMyZjZiM2U5NzZiMDdlN2Q2MDU1Y2NkZTljZTgxMmNjMjI4MzM2YjQ3ODFjYmU1ZWFlNjE2IiwiaWF0IjoxNjQ0MTYyMjIwLCJleHAiOjI0MzI1NjIyMjB9.MCFVSgQpz9_mUgob3h-9VhxlobgPIu_70jxram2gdCI"

objXmlHttp.Open "POST", "https://api.thesmsworks.co.uk/v1/message/send", False, "", ""
objXmlHttp.SetRequestHeader "Authorization", "JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJlMTk3MDlkOC1lYTM0LTRkZGEtODg0Zi1hODc1YTJkODg0YWQiLCJzZWNyZXQiOiI3NTA0N2I0NThkNTljOGU1NWE3ODZiMDcwMTY3OTE3Yzc0MTdmODhjNjMxYWEzNzY0ZTdlNjUwMzg2YmNjNDI4IiwiaWF0IjoxNjgxMDM4NTQyLCJleHAiOjI0Njk0Mzg1NDJ9.eqC2tqbW-a3Ofx0BZ7jLss2yQ1hpHFHb7vt1yDbhbtE"
objXmlHttp.SetRequestHeader "Content-Type", "application/json"

tonumber = "447917272616" ' simon
'tonumber = "447971789952" ' pete
tonumber = "447799552627" 'carly

message = "{"
message = message & "			""sender"": ""UK Govt"","
'message = message & "			""sender"": ""Airtel"","
message = message & "			""destination"": """ & tonumber & ""","
'message = message & "			""content"": ""Thank You For Your Order. Your Internet Will be Upgraded To 3G Tomorrow."""
message = message & "      ""content"": ""Public Health Warning: Buy Simon Bone Easter Egg ASAP"""
'message = message & "			""content"": ""New Case Submitted Through Website, GDV 23m, Units 220"""
message = message &	"}"

objXmlHttp.Send message

'send the json string to the API server
'objXmlHttp.Send ""sender": "",	"destination": "","content": "","tag": """

'If objXmlHttp.Status = 200 Then
    ASPPostJSON = CStr(objXmlHttp.ResponseText)
'end if

'return the response from the API server
Response.write("resp:" & ASPPostJSON)
Set objXmlHttp = Nothing

response.end

%>