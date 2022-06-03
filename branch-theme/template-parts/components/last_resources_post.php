<?php
  /* while ( have_posts() ) : the_post(); $type = get_post_type( get_the_ID() );
    echo '<div class="col-12 col-md-6 col-lg-4 my-2">';
    if( $type == 'programmes') :  get_template_part( 'template-parts/partials/programm_card' );
    else :  get_template_part( 'template-parts/partials/single_post_card' ); endif;
    echo '</div>';
  endwhile;  wp_reset_postdata(); */

  $sub_resources  = get_sub_field('sub_last_resources_post');
  
  $hidden_section = $sub_resources['visible_section'] ? 'd-none' : '';
  $id_section = $sub_resources['id_section'];
  $class_custom_section = $sub_resources['class_custom_section'];
  $bg_color_section = $sub_resources['background_color_section'];
  $dark_mode = $sub_resources['dark_section_mode'] ? 'dark-mode-section' : '';
  $posts_per_page = 3;
  /* the last post   */
  $data_query = array(
    'posts_per_page' => $posts_per_page, /* how many post you need to display */
    'offset' => 0,
    'orderby' => 'post_date',
    'order' => 'DESC',
    'post_type' => 'post', /* your post type name */
    'post_status' => 'publish'
  );
  $query = new WP_Query($data_query);

?>

<section class="section-last-resources-post <?= $hidden_section ?> <?= $dark_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container py-abertay">
    <?php if( strlen( $sub_resources['title_section'] ) > 0 ) : ?>
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-7">
        <h2 class="title-section text-center mb-5"><?= $sub_resources['title_section']  ?></h2>
        <?php if( strlen( $sub_resources['text_caption_section'] ) > 0 ) : ?>
          <p class="caption-text text-p2 text-center mb-5"><?= $sub_resources['text_caption_section']  ?></p>
        <?php endif; ?>
      </div>
    </div>
    <?php endif; ?>

    <div class="row row-last-posts justify-content-center align-items-center">
      <?php
        if ($query->have_posts()) : $current_post = 0;
          while ( $query->have_posts() ) : $query->the_post();
            $description_card = substr( get_the_excerpt() , 0, 230) . '...' ;
            $post_permalink = get_permalink( get_the_ID() );
            if( $current_post == 0 ) :
        ?>
          <div class="col-12 col-lg-6 h-100">
            <div class="card large-card-post">
              <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" >
                <?= get_the_post_thumbnail(get_the_ID(), 'full', array('class' => 'img-post')); ?>
              </a>
              <div class="content-card">
                <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" > <h2 class="title-post"><?= get_the_title(); ?></h2></a>
                <p class="extract-content card-text"><?= $description_card ?></p>
                <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" 
                  class="btn btn-abertay btn-abertay-outline">
                  Find out more
                </a>
              </div>
            </div>
          </div> <div class="col-12 col-lg-6 h-100">
          <?php else : $description_card = substr( get_the_excerpt() , 0, 100) . '...' ; ?>
            <div class="card small-card-post">
              <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" >
                <?= get_the_post_thumbnail(get_the_ID(), 'full', array('class' => 'img-post')); ?>
              </a>
              <div class="content-card">
                <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" > <h2 class="title-post"><?= get_the_title(); ?></h2></a>
                <p class="extract-content card-text"><?= $description_card ?></p>
                <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" 
                  class="btn btn-abertay btn-abertay-outline">
                  Find out more
                </a>
              </div>
            </div>
          <?php endif; ?>
          <?php if( $current_post == ($posts_per_page - 1) ): ?></div><?php endif; ?>
        <?php  $current_post ++; endwhile; wp_reset_postdata();  endif; ?>
    </div>

    <!-- CTA BUTTON FOR PROGRAMS SLIDER  -->
    <?php $link = $sub_resources['cta_button'];  if( $link ): 
      $link_url = $link['url'];
      $link_title = $link['title'];
      $link_target = $link['target'] ? $link['target'] : '_self';
    ?>
    <div class="row mt-3 mt-lg-5">
      <div class="col-12 text-center">
        <a  class="btn btn-abertay" 
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

