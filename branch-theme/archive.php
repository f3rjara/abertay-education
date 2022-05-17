<?php
/**
 * The Archive  Page
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/ *
 * @package Abertay
 */
  get_header();

  $tax = $wp_query->get_queried_object();
  $taxo = 'Resultados para: '; 

  if ( strpos($tax->taxonomy, 'tag') !== false) { $taxo = 'Resultados para la etiqueta: ';  }                
  elseif( strpos($tax->taxonomy, 'category') !== false  || strpos($tax->taxonomy, 'categories') !== false )
  {  $taxo = 'Resultados para la categoria: '; }

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
                  <?php echo $taxo ?>  <span class="acg_text_gray title-h2"><?php echo apply_filters( 'the_title', __( $tag->name ) ); ?></span>
                </h3>
                <hr class="separator-text"> <br>
                <p class="ps-0">
                  <?php esc_html_e( '¿Nada coincide con sus términos de búsqueda?. Vuelva a intentarlo con algunas palabras clave diferentes.', 'univa' ); ?>
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
                          get_template_part( 'template-parts/partials/card-programm', 'content' );
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