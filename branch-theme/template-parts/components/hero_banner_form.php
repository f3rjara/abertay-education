<?php
  $sub_hero_banner_form = get_sub_field('sub_hero_banner_form');
  
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_hero_banner_form['visible_section'] ? 'd-none' : 'd-block';
  $id_section = $sub_hero_banner_form['id_section'];
  $class_custom_section = $sub_hero_banner_form['class_custom_section'];

  $bg_color_section = $sub_hero_banner_form['background_color_section'];

  $bg_image_desktop = $sub_hero_banner_form['background_image_desktop'];
  $bg_image_mobile = $sub_hero_banner_form['background_image_movil'];

  /* CONFIGURATION CONTENT */
  $text_color_section = $sub_hero_banner_form['text_color_section'];
  $accent_color_section = $sub_hero_banner_form['accent_color_section'];
  $is_hero_title = $sub_hero_banner_form['is_hero_title'];
  $flexible_content = $sub_hero_banner_form['flexible_content'];

  /* CONFIGURATION NINJA FORM */
  $show_ninja_form = $sub_hero_banner_form['show_ninja_form'];
  $data_form  = array (
    "title" => $sub_hero_banner_form['title_ninja_form'],
    "shortcode" => $sub_hero_banner_form['shortcode_ninja_form']
  )
  
  
?>
<section  class="section-hero-banner-form <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">

  <div class="container-fluid container-image">
    <picture class="picture-content">
        <source media="(min-width: 521px)" srcset="<?php echo $bg_image_desktop['url'];?>">
        <source media="(max-width: 520px)" srcset="<?php echo $bg_image_mobile['url'];?>">
        <img class="resp-img" alt="ACCELERATE YOUR CARRER" src="<?php echo $bg_image_mobile['url'];?>"/>
    </picture>
  </div>

  <div class="container container-content">
    <div class="row w-100">

      <div class="col-12 col-lg-6 col-titles-banner ">
        <?php if( $flexible_content ) : 
          foreach ( $flexible_content as $key => $content ): 
            if( $content['acf_fc_layout'] == 'flex_primary_ttile') : ?>
              <h1 class="primary-title <?=  $is_hero_title ? 'hero-title' : '' ?>" 
                  style="color: <?=  $text_color_section ?>">
                  <?php if (strlen($content['prepend_text_title'])  > 0 ): ?>
                    <span class="append-text-title" style=" color: <?= $accent_color_section ?>">
                    <?= $content['prepend_text_title'] ?>
                    </span><br>
                  <?php endif; ?>
                  <?= $content['text_primary_title'] ?>
              </h1>
            <?php endif;
            if( $content['acf_fc_layout'] == 'flex_subtitle') : ?>
              <h2 class="subtitle-title <?=  $is_hero_title ? 'title-h1' : '' ?>"
                  style="color: <?=  $accent_color_section ?>">
                  <?= $content['text_subtitle'] ?>
              </h2>
            <?php endif;
            if( $content['acf_fc_layout'] == 'flex_text_caption') : ?>
              <h4 class="flex_text_caption theme_mint_green_05_text" ">
                  <?= $content['text_caption'] ?>
              </h4>
            <?php endif;
            if( $content['acf_fc_layout'] == 'flex_apply_start_date') : ?>
              <div class="box-apply-date">
                <div class="container-apply-date">
                  <div class="block-apply-date">
                    <p class="title-apply-date" >
                      Apply By
                    </p>
                    <p class="content-apply-date" >
                      <?= $content['apply_by'] ?>
                    </p>
                  </div> 
                  <div class="block-apply-date second-block-apply-date">
                    <p class="title-apply-date" >
                      To Start
                    </p>
                    <p class="content-apply-date" >
                      <?= $content['to_start'] ?>
                    </p>
                  </div>
                </div>
              </div>
              
            <?php endif;
            if( $content['acf_fc_layout'] == 'flex_repeater_features') :  
                $features = $content['repeater_features'];
                if( $features ) : ?>
                  <ul class="list-features">
                    <?php  foreach ( $features as $key => $item ) : $image = $item['image_icon'] ?>
                      <li class="list-item" style="color: <?=  $text_color_section ?>">
                        <?=  wp_get_attachment_image( $image['ID'], 'full', TRUE, array('class' => 'icono') ) ?> 
                        <span> <?= $item['text_caption'] ?></span>
                      </li>
                    <?php endforeach; ?>                
                  </ul>
                <?php endif;
            endif;
          endforeach;
        ?>

        <?php else: ?>
          <div class="min-content"></div>
        <?php endif;?>
      </div>

      <div class="col-12 col-lg-6 col-form-banner d-flex justify-content-center justify-content-lg-end">
        <?php 
          if( $show_ninja_form ) : 
            get_template_part(
              'template-parts/partials/partial_form_banner', 
              'form' , 
              array( 'data_form' => $data_form )
            );
          endif;
        ?>
      </div>

    </div>
  </div>
</section>