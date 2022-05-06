
<?php
  $sub_potential_career = get_sub_field('sub_potential_career');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_potential_career['visible_section'] ? 'd-none' : '';
  $id_section = $sub_potential_career['id_section'];
  $class_custom_section = $sub_potential_career['class_custom_section'];
  $bg_color_section = $sub_potential_career['background_color_section'];
  $dark_section_mode = $sub_potential_career['dark_section_mode'] ? 'dark-mode-section' : '';
  $repeater_career = $sub_potential_career['repeater_career'];
?>

<section  class="section-potential-career py-abertay <?= $hidden_section ?> <?= $dark_section_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-8">
        <h2 class="title-section text-center mb-5"><?= $sub_potential_career['title_section'] ?></h2>
        <?php if( strlen( $sub_potential_career['text_caption_section'] ) > 0 ): ?>
          <p class="caption-text text-p2 text-center mb-4 px-0 px-lg-5"><?= $sub_potential_career['text_caption_section'] ?></p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row d-flex  justify-content-center">
      <div class="col-12 col-lg-10 col-xl-8">
        <?php if( $repeater_career ): ?>
          <ul class="list-career">
            <?php foreach ( $repeater_career as $key => $item ) : ?>
              <li class="item-list"><?= $item['item'] ?></li>
            <?php endforeach; ?>
          </ul>
        <?php endif; ?>
      </div>
    </div>
  </div>
</section>