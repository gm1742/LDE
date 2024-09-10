<!--#include file="connection.asp"-->
<% sub pagecontent () %>
    <!-- Banner -->
        <!-- add inline style with background-image to the element below  style="background-image: url(assets/img/home-three/among-bg.jpg);" -->
                <!-- Banner -->
                <div
                class="three-banner-area four-banner-area content-page-banner"
                style="background-image: url('assets/img/other-banner.jpg');"
              >
                  <div class="banner-content">
                      <h1>Some Of Our Customer Testimonials</h1>
                      <p>We Have Worked With Hundreds Of Happy Clients Over The Years. Get Your Quote today!</p>
                  </div>
              </div>
              <!-- End Banner -->
  <div class="three-review-area testimonial-items four-review-area pt-100 pb-50">
          <div class="container">
            <div class="row">

                <%
                    Set objConn = Server.CreateObject("ADODB.Connection")
                objConn.ConnectionString = CONNECTIONSTRING
                objConn.Open
               sql = "SELECT * FROM website_testimonials ORDER BY NEWID()"
                SET ORS=objConn.execute(sql)
                '
                rep = 0
                do while not ors.eof
                    rep = rep + 1
                    'if rep > 3 then
                    '    exit do
                    'end if
                '
                %>
                <div class="review-item col-sm-12 col-lg-4">
                    <h3><%= ORS.FIELDS ("testcontent").VALUE %><br><b><%= ORS.FIELDS ("name").VALUE %></b></h3>
                </div>
                <%
                    ors.movenext
                loop
                %>
            </div>
            </div>
        </div>
        <br><br>
<% end sub %>
<!--#include file="template.asp"-->