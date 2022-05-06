<?php
  $sub_content_outline = get_sub_field('sub_content_outline');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_content_outline['visible_section'] ? 'd-none' : '';
  $id_section = $sub_content_outline['id_section'];
  $class_custom_section = $sub_content_outline['class_custom_section'];
  $bg_color_section = $sub_content_outline['background_color_section'];
  $invert_columns = $sub_content_outline['invert_columns'] ? 'order-2' : '';
  $class_columns = $sub_content_outline['invert_columns'] ? 'pe-lg-5' : 'ps-lg-5';
?>

<section  class="section-content-outline py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row m-2 m-lg-0">

      <div class="col-12 col-lg-6 col-xl-4 col-content-outline d-flex flex-column justify-content-center <?= $invert_columns ?>">
        <h2 class="title-section theme_purple_01_text mb-3">
          <?= $sub_content_outline['title_section'] ?>
        </h2>
        <p class="description-section theme_black_text text-p2">
          <?= $sub_content_outline['description_section'] ?>
        </p>
      </div>

      <div class="col-12 col-lg-6 col-xl-8 col-flexible-multimedia <?= $class_columns ?>">
      <?php 
          get_template_part('template-parts/partials/flexible_multimedia', 'multimedia', 
                            array(
                              'flex_content'   => $sub_content_outline['partial_flexible_multimedia'],
                              'content_uniqid' => uniqid(),
                              'key' => 0
                            ));
        ?>
      </div>
    </div>
  </div>
</section>