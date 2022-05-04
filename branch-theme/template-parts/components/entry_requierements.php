<?php
  $sub_requirements = get_sub_field('sub_entry_requirements');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_requirements['visible_section'] ? 'd-none' : '';
  $id_section = $sub_requirements['id_section'];
  $class_custom_section = $sub_requirements['class_custom_section'];
  $bg_color_section = $sub_requirements['background_color_section'];
  $dark_section_mode = $sub_requirements['dark_section_mode'] ? 'dark-mode-section' : '';
  
  $repeater_requierement = $sub_requirements['repeater_requirements'];
?>

<section  class="section-entry-requierements py-abertay <?= $hidden_section ?> <?= $dark_section_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">

    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-8">
        <h2 class="title-section text-center mb-5 px-0 px-lg-5"><?= $sub_requirements['title_section'] ?></h2>
        <?php if( strlen( $sub_requirements['text_caption_section'] ) > 0 ): ?>
          <p class="caption-text text-p2 text-center mb-4 px-0 px-lg-5"><?= $sub_requirements['text_caption_section'] ?></p>
        <?php endif; ?>
      </div>
    </div>

    <div class="row d-flex  justify-content-center">
      <?php if( $repeater_requierement ): ?>
        <?php foreach ( $repeater_requierement as $key => $requierement ) :  $itemsRepeat = $requierement['item_repeater']; ?>
          <div class="col-12">
            <h6 class="title-requirement text-center"> <?= $requierement['requirement'] ?></h6>
            <?php if( $itemsRepeat ): ?>
              <ul class="list-requierement mb-4">
                <?php foreach ( $itemsRepeat as $key => $item ) : ?>
                  <li class="item-list text-p2"><?= $item['item'] ?></li>
                <?php endforeach; ?>
              </ul>
            <?php endif; ?>
          </div>
        <?php endforeach; ?>
      <?php endif; ?>
    </div>

  </div>
</section>