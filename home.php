 <section id="bg-bus" class="d-flex align-items-center">
    <div class="container">
      <?php if(!isset($_SESSION['login_id'])): ?>
      	<center><button class="btn btn-info btn-lg" type="button" id="book_now">Book Now</button></center>
        <br>
        <center><button class="btn btn-info btn-lg" type="button" id="paymentNow"> Make payment</button></center>
      <?php else: ?>
        <h1 style="color:brown ; margin-left: 300px; margin-top:320px; background-color:aqua;margin-right:560px; border-radius:5px ">Welcome</h1>
      <?php endif; ?>
    </div>
  </section>
  <script>
  	$('#book_now').click(function(){
      uni_modal('Find Schedule','book_filter.php')
  })
  $('#paymentNow').click(function(){
      uni_modal('Make Payment','paymentNow.php')
   
    
  })


  </script>