<?php
session_start();

include("db_connect.php");

$res = mysqli_query($conn,"SELECT * FROM products Where binary cat = 'ram'");


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Build Your Own PC</title>
    <link rel="stylesheet" href="./home.css">
    <link rel="stylesheet" href="./card.css">
    <link rel="stylesheet" href="./cart.scss">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="wrapper">
        <header style="background-image: url(images/background3.jpg);">
        <?php include("nav1.php"); ?>
            <div class="container">
                <div class="column">
                    <h1>PC Hardwares.</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate nesciunt eveniet ut
                        exercitationem.Ex quod, nostrum aperiam impedit asperiores dignissimos cum. Minima laboriosam
                        nobis eveniet nam doloremque exercitationem possimus earum.</p>
                </div>
        </header>
    </div>

<section>
<div class="series text-center ">
            <h1>RAM Stick</h1>
            <p>Choose from the best and exclusive collection of RAM Sticks for best performance of your system.</p>
        </div>

        <div class="row">
        
        <?php
                     
                     while($items=mysqli_fetch_array($res))
                
                                    {
                                  
                  ?>
                
        <div class="col-lg-6">
        <?php include("card.php")?>
                                    </div>
    <?php
                                    }
                                    ?>
    
            </div>



   <?php include("footer.php") ?>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $(".menu-icon").on("click", function () {
                $("nav ul").toggleClass("showing");
            });
        });
        // Scrolling Effect
        $(window).on("scroll", function () {
            if ($(window).scrollTop()) {
                $('nav').addClass('black');
            }

            else {
                $('nav').removeClass('black');
            }
        })
        $(document).ready(function() {  
  $('#cartModal').modal('hide');
});
    </script>
    
</body>
</html>