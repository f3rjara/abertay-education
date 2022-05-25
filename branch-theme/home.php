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
  $hero_clone = get_field('clone_hero_resources');
?>

  <main id="primary" class="site-main branch-front-page">
    <?php 
      get_template_part(  'template-parts/components/hero_banner_text', 'banner-text',
                          array('hero_clone' => $hero_clone));
    ?>
    <section class="py-abertay">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1>Home Blog Page of abertay</h1>
          </div>
        </div>
      </div>
    </section>
  </main>
<?php
  get_footer();
