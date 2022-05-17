<?php 
  $sub_thank_page = get_sub_field('sub_thank_page');
  $bg_color = $sub_thank_page['background_color_section'];
  $class_custom = $sub_thank_page['class_custom_section'];
  $id_section = $sub_thank_page['id_section'];
  //content
  $title_primary = $sub_thank_page['primary_title'];
  $subtitle_page = $sub_thank_page['subtitle_page'];
  $text_caption = $sub_thank_page['text_caption'];

  $cta_button_one = $sub_thank_page['act_outline'];
  $cta_button = $sub_thank_page['act_button'];

?>
<section class="section-thank-you-page <?= $class_custom?>" 
        style="background-image: url('<?php echo get_stylesheet_directory_uri().'/public/img/bg_thank.svg'; ?>'); background-color: <?= $bg_color ?>;"
        id="<?= $id_section?>">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12">
        <h1 class="primary-title"><?= $title_primary ?></h1>
        <h2 class="subtitle-page"><?= $subtitle_page ?></h2>
      </div>
      <div class="col-12 col-lg-5 my-4">
        <p class="text-caption"><?= $text_caption ?></p>
      </div>
    </div>
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-6 text-center my-2">
        <?php if( $cta_button_one ):  
                $link_url = $cta_button_one['url'];
                $link_title = $cta_button_one['title'];
                $link_target = $cta_button_one['target'] ? $cta_button_one['target'] : '_self';  ?>
          <a  class="btn btn-abertay btn-abertay-outline-pink  my-2" 
              href="<?php echo esc_url( $link_url ); ?>" 
              target="<?php echo esc_attr( $link_target ); ?>">
              <?php echo esc_html( $link_title ); ?>
          </a>
        <?php endif; ?>

        <?php if( $cta_button ): 
                $link_url = $cta_button['url'];
                $link_title = $cta_button['title'];
                $link_target = $cta_button['target'] ? $cta_button['target'] : '_self'; ?>
          <a  class="btn btn-abertay my-2" 
              href="<?php echo esc_url( $link_url ); ?>" 
              target="<?php echo esc_attr( $link_target ); ?>">
              <?php echo esc_html( $link_title ); ?>
          </a>
        <?php endif; ?>

      </div>
    </div>
  </div>
</section>
