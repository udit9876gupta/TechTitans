<?php

session_start();

$con = mysqli_connect('localhost','root');
if($con){
    echo "";
}
else{
    echo "Connection not established!";
}
mysqli_select_db($con,'tech_titans');

$email = $_POST['email'];
$pass = $_POST['password'];

$q = " select * from signup where email = '$email' && password = '$pass' ";

$result = mysqli_query($con, $q);

$num = mysqli_num_rows($result);


if($num==1)
{
    header("location:prebuild.php");
    $_SESSION['email']=$email;
}
else{
    
      
    echo "<script>
    let r = confirm('Check your email and password or Create new account');
if (r == true) {
    window.location.href = 'login.php';

} else {
    console.log('');
}
    </script>";
}


?>