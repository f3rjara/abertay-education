<?php
  $sub_filter_programs = get_sub_field('sub_filter_programs');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_filter_programs['visible_section'] ? 'd-none' : '';
  $id_section = $sub_filter_programs['id_section'];
  $class_custom_section = $sub_filter_programs['class_custom_section'];
  $bg_color_section = $sub_filter_programs['background_color_section'];


  // FILTER PROGRAMS
  $prg_taxonomy = $sub_filter_programs['taxonomy_programs'];

  $test_taxonomy = $prg_taxonomy['taxonomy_programs'];
  
  $terminos_seacrh  = array();
  $category_primary = '';

  if( $test_taxonomy )  {
    foreach ( $test_taxonomy as $key => $id_term ) {
      $term = get_term( $id_term  ); 
      $category_primary  =  $term->taxonomy;
      array_push( $terminos_seacrh ,  $term->slug); 
    }
  }
  $the_query = new WP_Query( array(
    'post_type' => 'programs',
    'posts_per_page' => -1,
    'orderby' => 'title',
    'order' => 'ASC',
    'tax_query' => array(
        array (
            'taxonomy' =>  $category_primary,
            'field'    => 'slug',
            'terms' => $terminos_seacrh,
            'include_children' => false
        )
    ),
  ) );
?>

<section  class="section-filter-programs py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">

    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center mb-4"><?= $sub_filter_programs['title_primary'] ?></h2>
        <?php if( strlen( $sub_filter_programs['caption_text'] ) > 0 ) :?>
          <p class="caption-text mt-4 text-center text-p2 mb-4">
            <?= $sub_filter_programs['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>

    <div class="row mx-2 mx-lg-0 mt-3">
      <div class="col-12 col-lg-2">
        Filter
      </div>
      <div class="col-12 col-lg-10">
        <div class="row">
          <? 
              while ( $the_query->have_posts() ) : $the_query->the_post();
                echo '<div class="col-12 col-md-6 col-lg-4 my-3">';
                  // Show Programm Card ...
                  get_template_part('template-parts/partials/programm_card');
                echo '</div>';
              endwhile;
              wp_reset_postdata();
            ?>
            
        </div>
      </div>
    </div>

  </div>
</section>