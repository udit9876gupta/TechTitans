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
$name = $_POST['name'];
$email = $_POST['email'];
$msg = $_POST['message'];
 
    $qy = "insert into feedback(name, email, message) values ('$name', '$email', '$msg')";
    mysqli_query($con, $qy);

    echo "<script>
    let r = confirm('Thanks for your feedback!');
if (r == true) {
    window.location.href = 'contact.php';

} else {
    console.log('');
}
    </script>";
    

?>