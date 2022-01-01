<?php

$con = mysqli_connect('localhost','root');
if($con){
    echo "#";
}
else{
    echo "Connection not established!";
}
mysqli_select_db($con,'tech_titans');

$email = $_POST['customer_email'];
$cname = $_POST['customer_name'];
$phone = $_POST['customer_phone'];
$caddress = $_POST['customer_add'];
$city = $_POST['customer_city'];
$state = $_POST['customer_state'];
$country = $_POST['customer_country'];
$amt = $_POST['amount'];
    
    $qy = "insert into customers(email, name, phone, address, city, state, country, total_amount) 
    values ('$email','$cname','$phone','$caddress','$city','$state','$country','$amt')";
    mysqli_query($con, $qy);

    header('location:payment.php');
?>