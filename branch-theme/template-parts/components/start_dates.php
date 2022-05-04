<?php
  $sub_start_dates = get_sub_field('sub_start_dates');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_start_dates['visible_section'] ? 'd-none' : '';
  $id_section = $sub_start_dates['id_section'];
  $class_custom_section = $sub_start_dates['class_custom_section'];
  $bg_color_section = $sub_start_dates['background_color_section'];
  $dark_mode = $sub_start_dates['dark_mode_section'] ? 'dark-mode' : '';
  $repeater_dates = $sub_start_dates['repeater_dates'];
?>

<section  class="section-start-dates py-abertay <?= $hidden_section ?> <?= $dark_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-image: url('<?php echo get_stylesheet_directory_uri().'/public/img/bg_triangle_complete.svg'; ?>'); background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row mx-2 mx-xl-0 d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-7">
        <h2 class="title-section text-center mb-4"><?= $sub_start_dates['title_section'] ?></h2>
        <?php if( strlen( $sub_start_dates['text_caption_section'] ) > 0 ) : ?>
          <p class="caption-text text-center text-p2 mb-4"><?= $sub_start_dates['text_caption_section'] ?></p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row mx-2 mx-xl-0 d-flex justify-content-center mt-3">
      <?php foreach ( $repeater_dates as $key => $date ): $image = $date['icon']; ?>
        <div class="col-12 col-lg-4 col-xl-auto col-date">
          <?= wp_get_attachment_image( $image['ID'], 'full', false, array('class' => 'icon-date') );?>
          <div class="content-date">
            <h4 class="title-date"><?= $date['title_date'] ?></h4>
            <p class="description-date"><?= $date['description_date'] ?></p>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
  </div>
</section>