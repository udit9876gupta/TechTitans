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
$full_name = $_POST['fullName'];
$pass = $_POST['password'];

$q = " select * from signup where email = '$email' && fullname = '$full_name' && password = '$pass' ";

$result = mysqli_query($con, $q);

$num = mysqli_num_rows($result);

if($num==1)
{
    
    echo "<script>
    let r = confirm('User Exists');
if (r == true) {
    window.location.href = 'login.php';

} else {
    console.log('');
}
    </script>";
    
}
else{
    
    $qy = "insert into signup(email, fullname, password) values ('$email', '$full_name', '$pass')";
    mysqli_query($con, $qy);
    header('location:login.php');

}


?>