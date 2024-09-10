<% 
'For Each item In Request.Form
'    Response.Write (item & ":"&  Request.Form(item) & "<br>") 
'Next   
'response.end
%>
<!DOCTYPE html>
<html lang="zxx" class="theme-light">
    <head>
        <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Boxicons CSS -->
        <link rel="stylesheet" href="assets/css/boxicons.min.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="assets/css/nice-select.min.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <title><%= title_tag %></title>


    </head>
    <body>
<script>

function greet() {
    document.quotedata.submit();
}

<%
Randomize
delay = Int((6-1+1)*Rnd+1) * 1000
%>
setTimeout(greet, <%= delay %>);
</script>

<center>
<br><br><img src="assets/img/logo.png" class="img-fluid w-50 h-50" alt="Logo">


    <p style='font-family: "Poppins", sans-serif;color: #777777;'><h1><br><b>Searching 10+ Warranty Providers...</b></h1></p>

<br><br><img src="assets/img/spinner.gif" class="img-fluid" alt="Loading"></center>


    <form action="quote.asp" method="post" name="quotedata">
<% For Each item In Request.Form
    Response.Write ("<input type='hidden' name='" & item & "' value='" & Request.Form(item) & "'>" & vbcrlf) 
Next   %>
    </form>

</body>
</html>