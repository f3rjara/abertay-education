<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package ABERTAY
 */
  get_header();
  $s = get_search_query();
?>

  <main id="taxonomy-page" class="site-main taxonomy-page">
    <section>

      <div class="container py-abertay">
        <div class="row">
          <div class="col-sm-12">
            <?php
              if ( have_posts() ) : ?>
                <div class="row pt-4 row-post d-flex justify-content-center">
                <h3 class="acg_primary_text ps-0">
                  Search results for: <span class="acg_text_gray title-h2"><?php echo $s; ?></span>
                </h3>
                <hr class="separator-text"> <br>
                <p class="ps-0">
                  <?php esc_html_e( 'Nothing matches your search terms? Please try again with a few different keywords.', 'abertay' ); ?>
                </p>
                <div class="form-div mb-5 ps-0">
                  <?php  get_search_form(); ?>
                </div>
                <section class="section-card-post-list">
                  <div class="row pt-4 d-flex justify-content-center"> 
                    <?php
                      while ( have_posts() ) : the_post();
                        $type = get_post_type( get_the_ID() );
                        echo '<div class="col-12 col-md-6 col-lg-4 my-2">';
                        if( $type == 'programs') :
                          get_template_part( 'template-parts/partials/programm_card', 'content' );
                        else : 
                          get_template_part( 'template-parts/partials/card-single-post', 'content' );
                        endif;
                        echo '</div>';
                      endwhile; 
                    ?>
                    </div>
                  </div>
                </section>
                
            <?php 
              else: 
                get_template_part( 'template-parts/content', 'none' );
              endif;	
            ?>
          </div>
        </div>
      </div>

    </section>
  </main>

<?php get_footer(); ?>
