<?php
  $sub_list_programs = get_sub_field('sub_list_programs');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_list_programs['visible_section'] ? 'd-none' : '';
  $id_section = $sub_list_programs['id_section'];
  $class_custom_section = $sub_list_programs['class_custom_section'];
  $bg_color_section = $sub_list_programs['background_color_section'];
  $partial_filter = $sub_list_programs['partial_filter'];
  /* CONFIGURATION QUERY POST*/
  $filter_tax = $partial_filter['taxonomy_programs'];
  $terminos_seacrh  = array();
  $category_primary = '';
  if( $filter_tax )  {
    foreach ( $filter_tax as $key => $id_term ) {
      $term = get_term( $id_term  );
      $category_primary  =  $term->taxonomy;
      array_push( $terminos_seacrh ,  $term->slug); 
    }
  }
  $the_query = new WP_Query( array(
    'post_type'       => $partial_filter['cards_post_type'],
    'posts_per_page'  => $partial_filter['cards_posts_per_page'],
    'orderby'         => $partial_filter['cards_orderby'],
    'order'           => $partial_filter['cards_order'],
    'paged'           => $paged,
    'post_status'     => 'publish',
    'tax_query' => array(
        array (
            'taxonomy' =>  $category_primary,
            'field'    => 'slug',
            'terms' => $terminos_seacrh,
            'include_children' => false
        )
    ),
  ));
?>

<section  class="section-slider-programs py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>" 
          id="<?= $id_section ?>" style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <!-- TITLES SECTIONS  -->
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center mb-4"><?= $sub_list_programs['title_primary'] ?></h2>
      </div>
      <div class="col-12 col-lg-7 px-lg-2">
        <?php if (strlen($sub_list_programs['caption_text']) > 0) : ?>
          <p class="caption-text mt-4 text-center text-p2 mb-4">
            <?= $sub_list_programs['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
    <!-- END TITLES SECTIONS  -->

    <div class="row">
      <? while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
          <div class="col-12 col-md-6 col-lg-4 my-3 d-flex justify-content-center">           
            <?php get_template_part('template-parts/partials/programm_card'); ?>
          </div>
      <?php endwhile; wp_reset_postdata(); ?>
    </div>

    <!-- CTA BUTTON FOR PROGRAMS SLIDER  -->
    <?php $link = $sub_list_programs['act_button'];  if( $link ): 
          $link_url = $link['url'];
          $link_title = $link['title'];
          $link_target = $link['target'] ? $link['target'] : '_self';
    ?>
    <div class="row mt-4">
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
</section>