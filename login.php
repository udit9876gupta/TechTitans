<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="login_css.css">
   
    <title>Login page</title>
 
</head>
<body background="images\background1.jpg">
    <div class="main">
      <div class="container">
        <div id="square">
          <div class="front">
            <h1>Login</h1>
            <form action="validation.php" method="post">
              <input
                required
                type="email"
                name="email"
                id="email"
                placeholder="Email"
              />
              <input
                required
                type="password"
                name="password"
                id="password"
                placeholder="Password"
              />
              <button type="submit">Submit</button>
            </form>
          </div>
          <div class="right">
            <h1>Create a new account</h1>
            <form action="registration.php" method="post">
              <input
                required
                type="email"
                name="email"
                id="email"
                placeholder="Email"
              />
              <input
                required
                type="text"
                name="fullName"
                id="fullName"
                placeholder="Full name"
              />
              <input
                required
                type="password"
                name="password"
                id="password"
                placeholder="Password"
              />
              <button type="submit">Submit</button>
            </form>
          </div>
          <div class="left">
            <h1>Add your email to reset password</h1>
            <form action="forgotpass.php" method="post">
              <input 
                required
                type="email"
                name="email"
                id="email"
                placeholder="Email"
              />
              <button type="submit">Submit</button>
            </form>
          </div>
        </div>
        <div class="actions">
          <button id="leftSide" type="button">Forgot Password</button>
          <button id="frontSide" type="button">Login</button>
          <button id="rightSide" type="button">Sign up</button>
        </div>
      </div>
    </div>
    <script src="login_js.js"></script>



</body>
</html>