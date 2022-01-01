
<form action="additems.php" method="post">
<div class="card">
    <div class="content">
    <h2><?php echo $items['p_name'];?></h2>
   <p><?php echo $items['p_details'];?></p>
   <h3><i class="fa fa-inr"></i><?php echo $items['p_price'];?></h3>
   <input type="hidden" name="name" value="<?php echo $items['p_name'];?>">
   <input type="hidden" name="price" value="<?php echo $items['p_price'];?>">
   <input type="hidden" name="link" value="<?php echo $_SERVER['REQUEST_URI'];?>">
   <br>
    <input type="submit" value="Add to Cart" name="addCart" class="btn btn-dark add">
</div>
    <img src="<?php echo $items['p_image'];?>" alt="">
    </div>
    </form>