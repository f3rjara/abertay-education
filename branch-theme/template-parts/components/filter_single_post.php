<?php
  /* while ( have_posts() ) : the_post(); $type = get_post_type( get_the_ID() );
    echo '<div class="col-12 col-md-6 col-lg-4 my-2">';
    if( $type == 'programmes') :  get_template_part( 'template-parts/partials/programm_card' );
    else :  get_template_part( 'template-parts/partials/single_post_card' ); endif;
    echo '</div>';
  endwhile;  wp_reset_postdata(); */
  $filter_posts = $args['filter_posts'];

  $hidden_section = $filter_posts['visible_section'] ? 'd-none' : '';
  $id_section = $filter_posts['id_section'];
  $class_custom_section = $filter_posts['class_custom_section'];
  $bg_color_section = $filter_posts['background_color_section'];
  $dark_mode = $filter_posts['dark_mode_section'] ? 'dark-mode' : '';

?>

<section class="section_filter_single_post <?= $hidden_section ?> <?= $dark_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container-fluid py-abertay">
    <?php if( strlen( $filter_posts['title_section'] ) > 0 ) : ?>
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-7">
        <h2 class="title-section text-center mb-4"><?= $filter_posts['title_section']  ?></h2>
        <?php if( strlen( $filter_posts['text_caption_section'] ) > 0 ) : ?>
          <p class="caption-text text-p2 text-center mb-4"><?= $filter_posts['text_caption_section']  ?></p>
        <?php endif; ?>
      </div>
    </div>
    <?php endif; ?>

    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-11">
        <div class="ajax-filter-posts">
          <?= do_shortcode( $filter_posts['shortcode_filter'] ); ?>
        </div>
      </div>
    </div>
  </div>
</section>