    <div class="container">

      <div class="row">
        <br><br>

        <div class="col-sm-3">
         
          <div class="list-group">
            <img class="img-thumbnail" src="/assets/img/logo.png">
            <a href="pedido" class="list-group-item active">faça já o seu pedido</a>
            <a href="cardapio" class="list-group-item">Cardapio</a>
            <a href="contato" class="list-group-item">Contato</a>
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-sm-9">

          <div class="card mt-4">

         <div class="w3-content w3-section" style="max-width:600px">
  <img class="mySlides" src="/assets/img/esfirras.jpg" style="width:100%">
  <img class="mySlides" src="/assets/img/beirute.jpg" style="width:100%">
  <img class="mySlides" src="/assets/img/esfirras2.jpg" style="width:100%">
  <img class="mySlides" src="/assets/img/pastel.jpg" style="width:100%">
  <img class="mySlides" src="/assets/img/pizza.jpg" style="width:100%">

 
</div>

          <!--  <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt=""> -->
            <div class="card-body">
              <h3 class="card-title">Product Name</h3>
              <h4>$24.99</h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!</p>
              <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
              4.0 stars
            </div>
          </div>
          <!-- /.card -->

          <div class="card card-outline-secondary my-4">
            <div class="card-header">
              Product Reviews
            </div>
            
            </div>
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

      </div>

    
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 2 seconds
}
</script>


   