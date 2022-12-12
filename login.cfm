<html>
<title> CF Test</title>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<Body>
<div align="center">

 <form action="login_action.cfm" method="post"> 
<h1>Login</h1>
 
   <div class="form-group">
    <label for="exampleInputEmail1">User Id:
    <input type="userId" class="form-control" id="userId" 
    aria-describedby="emailHelp" placeholder="User Id" name="userId"  required></label>

<br>
<br>
  <div class="form-group">
    <label for="exampleInputPassword1">Password
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"
     name="pwd"  required></label>
  </div>

  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

</body>
</html>