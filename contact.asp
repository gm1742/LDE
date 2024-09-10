<%
  '
  if request.form("sender_name") <> "" then
    '
    recaptcha = false
    '
    recaptcharesponse = request.form("g-recaptcha-response")
    recaptchasecret = "6LfyKc0lAAAAADgVQ5sxS17vdsN_-5LBpCxpaEWx"
    '
    sendstring = "https://www.google.com/recaptcha/api/siteverify?secret=" & recaptchasecret & "&response=" & recaptcharesponse
    'sendstring = "https://www.google.com/recaptcha/api/siteverify"
    'response.write(sendstring)
    '
    '
    data = "secret=" & recaptchasecret
    data = data & "&response=" & recaptcharesponse
    '
    Set objXML = Server.CreateObject("MSXML2.ServerXMLHTTP")
    objXML.Open "GET", sendstring , False

    objXML.Send data

    'response.write(objXML.responseText)
    if instr(objXML.responseText, "success"": true") > 0 then
        recaptcha = true
    end if
    'response.end
    '
    if recaptcha then


        raw = request.form("sender_name") & "<BR>" & vbcrlf
        raw = raw & request.form("sender_email") & "<BR>" & vbcrlf
        raw = raw & request.form("sender_phone") & "<BR>" & vbcrlf
        raw = raw & request.form("sender_message") & "<BR>" & vbcrlf

        '
        set oCdoMsg = server.createobject("CDO.Message")
        '
        oCdoMsg.to = "bonecorp@gmail.com;simon@financedelta.com;"
        oCdoMsg.from =  """Latent Defects Website"" <website@latentdefects.co.uk"
        oCdoMsg.Subject = "FIDx - LDE - Contact Form"

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

        emailstatus = "Your Message Has Been Sent<BR><br>"
    else
        emailstatus = "Email Not Sent - CAPTCHA Failed<BR><br>"

    end if

    '
  end if
  '

sub pagecontent () %>
         <!-- Banner -->
        <!-- add inline style with background-image to the element below  style="background-image: url(assets/img/home-three/among-bg.jpg);" -->
                <!-- Banner -->
                <div
                class="three-banner-area four-banner-area content-page-banner"
                style="background-image: url('assets/img/new-developments-banner.jpg');"
              >
                  <div class="banner-content">
                      <h1>Contact Us</h1>
                      <p>Get in touch with Latent Defects, the trusted experts in building warranties. Our team, led by industry veterans, is here to assist with your construction insurance needs.</p>
                  </div>
              </div>
              <!-- End Banner -->

              <!-- Text content -->
              <div class="text-content">
                <div class="container p-0">
                    <div class="row m-0">
                        <div class="col-lg-8">
                            <div class="px-3">



<p>At Latent Defects, we specialise in providing expert advice on building warranties, backed by years of experience in the construction insurance industry. Our team of seasoned professionals is dedicated to helping you find the right cover for your project, ensuring protection against latent defects and structural issues. Whether you're seeking guidance or have specific questions, we’re here to assist. Reach out to us today and let us help safeguard your construction with trusted expertise.</p>

<% if request.form("sender_name") = "" then %>
<form action="/Latent_Defects_Contact_Us" method="post" name="contact_form">
<input type="text" class="form-control required" placeholder="Your Name *" name="sender_name"><br>
<input type="text" class="form-control required" placeholder="Your Email *" name="sender_email"><br>
<input type="text" class="form-control required" placeholder="Your Telephone Number *" name="sender_phone"><Br>
<input type="text" class="form-control required" placeholder="Your Message *" name="sender_message"><br>
<div class="g-recaptcha" data-sitekey="6LfyKc0lAAAAAJWDczOt6EtZPn9NHYOlHCMytIlr" ></div><br>
<button type="submit" class="btn cmn-banner-btn" onClick="document.contact_form.send()" >Send Email</button><br><br>

</form>
<% else %>
<b><%= emailstatus %></b>
<% end if %>
                            </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="px-3">
                            <div class="about-img">
                              <img src="assets/img/105_farringdon.jpg" alt="London Office">
                            </div>
                          </div>
                          <br>
                           <div class="px-3">
                            <div class="about-img">
                              <img src="assets/img/st_peter_port_guernsey.jpg" alt="Guernsey Office">
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
              </div>
              <!-- End Text content -->

              <!--#include file="quote_form.asp"-->

<% end sub %>
<!--#include file="template.asp"-->