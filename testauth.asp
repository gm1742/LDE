<%@ Language="VBScript" %>
<% Option Explicit %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Testing Auth0 with Classic ASP</title>
</head>
<body>
  <script src="https://cdn.auth0.com/js/lock-9.1.min.js"></script>
  <script type="text/javascript">
    var lock = new Auth0Lock('CUvleTGESN2Z4OpKd86i3itmfavcPU2v', 'islandangels.eu.auth0.com');

    function signin() {
      lock.show({
        callbackURL: 'http://YOUR_APP/callback'
      });
    }
  </script>
  <button onclick="signin()">Login</button>
</body>
</html>