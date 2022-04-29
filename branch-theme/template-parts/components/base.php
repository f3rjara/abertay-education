<?php
$sub_facs = get_sub_field('sub_facs');
/* CONFIGURATION SECTION */
$hidden_section = $sub_facs['visible_section'] ? 'd-none' : '';
$id_section = $sub_facs['id_section'];
$class_custom_section = $sub_facs['class_custom_section'];
$bg_color_section = $sub_facs['background_color_section'];

?>

<section  class="section-faqs py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center"><?= $sub_facs['title_primary'] ?></h2>
        <?php if( strlen( $sub_facs['caption_text'] ) > 0 ) :?>
          <p class="caption-text mt-4 text-center">
            <?= $sub_facs['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
  </div>
</section>