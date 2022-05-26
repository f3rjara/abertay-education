<?php
/**
 * The main template file
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 * @package starter_theme
 */
  get_header();
  $pagePostID = intval( get_option('page_for_posts') );
  $hero_clone = get_field('clone_hero_resources', $pagePostID);
  $filter_posts = get_field('clone_filter_posts', $pagePostID);
?>

  <main id="primary" class="site-main branch-front-page">
    <?php 
      // Add Banner with Texy for Blog Page
      get_template_part(  'template-parts/components/hero_banner_text', 'content', array('hero_clone' => $hero_clone));
      // Add the Last post published
      get_template_part(  'template-parts/components/last_post' );
      // Add the Filter Sinbgle Post published
      get_template_part(  'template-parts/components/filter_single_post', 'content', array('filter_posts' => $filter_posts));
      // Check value exists. ACF Flexible FOR PAGE BUILDER COMPONENTS
      if( have_rows('sections_in_page', $pagePostID) ):
        // Loop through rows.
        while ( have_rows('sections_in_page', $pagePostID) ) : the_row();

          include( get_template_directory().'/template-parts/page-builder.php' ); 
      
        // End loop.
        endwhile;
      endif;
    ?>
  </main>
<?php
  get_footer();
