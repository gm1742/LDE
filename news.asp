<!--#include file="connection.asp"-->
<% sub pagecontent () %>

       <!-- Banner -->
                <div  
                class="three-banner-area four-banner-area content-page-banner" 
                style="background-image: url('assets/img/pccs-banner.jpg');"
              >
                  <div class="banner-content">
                      <h1>UK Construction News</h1>
                      <p>All the Latest News From The Construction And Built Environment Sectors</p>
                  </div>
              </div>
              <!-- End Banner -->
<br><br>
   <div class="three-review-area four-review-area pb-50">
          <div class="container">
              <div class="row">
               
                <% 

                Set objConn = Server.CreateObject("ADODB.Connection") 
                objConn.ConnectionString = CONNECTIONSTRING
                objConn.Open
                '
                sql = "SELECT * FROM website_news ORDER BY datesort DESC"
                SET ORS=objConn.execute(sql)
                '
                                '
                rep = 0 
                do while not ors.eof
                    rep = rep + 1
                    '
                    testdate = ORS.FIELDS ("datesort").VALUE
                    testdate = right(testdate,2) & "/" & mid(testdate,5,2) & "/" & left(testdate,4) 
                    '
                    'iamges nee dot be 800x375 and have the date then .jog  
                    '
                    'if rep > 3 then 
                    '    exit do
                    'end if
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

<br><br>

<% end sub %>
<!--#include file="template.asp"-->