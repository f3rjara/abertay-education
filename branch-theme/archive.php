<?php
/**
 * The Archive  Page
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/ *
 * @package Abertay
 */
  get_header();

  $tax = $wp_query->get_queried_object();
  $taxo = 'Results For: '; 

  if ( strpos($tax->taxonomy, 'tag') !== false) { $taxo = 'Results for Tag: ';  }                
  elseif( strpos($tax->taxonomy, 'category') !== false  || strpos($tax->taxonomy, 'categories') !== false )
  {  $taxo = 'Results for Category: '; }

?>



  <main id="taxonomy-page" class="site-main taxonomy-page">
    <section>

      <div class="container py-abertay pt-0">
        <div class="row">
          <div class="col-sm-12">
            <?php
              if ( have_posts() ) : ?>
                <div class="row pt-4 row-post d-flex justify-content-center">
                <h3 class="theme_purple_01_text ps-0">
                  <?php echo $taxo ?>  <span class="theme_hot_pink_01_text title-h2"><?php echo apply_filters( 'the_title', __( $tax->name ) ); ?></span>
                </h3>
                <hr class="separator-text"> <br>
                <p class="ps-0">
                  <?php esc_html_e( 'Nothing matches your search terms? Please try again with a few different keywords.', 'Abertay' ); ?>
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
                        if( $type == 'programmes') :
                          get_template_part( 'template-parts/partials/card-programm', 'content' );
                        else : 
                          get_template_part( 'template-parts/partials/single_post_card', 'content' ); 
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