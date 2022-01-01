<?php
session_start();

$name = $_POST['name'];

$price = $_POST['price'];

$url = "http://";   

$url.= $_SERVER['HTTP_HOST'];   

$url.= $_POST['link'];



$product = array($name,$price);

$_SESSION[$name] = $product;

header("location:$url");

?>