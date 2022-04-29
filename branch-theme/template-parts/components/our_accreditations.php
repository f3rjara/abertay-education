<?php
$sub_our_accreditations = get_sub_field('sub_our_accreditations');
/* CONFIGURATION SECTION */
$hidden_section = $sub_our_accreditations['visible_section'] ? 'd-none' : '';
$id_section = $sub_our_accreditations['id_section'];
$class_custom_section = $sub_our_accreditations['class_custom_section'];

$bg_color_section = $sub_our_accreditations['background_color_section'];
$dark_section_mode = $sub_our_accreditations['dark_section_mode'] ? 'dark-mode-section' : '';
$features_abertay = $sub_our_accreditations['repeater_feautures'];
?>

<section  class="section-our-accreditation py-abertay <?= $hidden_section ?> <?= $dark_section_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center"><?= $sub_our_accreditations['title_primary'] ?></h2>
        <?php if( strlen( $sub_our_accreditations['caption_text'] ) > 0 ) :?>
          <p class="caption-text mt-4 text-center">
            <?= $sub_our_accreditations['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
    <?php if( $features_abertay ): ?>
      <div class="row row-features mt-5 d-flex justify-content-center">
        <?php foreach ( $features_abertay as $key => $feature ) : $image = $feature['image_accreditation']; ?> 
          <div class="col-12 col-lg-4 col-xl-3 col-feature d-flex justify-content-center align-items-center">
            <?=  wp_get_attachment_image( $image['ID'], $size, false, array( "class" => "image-accreditation" ) ); ?>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endif; ?>
  </div>
</section>