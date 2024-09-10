

<%@ CodePage=65001 Language="VBScript"%> 
<%  
Response.CodePage = 65001 'needed so £ signs are stored properlin sql server(!)
Response.CharSet = "utf-8" 'needed so £ signs are stored properlin sql server(!)

'For Each item In Request.Form
'    Response.Write (item & ":"&  Request.Form(item) & "<br>") 
'Next   
'response.end

%>
<!--#include file="connection.asp"-->
<% sub pagecontent () %>
 
  <!-- Text content -->
              <div class="text-content">
                <div class="container p-0">
                    <div class="row m-0">
                        <div class="col-lg-8">
                            <div class="px-3">

<H1 style="color:#8e1915">Your Latent Defects Quotation</H1>        
<%
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.ConnectionString = CONNECTIONSTRING
objConn.Open
'                
quote_ref = generate_quote_ref()
spelled_out = decode_quote_ref(quote_ref)

%>
<hr>
<% 
raw = ""
For Each item In Request.Form
    raw = raw & item & ": " & Request.Form(item) & "<BR>"
Next   %>
<%' raw %>
<% 
noproviders = 0
Randomize
noproviders = Int((4-1+1)*Rnd+1)
'
estimate_range = estimate(Request.Form("total_buld"), Request.Form("cover_type")) 
'
%>
<h2>Matched with <b><%= noproviders %></b> Warranty Provider(s)</h2>
<h2>Estimated Premium Range
<br><%= estimate_range %></h2>

<hr>

<h2>Your Reference: <b><%= quote_ref %></b></h2>

<h3>(<%= spelled_out %>)</h3>

<br><h3>Call us now on <b>03300 43 42 45</b> For More Details</h3>

<%
' lpc_GetDateTimeStamp ("", "", "", "", "", "", true, true)
 sql = "INSERT INTO requests (datetime, ipaddress, quoteref, rawtext, estimate) VALUES ('" & lpc_GetDateTimeStamp ("", "", "", "", "", "", true, true) & "', '" & Request.ServerVariables("REMOTE_ADDR") & "', '" & quote_ref & ":" & spelled_out & "', N'" & replace(raw, "'", "''")  & "', N'" & estimate_range & "')"
  SET ORS=objConn.execute(sql)
  '
  '
%>

<!--<p>Welcome to te website of Latent Defects, a UK building warranty broker and trading name of Finance Delta Ltd. an FCA registered insurance broker. By using our website, you agree to comply with and be bound by the following terms and conditions. Please read these terms carefully before using our site. If you do not agree with any part of these terms, you should not use our website.</p>

<p><b style="color:#8e1915">1. Definitions</b></p>
<p>1.1 "Company" refers to Finance Delta, trading as "Latent Defects", registered at 105 Farringdon Road, London EC1R 3BU.<br>
1.2 "Website" refers to www.latentdefects.co.uk.<br>
1.3 "User" refers to any individual or entity accessing our Website.<br>
1.4 "Services" refers to the brokerage services provided by the Company, including but not limited to building warranty brokerage.<br></p>

<p><b >By using our Website, you acknowledge that you have read, understood, and agree to be bound by these terms and conditions.</b></p>
<p><b >Last Updated: May 2024</b></p>-->
                            </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="px-3">
                            <div class="about-img">
                              <img src="assets/img/new-developments-side-1.jpg" alt="new developments">
                            </div>
                          </div>
                          <br>
                           <div class="px-3">
                            <div class="about-img">
                              <img src="assets/img/new-developments-side-2.jpg" alt="new developments">
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
              </div>
              <!-- End Text content -->
<% 
'
set oCdoMsg = server.createobject("CDO.Message")
'
oCdoMsg.to = "bonecorp@gmail.com;simon@financedelta.com;"
oCdoMsg.from =  """Latent Defects Website"" <website@latentdefects.co.uk"
oCdoMsg.Subject = "FIDx - LDE - Quote Request - " & replace(replace(estimate_range, "<b>", ""), "</b>", "")

oCdoMsg.HTMLBody =raw
'oCdoMsg.HTMLBody
strMSSchema = "http://schemas.microsoft.com/cdo/configuration/"
Set oCdoConfg = Server.CreateObject("CDO.Configuration")
oCdoConfg.Fields.Item(strMSSchema & "sendusing") = 2
oCdoConfg.Fields.Item(strMSSchema & "smtpserver") = "smtp.everlytic.net" '"mailer.taxxa.co.uk"
oCdoConfg.Fields.Item(strMSSchema & "smtpserverport") = 25
'
oCdoConfg.Fields.Item(strMSSchema & "sendusername") = "21.simon57245"
oCdoConfg.Fields.Item(strMSSchema & "sendpassword") = "1bJIBEmm2ORlGU6cDxVvs2wkxg0rW5qp_21" ' 1bJIBEmm2ORlGU6cDxVvs2wkxg0rW5qp_21 // 1bJIBEmm2ORlGU6cDxVvs2wkxg0rW5qp_21
oCdoConfg.Fields.Item(strMSSchema & "smtpauthenticate") = true
'
oCdoConfg.Fields.Update 
Set oCdoMsg.Configuration = oCdoConfg
'
oCdoMsg.send
'
set oCdoMsg = nothing
set oCdoConfg = nothing
'
end sub



 %>
<!--#include file="quote_functions.asp"-->
<!--#include file="template.asp"-->