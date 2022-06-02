<?php
  $sub_fees_cards = get_sub_field('sub_fees_cards');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_fees_cards['visible_section'] ? 'd-none' : '';
  $id_section = $sub_fees_cards['id_section'];
  $class_custom_section = $sub_fees_cards['class_custom_section'];
  $bg_color_section = $sub_fees_cards['background_color_section'];
  $dark_mode = $sub_fees_cards['dark_section_mode'] ? 'dark-mode-section' : '';
  $repeater_fees = $sub_fees_cards['repeater_fees'];
?>

<section  class="section-fees-cards py-abertay <?= $hidden_section ?> <?= $dark_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row mx-2 mx-xl-0 d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-8">
        <h2 class="title-section text-center mb-4"><?= $sub_fees_cards['title_section'] ?></h2>
        <?php if( strlen( $sub_fees_cards['text_caption_section'] ) > 0 ) : ?>
          <p class="caption-text text-center text-p2 mb-4"><?= $sub_fees_cards['text_caption_section'] ?></p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row mx-2 mx-md-1 mx-xl-0 d-flex justify-content-center mt-3">
      <?php foreach ( $repeater_fees as $key => $data ): $features = $data['repeater_features']; ?>
        <div class="col-12 col-md-6 col-lg-4 col-featues mb-3">
          <div class="card h-100">
            <div class="header">
              <?php if( $data['icon_card']  ): $image = $data['icon_card'] ;
                echo wp_get_attachment_image( $image['ID'], 'full', false, array('class' => 'icon-feature') );
              endif; ?>            
              <h4 class="title-caption mb-3"><?= $data['title_caption'] ?></h4>
            </div>
            <div class="content-date">
              <ul class="list-features">
                <?php if($features): foreach ($features as $key => $value) : $is_total = $value["is_total_cost"] ? 'is_total' : ''; ?>
                  <li class="item-list">
                    <span class="title"> <?=$value["title"]?></span> <br>
                    <span class="description <?= $is_total ?>"> <?=$value["description"]?></span> 
                  </li>
                <?php endforeach; endif; ?>
              </ul>
                  
                
            </div>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
    <!-- CTA BUTTON FOR PROGRAMS SLIDER  -->
    <?php $link = $sub_fees_cards['cta_button'];  if( $link ): 
        $link_url = $link['url'];
        $link_title = $link['title'];
        $link_target = $link['target'] ? $link['target'] : '_self';
    ?>
    <div class="row ">
      <div class="col-12 mt-3 text-center">
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
</section>