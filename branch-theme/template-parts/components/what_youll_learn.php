<?php
  $sub_what_learn = get_sub_field('sub_what_youll_learn');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_what_learn['visible_section'] ? 'd-none' : '';
  $id_section = $sub_what_learn['id_section'];
  $class_custom_section = $sub_what_learn['class_custom_section'];
  $bg_color_section = $sub_what_learn['background_color_section'];

  $act_button = $sub_what_learn ['act_button'];
  $repeater_features = $sub_what_learn ['repeater_features'];
  $show_custom_icon = $sub_what_learn ['show_custom_icon'];
?>

<section  class="section-what-youll-learn py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
          <h2 class="theme_purple_01_text text-center mb-4">
            <?= $sub_what_learn['ttile_primary']; ?>
          </h2>
          <?php if( strlen($sub_what_learn['description']) > 0 ) : ?>
            <p class="description-section text-p2 text-center mb-4">
              <?= $sub_what_learn['description'] ?>
            </p>
          <?php endif; ?>
          <?php if( strlen($sub_what_learn['text_caption']) > 0 ) : ?>
            <h6 class="text_caption text-p2 theme_hot_pink_02_text text-center mb-4 px-0 px-lg-5">
              <?= $sub_what_learn['text_caption'] ?>
            </h6>
          <?php endif; ?>
      </div>
    </div>
    <?php if( is_array($repeater_features) ) :  ?>

      <div class="row justify-content-center mt-4 row-features"> 
        <?php foreach ( $repeater_features as $key => $features ) : ?>
          <div class="col-10 col-md-6 col-lg-4 col-xl-2 col-features">
            <div class="card-feature h-100">  
              <?php if( $show_custom_icon ) : $image = $features['icon']; 
                echo wp_get_attachment_image( $image['ID'], 'full', false, array('class' => 'custom-icon-colum') );
              else: ?>
                <div class="colum-steep-number"><span class="number"><?= ($key + 1) ?></span></div>
              <?php endif; 
              if( strlen($features['title']) > 0 ): ?>
                <h6 class="ttile-feature theme_purple_01_text"><?= $features['title'] ?></h6>
              <?php endif; ?>
              <p class="description-feature text-p2"><?= $features['description'] ?></p>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    <?php endif;?>
    <?php if( is_array($act_button) ) : 
      $link_target = $act_button['target'] ? $act_button['target'] : '_self'; ?>
      <div class="row d-flex justify-content-center mt-4">
        <div class="col-12 col-lg-3 text-center">
          <a  href="<?php echo $act_button['url']; ?>" 
              class="btn btn-abertay btn-abertay-green btn-abertay-medium"
              target="<?php echo $link_target; ?>" 
              aria-label="<?php echo $act_button['title']; ?>"
              rel="noopener noreferrer">
              <?php echo $act_button['title']; ?>
          </a>
        </div>
      </div>
    <?php endif;?>
</section>