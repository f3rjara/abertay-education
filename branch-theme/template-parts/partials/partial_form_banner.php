<?php $data_form = $args['data_form']; ?>
<div class="container-banner-form">
  <div class="row">
    <div class="col-12">
      <h3 class="title-form text-center mb-4"> <?= $data_form['title'] ?> </h3> 
    </div>
    <div class="col-12">
      <div class="container-ninja-form">
        <?php  echo do_shortcode( $data_form['shortcode'] );  ?> 
      </div>
    </div>
  </div>
</div>