<?php 
  /* Template Name:  Builder Landings Pages

 * The template for displaying Front Page *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 * @package branch_theme
 */
  get_header();
?>

  <main id="primary" class="site-main branch-front-page site-landing-pages">

    <?php 
      // Check value exists. ACF Flexible
      if( have_rows('sections_in_page') ):
        // Loop through rows.
        while ( have_rows('sections_in_page') ) : the_row();

          include( get_template_directory().'/template-parts/page-builder.php' ); 
      
        // End loop.
        endwhile;
      endif;
    ?>

  </main>
<?php
get_footer();