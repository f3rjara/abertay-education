<?php
$sub_why_abertay = get_sub_field('sub_why_abertay');
/* CONFIGURATION SECTION */
$hidden_section = $sub_why_abertay['visible_section'] ? 'd-none' : '';
$id_section = $sub_why_abertay['id_section'];
$class_custom_section = $sub_why_abertay['class_custom_section'];

$bg_color_section = $sub_why_abertay['background_color_section'];
$dark_section_mode = $sub_why_abertay['dark_section_mode'] ? 'dark-mode-section' : '';
$features_abertay = $sub_why_abertay['repeater_feautures'];
?>

<section  class="section-why-abertay py-abertay <?= $hidden_section ?> <?= $dark_section_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center mb-4"><?= $sub_why_abertay['title_primary'] ?></h2>
        <?php if( strlen( $sub_why_abertay['caption_text'] ) > 0 ) :?>
          <p class="caption-text mb-4 text-center">
            <?= $sub_why_abertay['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
    <?php if( $features_abertay ): ?>
      <div class="row row-features d-flex justify-content-center">
        <?php foreach ( $features_abertay as $key => $feature ) : ?>
          <div class="col-12 col-lg-4 col-xl-3 col-feature">
            <h2 class="title-primary text-center"><?= $feature['ttile'] ?></h2>
            <p class="caption-text mt-3 mb-lg-0 text-center description-text">
              <?= $feature['description'] ?>
            </p>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endif; ?>
  </div>
</section>