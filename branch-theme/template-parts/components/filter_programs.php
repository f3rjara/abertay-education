<?php
  $sub_filter_programs = get_sub_field('sub_filter_programs');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_filter_programs['visible_section'] ? 'd-none' : '';
  $id_section = $sub_filter_programs['id_section'];
  $class_custom_section = $sub_filter_programs['class_custom_section'];
  $bg_color_section = $sub_filter_programs['background_color_section'];
  // Filter Repeater 
  $repetaer_filter = $sub_filter_programs['repetaer_filter'];
  $id_uniq = uniqid();
  if ( get_query_var('page') ) { $paged = get_query_var('page'); $ispage = 'page'; } 
  elseif ( get_query_var('paged') ) { $paged = get_query_var('paged'); $ispage = 'paged'; } 
  else { $paged = 1;  }
?>

<section  class="section-filter-programs py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container-fluid px-5">

    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center mb-3"><?= $sub_filter_programs['title_primary'] ?></h2>
      </div>
      <div class="col-12 col-lg-6 px-lg-4">
        <?php if( strlen( $sub_filter_programs['caption_text'] ) > 0 ) :?>
          <p class="caption-text mt-4 text-center text-p2 mb-4">
            <?= $sub_filter_programs['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>

    <div class="row mx-2 mx-lg-0 mt-3">
      <div class="col-12 col-lg-2">

        <ul class="list-items-filters nav nav-tabs"  id="tabsFilters" role="tablist">
          <!-- TITLE FILTER -->
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="filter-tab" type="button" role="tab">
              Filter 
              <div class="svg-icon">
                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M19.2034 9.62719H9.47947C9.08668 8.12583 7.73373 7.00854 6.11017 7.00854C4.48661 7.00854 3.13366 8.12583 2.74086 9.62719H0V11.3729H2.74086C3.13366 12.8743 4.48661 13.9916 6.11017 13.9916C7.73373 13.9916 9.08668 12.8743 9.47947 11.3729H19.2034V9.62719ZM6.11017 12.2458C5.15 12.2458 4.3644 11.4602 4.3644 10.5001C4.3644 9.5399 5.15 8.75431 6.11017 8.75431C7.07034 8.75431 7.85593 9.5399 7.85593 10.5001C7.85593 11.4602 7.07034 12.2458 6.11017 12.2458Z" fill="#432768"/>
                  <path d="M19.2034 3.51696H18.2083C17.8155 2.0156 16.4625 0.898315 14.839 0.898315C13.2154 0.898315 11.8625 2.0156 11.4697 3.51696H0V5.26272H11.4697C11.8625 6.76407 13.2154 7.88136 14.839 7.88136C16.4625 7.88136 17.8155 6.76407 18.2083 5.26272H19.2034V3.51696ZM14.839 6.1356C13.8788 6.1356 13.0932 5.35001 13.0932 4.38984C13.0932 3.42967 13.8788 2.64408 14.839 2.64408C15.7991 2.64408 16.5847 3.42967 16.5847 4.38984C16.5847 5.35001 15.7991 6.1356 14.839 6.1356Z" fill="#432768"/>
                  <path d="M14.839 13.1187C13.2154 13.1187 11.8625 14.2359 11.4697 15.7373H0V17.4831H11.4697C11.8625 18.9844 13.2154 20.1017 14.839 20.1017C16.4625 20.1017 17.8155 18.9844 18.2083 17.4831H19.2034V15.7373H18.2083C17.8155 14.2359 16.4625 13.1187 14.839 13.1187ZM14.839 18.3559C13.8788 18.3559 13.0932 17.5703 13.0932 16.6102C13.0932 15.65 13.8788 14.8644 14.839 14.8644C15.7991 14.8644 16.5847 15.65 16.5847 16.6102C16.5847 17.5703 15.7991 18.3559 14.839 18.3559Z" fill="#432768"/>
                </svg>
              </div>
            </button>
          </li>
          <!--  ********** REPEATER FOR TABS FILTER PROGRAMM CATEGORY ************************* -->
          <?php if( $repetaer_filter ): foreach ( $repetaer_filter  as $key => $filter ): ?>
            <li class="nav-item" role="presentation">
              <button class="nav-link isfilter <?php if($key == 0) echo 'active' ?>"
                      id="filter-tab-<?=$id_uniq?>-<?=$key?>"
                      data-bs-target="#filter-content--<?=$id_uniq?>-<?=$key?>"
                      aria-selected="<?= ($key == 0) ? 'true' : 'false' ?>"
                      aria-controls="filter-programm-<?=$id_uniq?>-<?=$key?>"
                      data-bs-toggle="tab" type="button" role="tab">
                <?= $filter['label_filter_tab'] ?>
                <div class="svg-icon">
                  <svg width="20" height="13" viewBox="0 0 20 13" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M-6.87523e-05 2.50704L9.99289 12.5L19.9858 2.50705L17.9929 0.5L9.99289 8.49997L1.99287 0.499999L-6.87523e-05 2.50704Z" fill="#432768"/></svg>
                </div>
              </button>
            </li>
          <?php endforeach; endif;?>
          <!--  ********** END REPEATER FOR TABS FILTER PROGRAMM CATEGORY ************************* -->
        </ul>
      </div>
      <div class="col-12 col-lg-10">
        <div class="row">
          <div class="tab-content" id="filterContentTab">
            <!--  ********** REPEATER FOR CONTENT TABS  PROGRAMM  ************************* -->
            <?php if( $repetaer_filter ): foreach ( $repetaer_filter  as $key => $filter ): ?>
              <div  class="tab-pane fade <?php if($key == 0) echo 'show active'; ?>"
                    id="filter-content--<?=$id_uniq?>-<?=$key?>"
                    aria-labelledby="filter-tab-<?=$id_uniq?>-<?=$key?>"
                    role="tabpanel" >
                <!-- FILTER PROGRAMS FOR CATGORY -->
                <?php              
                $partial_filter = $filter['partial_filter'];
                $filter_tax = $partial_filter['taxonomy_programs'];
                $terminos_seacrh  = array();
                $category_primary = '';
                if( $filter_tax )  {
                  foreach ( $filter_tax as $key => $id_term ) {
                    $term = get_term( $id_term  );
                    $category_primary  =  $term->taxonomy;
                    array_push( $terminos_seacrh ,  $term->slug); 
                  }
                }
                $the_query = new WP_Query( array(
                  'post_type'       => $partial_filter['cards_post_type'],
                  'posts_per_page'  => $partial_filter['cards_posts_per_page'],
                  'orderby'         => $partial_filter['cards_orderby'],
                  'order'           => $partial_filter['cards_order'],
                  'paged'           => $paged,
                  'post_status'     => 'publish',
                  'tax_query' => array(
                      array (
                          'taxonomy' =>  $category_primary,
                          'field'    => 'slug',
                          'terms' => $terminos_seacrh,
                          'include_children' => false
                      )
                  ),
                ));
                ?>
                <div class="row">
                  <? while ( $the_query->have_posts() ) : $the_query->the_post();
                      echo '<div class="col-12 col-md-6 col-lg-4 my-3 d-flex justify-content-center">';
                        // Show Programm Card ...
                        get_template_part('template-parts/partials/programm_card');
                      echo '</div>';
                    endwhile;
                    wp_reset_postdata();
                  ?>
                </div>
                <!-- END FILTER PROGRAMS FOR CATGORY -->
                <!-- CTA BUTTON FOR PROGRAMS FILTER  -->
                <?php $link = $filter['act_button'];  if( $link ): 
                    $link_url = $link['url'];
                    $link_title = $link['title'];
                    $link_target = $link['target'] ? $link['target'] : '_self';
                ?>
                  <div class="row mt-4">
                    <div class="col-12 text-center">
                      <a  class="btn btn-abertay btn-abertay-outline" 
                          aria-label="<?php echo esc_html( $link_title ); ?>" 
                          href="<?php echo esc_url( $link_url ); ?>" 
                          target="<?php echo esc_attr( $link_target ); ?>">
                          <?php echo esc_html( $link_title ); ?>
                      </a>
                    </div>
                  </div>
                <?php endif; ?>
                <!-- END CTA BUTTON FOR PROGRAMS FILTER  -->
              </div>
            <?php endforeach; endif;?>
            <!--  ********** END REPEATER FOR CONTENT TABS  PROGRAMM  ************************* -->
          </div>
        </div>
      </div>
    </div>
  </div>
</section>