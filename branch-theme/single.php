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
  <main id="main" class="site-main main-single-post" role="main">
    <div class="container py-abertay pt-3">
      <div class="row row-thumbnail-post d-flex justify-content-center">
        <div class="col-12 col-lg-9">
          <h1 class="title-post"><?= the_title() ?></h1>
        </div>
        <div class="col-12 col-lg-9">
          <?= get_the_post_thumbnail(get_the_ID(), 'full', array('class' => 'img-post-thumbnail')); ?>
        </div>
      </div>

      <div class="row position-relative py-abertay">

        <div class="col-12 col-lg-1 col-shared-post in-desktop d-none d-lg-flex">
          <?php get_template_part('template-parts/partials/shared_post'); ?>
        </div>

        <div class="col-sm-12 col-lg-8 px-3 px-lg-3 single-post-content">
          <p class="date-post"> <?php the_time('M j, Y'); ?></p>
          <div class="content-of-post">
            <?php __(the_content()); ?>
          </div>

          <div class="navigation-posts my-3 mt-5 my-lg-5">
            <?php if (get_the_post_navigation()) : ?>
              <div class="col-12 single-post-navigation">
                <?php
                $url = get_stylesheet_directory_uri();
                $next = '<i class="bx bx-chevron-right"></i>';
                $prev = '<i class="bx bx-chevron-left"></i>';
                the_post_navigation(
                  array(
                    'prev_text' =>  $prev . '<span class="nav-subtitle">' . esc_html__('Previous', 'uj') . '</span> <p class="short_title"> %title </p>',
                    'next_text' => '<span class="nav-subtitle">' . esc_html__('Next', 'uj') . '</span> <p class="short_title"> %title </p> ' . $next,
                  )
                );
                ?>
              </div>
            <?php endif; ?>
          </div>
        </div>

        <div class="col-sm-12 col-lg-3 mt-lg-0 single-post-relations">
          <div class="col-12 col-shared-post mb-1 mb-lg-5 d-block d-lg-none ">
            <?php get_template_part('template-parts/partials/shared_post'); ?>
          </div>
          <div class="last-post d-none d-lg-block">
            <ul class="list-group">
              <li class="list-group-item px-0">
                <h4 class="mb-0">Related articles</h4>
              </li>
              <!-- <?php $LastPosts = new WP_Query(
                      array(
                        'posts_per_page'  =>  5,
                        'post_status'     =>  'publish',
                        'post_type'        =>  $args['post_type'], // or 'post', 'page'
                        'orderby'         =>  $args['orderby'], // or 'date', 'rand'
                        'order'           =>  $args['order'] // or 'DESC'
                      )
                    );
                    ?> -->
              <?php if ($LastPosts->have_posts()) : ?>
                <?php while ($LastPosts->have_posts()) : $LastPosts->the_post(); ?>
                  <li class="list-group-item py-3 px-0 item-navigation">
                    <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                  </li>
              <?php endwhile;
                wp_reset_postdata();
              endif; ?>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </main><!-- #main -->
</div><!-- #primary -->

<?php
get_footer();
