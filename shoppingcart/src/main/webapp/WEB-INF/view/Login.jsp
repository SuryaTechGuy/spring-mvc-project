
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login_ShoppingCart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
          body {
    padding-top: 15px;
    font-size: 12px
  }
  .main {
    max-width: 320px;
    margin: 0 auto;
  }
  .login-or {
    position: relative;
    font-size: 18px;
    color: #aaa;
    margin-top: 10px;
            margin-bottom: 10px;
    padding-top: 10px;
    padding-bottom: 10px;
  }
  .span-or {
    display: block;
    position: absolute;
    left: 50%;
    top: -2px;
    margin-left: -25px;
    background-color: #fff;
    width: 50px;
    text-align: center;
  }
  .hr-or {
    background-color: #cdcdcd;
    height: 1px;
    margin-top: 0px !important;
    margin-bottom: 0px !important;
  }
  h3 {
    text-align: center;
    line-height: 300%;
  }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div class="row">

    <div class="main">

      <h3>Please Log In, or <a href="Register">Sign Up</a></h3>
      <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="#" class="btn btn-lg btn-info btn-block">Google</a>
        </div>
      </div>
      <div class="login-or">
        <hr class="hr-or">
        <span class="span-or">or</span>
      </div>

      <form role="form"><form="validate">
        <div class="form-group">
          <label for="inputUsernameEmail">Username or email</label>
          <input type="text" name="user" class="form-control" id="inputUsernameEmail">
        </div>
        <div class="form-group">
          <a class="pull-right" href="#">Forgot password?</a>
          <label for="inputPassword">Password</label>
          <input type="password" name="password" class="form-control" id="inputPassword">
          </div></form>
        <div class="checkbox pull-right">
          <label>
            <input type="checkbox">
            Remember me </label>
        </div>
        <button type="submit" class="btn btn btn-primary">
          Log In
        </button>
      </form>
    
    </div>
    
  </div>
</div>
<script type="text/javascript">

</script>
</body>
</html>
