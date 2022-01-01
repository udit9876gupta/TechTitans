<?php 

session_start();
if(!isset($_SESSION['email'])){
  header('location:login.php');}
?>
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us
    </title>
    <link rel="stylesheet" href="contact.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <form class="form" action="feedback.php" method="POST">
        <h2>CONTACT US</h2>
        <p type="Name:"><input type="name" name="name" id="name" placeholder="Write your name here.."></input></p>
        <p type="Email:"><input type="email" name="email" id="email"  placeholder="Let us know how to contact you back.."></input></p>
        <p type="Message:"><input type="message" name="message" id="message"  placeholder="What would you like to tell us.."></input></p>
        <button>Send Message</button>
        <div>
          <span class="fa fa-phone"></span>+91 9876543210
          <span class="fa fa-envelope-o"></span> techtitans@gmail.com
        </div>
      </form> 
</body>
</html>