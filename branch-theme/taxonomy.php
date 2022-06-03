<?php
/**
 * The Taxonomy tempalte
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/ *
 * @package ABERTAY
 */
  get_header();

  $term = get_term_by( 'slug', get_query_var( 'term' ), get_query_var( 'taxonomy' ) );
  $taxo = 'Results For: '; 
  $isStudyOnly = FALSE;
  
  if ( strpos($term->taxonomy, 'tag') !== false) { $taxo = 'Results for Tag: ';  }                
  elseif( strpos($term->taxonomy, 'category') !== false  || strpos($term->taxonomy, 'categories') !== false )
  {  $taxo = 'Results for Category: '; }

  if ( strpos($term->taxonomy, 'online_programmes') !== false) { $isStudyOnly = TRUE;  }  

?>

  <main id="taxonomy-page" class="site-main taxonomy-page">
    <section class="py-abertay">

      <div class="container">
        <div class="row">
          <div class="col-sm-12">
          <div class="wrapper">
            <div class="primary-content">
                <h3 class="theme_purple_01_text ps-0">
                <?php echo $taxo ?>  <span class="theme_hot_pink_01_text title-h2"><?php echo apply_filters( 'the_title', __( $term->name ) ); ?></span>
              </h3>
              <?php if ( !empty( $term->description ) ): ?>
                <div class="archive-description">
                  <small> <?php echo esc_html($term->description); ?> </small>
                </div>
                <hr class="separator-text mb-4">
              <?php else: ?>
                <hr class="separator-text mb-4">
              <?php endif; ?>

              <?php if ( have_posts() ): ?>
                <div class="row pt-4 d-flex justify-content-center"> 
                    <?php
                      while ( have_posts() ) : the_post();
                        $type = get_post_type( get_the_ID() );
                        echo '<div class="col-12 col-md-6 col-lg-4 my-2">';
                        if( $type == 'programmes') :
                          get_template_part( 'template-parts/partials/programm_card', 'content' );
                        else : 
                          get_template_part( 'template-parts/partials/single_post_card', 'content' );
                        endif;
                        echo '</div>';
                      endwhile; 
                    ?>
                    </div>
              <?php else: ?>

                <h2 class="post-title">
                  No News in <?php echo apply_filters( 'the_title', $term->name ); ?>
                </h2>
                <div class="content clearfix">
                  <div class="entry">
                    <p>It seems there isn't anything happening in <strong>
                      <?php echo apply_filters( 'the_title', $term->name ); ?></strong> right now. Check back later, something is bound to happen soon.</p>
                  </div>
                </div>

              <?php endif; ?>
            </div><!--// end .primary-content -->

        </div> <!-- End wrapper -->

        </div> <!-- End Col -->
      </div> <!-- End Row -->

    </section>
  </main>

<?php get_footer(); ?>