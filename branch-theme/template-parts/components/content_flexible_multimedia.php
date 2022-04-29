<?php
  $sub_content_multimedia = get_sub_field('sub_content_multimedia');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_content_multimedia['visible_section'] ? 'd-none' : '';
  $id_section = $sub_content_multimedia['id_section'];
  $class_custom_section = $sub_content_multimedia['class_custom_section'];

  $bg_color_section = $sub_content_multimedia['background_color_section'];
  $show_texture = $sub_content_multimedia['show_texture'];
  $invert_columns = $sub_content_multimedia['invert_columns'] ? 'order-2' : '';

?>
<?php if ($show_texture) :?>
  <section  class="section-content-flexible-multimedia py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-image: url('<?php echo get_stylesheet_directory_uri().'/public/img/bg_triangle_complete.svg'; ?>'); background-color: <?= $bg_color_section ?>;">
<?php else: ?>
  <section  class="section-content-flexible-multimedia py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
<?php endif;?>
  <div class="container">
    <div class="row d-flex justify-content-center align-items-center">
      <div class="col-12 col-lg-6 <?= $invert_columns ?>">
        <h2 class="title-primary"><?= $sub_content_multimedia['primary_title'] ?></h2>
        <div class="content-text text-p2">
          <?= $sub_content_multimedia['description_text'] ?>
        </div>
      </div>
      <div class="col-12 col-lg-5 col-flexible-multimedia">
        <?php 
          get_template_part('template-parts/partials/flexible_multimedia', 'multimedia', 
                            array(
                              'flex_content'   => $sub_content_multimedia['partial_flexible_multimedia'],
                              'content_uniqid' => uniqid(),
                              'key' => 0
                            ));
        ?>
      </div>
    </div>
  </div>
</section>