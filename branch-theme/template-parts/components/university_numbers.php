<?php
  $sub_university_numbers = get_sub_field('sub_university_numbers');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_university_numbers['visible_section'] ? 'd-none' : '';
  $id_section = $sub_university_numbers['id_section'];
  $class_custom_section = $sub_university_numbers['class_custom_section'];

  $bg_color_section = $sub_university_numbers['background_color_section'];
  $show_texture = $sub_university_numbers['show_texture'];
  $repeat_numbers = $sub_university_numbers['repeat_numbers'];
?>
<?php if ($show_texture) :?>
  <section  class="section-university-numbers py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-image: url('<?php echo get_stylesheet_directory_uri().'/public/img/bg_triangle_complete.svg'; ?>'); background-color: <?= $bg_color_section ?>;">
<?php else: ?>
  <section  class="section-university-numbers py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
<?php endif;?>
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center"><?= $sub_university_numbers['primary_title'] ?></h2>
        <?php if( strlen( $sub_university_numbers['description_text'] ) > 0 ) :?>
          <p class="caption-text mt-4 text-center">
            <?= $sub_university_numbers['description_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row d-flex justify-content-center row-percentage">
      <?php if( $repeat_numbers ): foreach ( $repeat_numbers as $key => $item  ) : ?>
        <div class="col-12 col-md-3 col-lg-2 col-percentage">
          <div class="single-chart">
            <div class="percentage"><?= $item['number_text'] ?> </div>
            <svg viewBox="0 0 36 36" class="circular-chart">
              <path class="circle-bg" d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" />
              <path class="circle" stroke-dasharray="<?= $item['number_percentage'] ?>, 100" d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" />
            </svg>
          </div>
          <p class="description-percentage text-center"><?= $item['description'] ?></p>
        </div>
      <?php endforeach; endif; ?>
    </div>
  </div>
</section>