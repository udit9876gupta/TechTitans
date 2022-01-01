<?php 
session_start();

$name = $_POST['name0'];
$event = $_POST['event'];

if($event == "Delete"){
    unset($_SESSION[$name]);
}

$url = "http://";   

$url.= $_SERVER['HTTP_HOST'];   

$url.= $_POST['link'];

header("location:$url");

?>