<?php 
function getUserIP(){
  switch(true){
    case (!empty($_SERVER['HTTP_X_REAL_IP'])) : return $_SERVER['HTTP_X_REAL_IP'];
    case (!empty($_SERVER['HTTP_X_CLIENT_IP'])) : return $_SERVER['HTTP_X_CLIENT_IP'];
    case (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) : return $_SERVER['HTTP_X_FORWARDED_FOR'];
    default : return $_SERVER['REMOTE_ADDR'];
  }
}
?>

<div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">
          Your Shopping Cart
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-image">
          <thead>
            <tr>
              <th scope="col">S No.</th>
              <th scope="col">Product</th>
              <th scope="col">Price</th>
              <th scope="col">Delete</th>
            </tr>
          </thead>
          <tbody>
          <?php
          $bill = 0;
          $sno = 1;
          foreach($_SESSION as $products){
            $p=0;
           if($products == $_SESSION['email'])
           {
             continue;
           }
           echo "<tr>";
           echo "<td>".($sno++)."</td>";
           echo "<form action='deletecart.php' method='POST'>";
           foreach((array)$products as $key => $value){
           if($key == 1){
               echo "<td>".$value."</td>";
               $p = $value;
             }else if($key == 0){
              echo "<input type='hidden' name='name$key'value='".$value."'>";
               echo "<td>".$value."</td>";
             }
             }
             $bill = ($bill + $p);
            ?> <input type="hidden" name="link" value="<?php echo $_SERVER['REQUEST_URI'];?>">
            <?php
             echo "<td><input type='submit' name='event' value='Delete' class='btn btn-danger'></td>";
             echo "</form>";
             echo "</tr>";
            }
            ?>
          </tbody>
        </table> 
        <div class="d-flex justify-content-end">
          <h5>Total: <span class="price text-success"><?php echo "<i class='fa fa-inr'></i>$bill";?></span></h5>
        </div>
          </div>
      <div class="modal-footer border-top-0 d-flex justify-content-between">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      <?php 
      if(isset($_SESSION['email']))
      {
        
      ?>
       <a href="checkout.php?amt=<?php echo $bill; ?>"> <button type="button" class="btn btn-success">Checkout</button></a>
       <?php 
      }
      else{
        ?>
        <a href="login.php"> <button type="button" class="btn btn-success">Checkout</button></a>
        <?php } ?>
       
      </div>
    </div>
  </div>
</div> 

