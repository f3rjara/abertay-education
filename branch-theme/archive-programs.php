<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package starter_theme
 */

get_header();
?>

  <main id="primary" class="site-main branch-front-page">

  <?php 
    // Check value exists. ACF Flexible
    if( have_rows('sections_in_page_programs' , 'options' ) ):
      // Loop through rows.
      while ( have_rows( 'sections_in_page_programs', 'options' ) ) : the_row();

        include( get_template_directory().'/template-parts/page-builder.php' ); 
    
      // End loop.
      endwhile;
    endif;
  ?>

  </main>

<?php
get_footer();
