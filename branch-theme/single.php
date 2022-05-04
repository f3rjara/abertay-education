<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package branch_theme
 */

get_header();

$test_taxonomy = get_field('taxonomy_programs');
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

while ( $the_query->have_posts() ) : $the_query->the_post();
  // Show Posts ...
  echo "----";
  the_title( '<h1 class="entry-title">', '</h1>' );
  echo "----";
endwhile;
wp_reset_postdata();

?>

<div id="primary" class="content-area">
  <main id="main" class="site-main">

    <div class="section-single-post">
      <div class="container py-5">
        <div class="row justify-content-center">
          <div class="col-12 col-lg-8">
            <?php
            while (have_posts()) :
              the_post();
              get_template_part('template-parts/content', get_post_type());
              the_post_navigation();
              if (comments_open() || get_comments_number()) :
                comments_template();
              endif;
            endwhile; // End of the loop.
            ?>
          </div>
        </div>
      </div>
    </div>

  </main><!-- #main -->
</div><!-- #primary -->

<?php
get_footer();
