<?php
session_start();

$con = mysqli_connect('localhost','root');
if($con){
    echo "#";
}
else{
    echo "Connection not established!";
}
mysqli_select_db($con,'tech_titans');

$email = $_POST['email'];

$q = " select * from signup where email = '$email'";

$result = mysqli_query($con, $q);

$num = mysqli_num_rows($result);

if($num>0)
{
   $row = mysqli_fetch_array($result);
   $to = $row['email'];
   $subject = "Credentials!";
   $body = "Hi User, This is your email ".$to." and your password is ".$row['password'];
   $header = "From: techtitans576@email";
 
   if ( mail($to, $subject, $body, $header)) {
    echo "<script>
    let r = confirm('Check your mail for your credentials!');
if (r == true) {
    window.location.href = 'login.php';

} else {
    console.log('');
}
    </script>";
   
   } else {
      echo("Failed!");
   }
}
else{
    echo "<script>
    let r = confirm('User not exist!');
if (r == true) {
    window.location.href = 'login.php';

} else {
    console.log('');
}
    </script>";
   
}
?>