<?php

/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package branch_theme
 */

  get_header();
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
