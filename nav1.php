<nav>
                <div class="menu-icon">
                    <i class="fa fa-bars fa-2x"></i>
                </div>
                <div class="logo">
                    <a href="index.php"><img src="images/LOGO.PNG.png" alt="TECH TITANS LOGO"></a>
                </div>
                <div class="menu">
                    <ul>
                    <li><button class="btn btn-outline-danger dropdown-toggle" type="button"
                                id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                Go To
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="pchardwares.php">CPUs and GPUs</a></li>
                                <li><a class="dropdown-item" href="RAM.php">RAM Stick</a></li>
                                <li><a class="dropdown-item" href="motherboard.php">Motherboards</a></li>
                                <li><a class="dropdown-item" href="storage.php">Secondary Storage</a></li>
                                <li><a class="dropdown-item" href="cabinet.php">Cabinet</a></li>
                                <li><a class="dropdown-item" href="coolers.php">Coolers</a></li>
                                <li><a class="dropdown-item" href="others.php">Others</a></li>
                                <li><a class="dropdown-item" href="peripherals.php">Peripherals</a></li>
                            </ul>
                        </li>
                        <li><a href="index.php">Home</a></li>
                        <li><button class="btn btn-outline-danger dropdown-toggle" type="button"
                                id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                Go To
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <li><a class="dropdown-item" href="prebuild.php">Pre-build Custom PCs</a></li>
                               
                                <li><a class="dropdown-item" href="pchardwares.php">PC hardware parts</a></li>
                            </ul>
                        </li>
                        <li><a href="aboutus.html">About</a></li>
                        <li><a href="contact.php">Contact</a></li>
                        <?php 
                        if(isset($_SESSION['email'])){?>
                        <li><a href="logout.php"><button class="btn btn-light">Logout</button></a></li>
                        <?php }
                        else{
                            ?>
                            <li><a href="login.php"><button class="btn btn-danger">Login</button></a></li>
                       <?php }?>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#cartModal">CART</button></li>
                    </ul>
                </div>
            </nav>
            <?php include("cart.php");?>