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
?>  
  <main>
    <section class="py-abertay">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="entry-content">
              <h1 class="text-center theme_purple_01_text mb-5"><?= the_title() ?></h1>
              <div class="content-of-post">
                <?= the_content() ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
<?php
  get_footer();