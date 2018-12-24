<div class="row">
    <div class="col-sm-12">
         <div class="col-sm-12">
         
          <div class="list-group">
            <img class="img-thumbnail" src="/assets/img/logo.png">
            <? foreach($tipoProdutos as $value){ ?>
         
            <a href="#" class="list-group-item " style="background-color: #800000; color: white"><?=$value->nome ?></a>
            <? } ?>
          </div>
             <br>
        </div>
    </div>
</div>