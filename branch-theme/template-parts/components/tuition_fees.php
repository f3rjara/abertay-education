<?php
  $sub_tuition_fees = get_sub_field('sub_tuition_fees');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_tuition_fees['visible_section'] ? 'd-none' : '';
  $id_section = $sub_tuition_fees['id_section'];
  $class_custom_section = $sub_tuition_fees['class_custom_section'];
  $bg_color_section = $sub_tuition_fees['background_color_section'];
  // CONTENT REPEATER
  $repeater_content = $sub_tuition_fees['repeater_content'];
  $isSmall = count( $repeater_content )  < 4 ? 'tabs-small' : '';
  $id_uniq = uniqid();
?>
<?php if( count($repeater_content) > 1 ):?>
<section class="section-navigation-tuition-fees <?= $hidden_section ?> <?= $class_custom_section ?>">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <ul class="nav nav-tabs <?= $isSmall ?>" id="myTab" role="tablist">
          <?php if( $repeater_content  ): foreach ( $repeater_content as $key => $tabItem ) : ?>
          <li class="nav-item" role="presentation">
            <button class="nav-link <?= $key == 0 ? 'active' : '' ?>" 
                    id="nav-tab-<?=$id_uniq?>-<?=$key?>" 
                    data-bs-target="#nav-content-<?=$id_uniq?>-<?=$key?>"
                    aria-controls="nav-content-<?=$id_uniq?>-<?=$key?>"
                    aria-selected="<?php $key == 0 ? 'true' : 'false' ?>"
                    type="button" role="tab" data-bs-toggle="tab">
                    <?= $tabItem['title_for_tab'] ?></button> 
          </li>
          <?php endforeach; endif; ?>
        </ul>
      </div>
    </div>
  </div>
</section>
<?php endif; ?>
<section  class="section-tuition-fees py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="tab-content" id="myTabContent">
      <?php if( $repeater_content  ): foreach ( $repeater_content as $key => $tabItem ) : ?>
      <div  class="tab-pane fade <?= $key == 0 ? 'show active' : '' ?>" 
            id="nav-content-<?=$id_uniq?>-<?=$key?>" 
            role="tabpanel" 
            aria-labelledby="nav-tab-<?=$id_uniq?>-<?=$key?>">
        <!-- TITLES IN SECTION -->
        <div class="row d-flex justify-content-center">
          <div class="col-12 col-lg-8">
            <h2 class="title-primary text-center theme_purple_01_text"><?= $tabItem['title_primary'] ?></h2>
            <?php if( strlen( $tabItem['caption_text'] ) > 0 ) :?>
              <p class="caption-text mt-4 px-2 text-center theme_black_text text-p2">
                <?= $tabItem['caption_text'] ?>
              </p>
            <?php endif; ?>
          </div>
        </div>
        <!-- END TITLES IN SECTION -->
        <?php $features = $tabItem['repeater_features']; ?>
          <?php if ( $features ): ?>
          <div class="row d-flex justify-content-center my-4">
            <?php foreach ( $features as $key => $item ) : ?>
          <div class="col-12 col-md-6 col-lg-auto d-flex align-items-center col-features">
            <?= wp_get_attachment_image( $item['icon'], 'full', false, array('class' => 'img-repeater mx-4') ); ?>
            <div class="content">
              <h5 class="theme_purple_03_text text-center"><?= $item['title'] ?></h5>
              <h3 class="theme_purple_03_text text-center"><?= $item['description'] ?></h3>
            </div>
          </div>
          <?php endforeach;?>
        </div>
        <?php endif;  ?>
        <!-- CTA BUTTON FOR PROGRAMS SLIDER  -->
        <?php $link = $tabItem['cta_button'];  if( $link ): 
              $link_url = $link['url'];
              $link_title = $link['title'];
              $link_target = $link['target'] ? $link['target'] : '_self';
        ?>
        <div class="row pt-4">
          <div class="col-12 text-center">
            <a  class="btn btn-abertay btn-abertay-outline" 
                aria-label="<?php echo esc_html( $link_title ); ?>" 
                href="<?php echo esc_url( $link_url ); ?>" 
                target="<?php echo esc_attr( $link_target ); ?>">
                <?php echo esc_html( $link_title ); ?>
            </a>
          </div>
        </div>
        <?php endif; ?>
        <!-- END CTA BUTTON FOR PROGRAMS SLIDER  -->
      </div>
      <?php endforeach; endif; ?>
    </div>
  </div>
</section>