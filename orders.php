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
$country = $_POST['country'];
$fname = $_POST['first_name'];
$lname = $_POST['last_name'];
$add = $_POST['address'];
$city = $_POST['city'];
$state = $_POST['state'];
$zip = $_POST['zip_code'];
$phone = $_POST['phone_number'];
$email = $_POST['email_address'];
 
    $qy = "insert into orders(country, fname, lname, address, city, state, zip, phone, email,) values ('$country', '$fname', '$lname', '$add', '$city', '$state', '$zip', '$phone', '$email')";
    mysqli_query($con, $qy);


?>