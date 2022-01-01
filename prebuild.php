<?php
session_start();

include("db_connect.php");

$result = mysqli_query($conn,"SELECT * FROM products where binary cat = 'gamingpc'");
$res = mysqli_query($conn,"SELECT * FROM products where binary cat = 'protean'");

?>





<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pre-Build PCs</title>
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
        <header>
            <?php include("nav.php"); ?>
            <div class="container">
                <div class="column">
                    <h1>Pre-build Custom PCs Designed By Us.</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate nesciunt eveniet ut
                        exercitationem.Ex quod, nostrum aperiam impedit asperiores dignissimos cum. Minima laboriosam
                        nobis eveniet nam doloremque exercitationem possimus earum.</p>
                </div>
        </header>
    </div>
    <section>
        <div class="series text-center ">
            <h1>GAMING SERIES</h1>
            <p>Enjoy all your favourite latest games. From 1080p to 4k to streaming ready beasts.</p>
        </div>
        <div class="row">
        
    <?php
                 
                 while($items=mysqli_fetch_array($result))
            
                                {
                              
              ?>
            
    <div class="col-lg-6">
    <?php include("card.php")?>
                                </div>
<?php
                                }
                                ?>

        </div>
        <div class="series text-center ">
            <h1>PROTEAN SERIES</h1>
            <p>Ideal for AI and Deep learning(sofwares like Keras, Theano, Tensorflow, etc), 3D Design and Animation(softwares like 3DS MAX and MAYA), Engineering(softwares like catia, solidworks and creo) and Graphic designing(softwares like adobe photoshop, etc)
                            </p>

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

    </section>
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