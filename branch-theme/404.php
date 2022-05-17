<?php
/**
 * The template for displaying 404 pages (not found)
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 * @package starter_theme
 */
  get_header();
  $bg_color = get_field('404_background_color' , 'options');
  $title_primary = get_field('404_primary_title' , 'options');
  $subtitle_page = get_field('404_subtitle_page' , 'options');
  $cta_button = get_field('404_cta_button' , 'options');
  if( $cta_button ): 
    $link_url = $cta_button['url'];
    $link_title = $cta_button['title'];
    $link_target = $cta_button['target'] ? $cta_button['target'] : '_self';
  endif;
?>

  <div id="primary" class="content-area">
    <main id="main" class="site-main">
      <section class="error-404 not-found" style="background-image: url('<?php echo get_stylesheet_directory_uri().'/public/img/bg_404.svg'; ?>'); background-color: <?= $bg_color ?>;" >
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h1 class="primary-title"><?=$title_primary?></h1>
              <h2 class="subtitle-page"><?=$subtitle_page?></h2>
            </div>
            <div class="col-12 text-center my-5">
              <?php if( $cta_button ):  ?>
                <a  class="btn btn-abertay btn-abertay-outline" 
                    href="<?php echo esc_url( $link_url ); ?>" 
                    target="<?php echo esc_attr( $link_target ); ?>">
                    <?php echo esc_html( $link_title ); ?>
                </a>
              <?php endif; ?>
            </div>
          </div>
        </div>
      </section><!-- .error-404 -->

    </main><!-- #main -->
  </div><!-- #primary -->

<?php
get_footer();
