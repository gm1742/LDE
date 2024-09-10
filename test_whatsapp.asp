<%

'curl -i -X POST `
'  https://graph.facebook.com/v16.0/100857612987461/messages `
'  -H 'Authorization: Bearer EAAKvKkpzRZB0BAC3VuKAvpEeZACHZBAbM6z4sLhNwH2O2F9cKPFxfHscP1FBXx1JCELbTFCdm06dxgpCZCJQIzdCj0wpXJ6foZCEZA5CwwArYccoubkrJCHWFYjDiQdz0Hsh4V7nme8vGdZBTuDUe8MNpZAWDYt7kzOE8lc6ZA53NGpopMMnF1uJz09RftC37oopc9QqKEDwAfgZDZD' `
'  -H 'Content-Type: application/json' `
'  -d '{ \"messaging_product\": \"whatsapp\", \"to\": \"447917272616\", \"type\": \"template\", \"template\": { \"name\": \"hello_world\", \"language\": { \"code\": \"en_US\" } } }'

	Set xmlcommand = CreateObject("Msxml2.ServerXMLHTTP.3.0")
	'
	xmlcommand.open "POST", "https://graph.facebook.com/v16.0/100857612987461/messages", false
	xmlcommand.setRequestHeader "Authorization", "Bearer EAAKvKkpzRZB0BAC3VuKAvpEeZACHZBAbM6z4sLhNwH2O2F9cKPFxfHscP1FBXx1JCELbTFCdm06dxgpCZCJQIzdCj0wpXJ6foZCEZA5CwwArYccoubkrJCHWFYjDiQdz0Hsh4V7nme8vGdZBTuDUe8MNpZAWDYt7kzOE8lc6ZA53NGpopMMnF1uJz09RftC37oopc9QqKEDwAfgZDZD"
	xmlcommand.setRequestHeader "Content-Type", "application/json"
	'
	'strjson = "{""messaging_product"": ""whatsapp"", ""to"": ""447917272616"", ""type"": ""text"", ""text"": {""preview_url"": false, ""body"": ""Again new case""}}"
	strjson = "{""messaging_product"": ""whatsapp"", ""to"": ""447917272616"", ""type"": ""template"", ""template"": {""name"": ""hello_world"", ""language"": {""code"": ""en_US"" } } }"

   	xmlcommand.send strjson
   	responsetext = xmlcommand.responseText
   	'
   	response.write(responsetext)	


%>
