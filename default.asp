<!--#include file="connection.asp"-->
<% sub pagecontent () %>

        <div
          id="home"
          class="three-banner-area four-banner-area homepage-banner" >
          <div class="banner-wrapper">
            <video autoplay muted loop class="banner-video" poster="assets/media/home-video-placeholder.jpg">
              <source src="assets/media/home-video.mp4" type="video/mp4">
            </video>
            <div class="banner-content d-table">
                <div class="d-table-cell">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-xxl-7 col-xl-6 col-lg-12">
                                <div class="banner-content">
                                    <h1>Your Construction <span class="text-nowrap">Insurance &</span><br>Building Warranty Experts</h1>
                                    <div class="banner-labels">
                                      <p>Whole of market</p>
                                      <p>100% Independent</p>
                                      <p>Free Advice</p>
                                      <p>Quick turnaround</p>
                                    </div>
                                    <p>Secure the best prices for structural warranties and construction insurance with our free whole of market online quote service</p>
                                </div>
                            </div>
                            <div class="col-xxl-5 col-xl-6 col-lg-12">
                               <!--#include file="quote_form.asp"-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
        <!-- End Banner -->
        <!-- Text content -->
        <div class="text-content">
            <div class="container p-0">
                <div class="row m-0">
                    <div class="col-lg-6">
                        <div class="px-3">
                            <p style="font-size:15pt"><b style="color:#8e1915">Latent Defects</b> is a leading expert in <b style="color:#8e1915">Building Warranty Insurance</b>, <b style="color:#8e1915">Structural Warranties</b>, and <b style="color:#8e1915">All Forms Of Construction Insurance</b> in the <b style="color:#8e1915">UK Property Sector</b>. With a wealth of experience, we have worked with on projects of <b style="color:#8e1915">all sizes including with major developers and global construction brands</b> for <b style="color:#8e1915">tens of thousands of property units with millions of pounds worth of GDV</b></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="px-3">
                        <p style="font-size:15pt">The <b style="color:#8e1915">Structural Warranty market is constantly changing</b>, making it crucial to <b style="color:#8e1915">seek expert guidance</b> when obtaining policies and selecting providers that best <b style="color:#8e1915">match your</b> project needs. <b style="color:#8e1915">Latent Defects provide tailored advice and solutions</b> to ensure that your needs are met with <b style="color:#8e1915">efficiency and effectiveness and within your budget</b>.</p>
                      </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Text content -->
        <!-- Review -->
        <div class="three-review-area four-review-area pb-50">
          <div class="container">
              <div class="row">
                <div class="col-sm-12">
                  <div class="one-section-title two-section-title">
                      <h2>Construction Industry News <h3>(links to external sites)</h3></h2>
                  </div>
                </div>
                <%

                Set objConn = Server.CreateObject("ADODB.Connection")
                objConn.ConnectionString = CONNECTIONSTRING
                objConn.Open
                '
                sql = "SELECT * FROM website_news ORDER BY datesort DESC"
                SET ORS=objConn.execute(sql)
                '
                rep = 0
                do while not ors.eof
                    rep = rep + 1
                    '
                    testdate = ORS.FIELDS ("datesort").VALUE
                    testdate = right(testdate,2) & "/" & mid(testdate,5,2) & "/" & left(testdate,4) 
                    '
                    if rep > 3 then
                        exit do
                    end if
                '
                %>
                <div class="news-item col-sm-12 col-lg-4">
                    <a href="<%= ORS.FIELDS ("url").VALUE %>" target="_blank"><img class="news-item__image" src="assets/news_images/<%= ORS.FIELDS ("datesort").VALUE %>.jpg" alt="">
                    <h<% if rep mod 3 = 0 then %>4<% else %>4<% end if %>><%= ORS.FIELDS ("title").VALUE %></h<% if rep mod 3 = 0 then %>4<% else %>4<% end if %>></a><%= ORS.FIELDS ("source").VALUE %>&nbsp;<%= testdate %><br><br>
                </div>
                <%

                    ors.movenext
                loop
                %>
              </div>
          </div>
        </div>
        <div class="three-review-area four-review-area pt-50 pb-50">
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
                <div class="one-section-title two-section-title">
                    <h2>Our Customer Testimonials</h2>
                </div>
              </div>
                <%
               sql = "SELECT * FROM website_testimonials ORDER BY NEWID()"
                SET ORS=objConn.execute(sql)
                '
                rep = 0
                do while not ors.eof
                    rep = rep + 1
                    if rep > 3 then
                        exit do
                    end if
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
        <!-- End Review -->
            <!-- Text content -->
            <!--<div class="text-content">
            <div class="container p-0">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="px-3">
                          <p>At LatentDefects, we strive to provide our clients with the most competitive quotes and policies from all the major building warranty providers. Our goal is to ensure that our clients receive the most suitable policy for their projects at the most affordable price, each and every time.</p>
                          <p>Our warranty scope is extensive and covers every eventuality, including but not limited to <a href="#">New Build Warranty</a>, <a href="#">Completed House Warranties</a>, <a href="#">Commercial Warranties</a>, <a href="#">Social Housing Warranties</a>, <a href="#">Self-build Warranties</a>, <a href="#">Conversion Warranties</a>, <a href="#">Mixed-Use Developments</a>, and <a href="#">Retrospective Warranties</a>. We understand that every project is unique and requires a tailored approach, which is why we offer a wide range of warranty options to cater to diverse project needs.
                          </p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="px-3">
                        <p>With over 40 years of collective experience in the property sector, our team is well-equipped to provide our clients with expert advice and support. Our clients can rest assured that they are in good hands and working with the best building warranty providers in the industry.”</p>
                    </div>
                    </div>
                </div>
            </div>
        </div>-->
        <!-- End Text content -->
<% end sub %>
<!--#include file="template.asp"-->