<?php
  /* FOOTER MAIN TEMPLATE */
  $is_landing_page = $args['is_landing_page'];
  $show_helpful_links = get_field('landings_show_helpful_links', 'options' );
  $show_social_media = get_field('landings_show_social_media', 'options' );
  $show_contact_details = get_field('landings_show_contact_details', 'options' );
?>
<footer class="main-footer" style="background-image: url('<?php echo get_stylesheet_directory_uri().'/public/img/bg_triangle.png'; ?>');">
  <div class="container">
    <div class="row row-content-footer">
      <!-- COL SOCIAL MEDIA -->
      <div class="col-12 col-lg-3 order-4 order-lg-1 col-social-media">
        <?php  if( !$is_landing_page  ) :  ?>
          <ul class="list-social">
            <?php  // Loop through rows.
              while( have_rows('abertay_repeater_social_link', 'options') ) : the_row();
              $icon_social =  get_sub_field('icon_social');
              $link_social =  get_sub_field('link_social');
            ?>
            <li class="list-item">
              <a  href="<?= $link_social['url']; ?>"
                  role="link"        
                  target="_blank" 
                  class="link-item"
                  aria-label="<?= $link_social['title']; ?>" >
                  <?= $icon_social; ?>
              </a>
            </li> 
            <?php endwhile; ?>
        </ul>
        <?php else: 
          if( $show_social_media  ) : ?>
            <ul class="list-social">
                <?php  // Loop through rows.
                  while( have_rows('abertay_repeater_social_link', 'options') ) : the_row();
                  $icon_social =  get_sub_field('icon_social');
                  $link_social =  get_sub_field('link_social');
                ?>
                <li class="list-item">
                  <a  href="<?= $link_social['url']; ?>"
                      role="link"        
                      target="_blank" 
                      class="link-item"
                      aria-label="<?= $link_social['title']; ?>" >
                      <?= $icon_social; ?>
                  </a>
                </li> 
                <?php endwhile; ?>
            </ul>
          <?php endif;
        endif;
        ?>
      </div>
      
      <!-- COL MENU FOOTER -->
      <div class="col-12 col-lg-6 col-helpful order-2">
        <?php  if( !$is_landing_page  ) : ?>
          <h5 class="title">Helpful Links: </h5>
          <?php wp_nav_menu( array( 'theme_location' => 'menu-branch-footer' ) ); 
        else : 
          if( $show_helpful_links  ) : ?>
            <h5 class="title">Helpful Links: </h5>
            <?php wp_nav_menu( array( 'theme_location' => 'menu-branch-landing-footer' ) ); 
          endif;
        endif;?>
      </div>

      <!-- COL CONTACT DETAILS -->
      <!-- <div class="col-12 col-lg-3 col-contact order-3">
      </div> -->

      <!-- COL IMAGEN FOOTER and CONTACT DETAILS  -->
      <div class="col-12 col-lg-3  mb-3 mb-lg-0 order-1 order-lg-4 col-image-footer">
        <div class="text-center">
          <?php 
            $image = get_field( 'abertay_logo_footer' , 'options' );
            $size = 'full'; // (thumbnail, medium, large, full or custom size)
            if( $image ) {
                echo wp_get_attachment_image( $image['ID'], $size, false, array( 'class' => 'img-footer-abertay') );
            }
          ?>
        </div>
        <?php  if( !$is_landing_page  ) : ?>
          <div class="col-contact mt-3">
            <h5>Contact Details</h5>
            <ul class="list-contact">
              <?php  // Loop through rows.
                while( have_rows('abertay_repeater_contact_details', 'options') ) : the_row();
                    // Load sub field value.
                    $is_linkeable = get_sub_field('is_linkeable');
                    $text_contact_item = get_sub_field('text_contact_item');
                    $link_contact_item  = get_sub_field('link_contact_item');
                    $class_link = $is_linkeable ? 'is_link' : '';
                    ?>
                    <li class="list-item text-p2 <?= $class_link ?>">
                      <?php if($is_linkeable): ?>
                      <a  href="<?= $link_contact_item['url']; ?>" rel="noopener"       
                          role="link"        
                          target="_blank" 
                          aria-label="<?= $link_contact_item['title']; ?>" > 
                          <?= $link_contact_item['title']; ?>
                      </a>
                      <?php else: 
                        echo $text_contact_item;
                      endif; ?>
                    </li>
                <?php endwhile; ?>
            </ul>
          </div>
        <?php else: 
          if( $show_contact_details  ) : ?>
          <div class="col-contact mt-3">
            <h5>Contact Details</h5>
            <ul class="list-contact">
              <?php  // Loop through rows.
                while( have_rows('abertay_repeater_contact_details', 'options') ) : the_row();
                    // Load sub field value.
                    $is_linkeable = get_sub_field('is_linkeable');
                    $text_contact_item = get_sub_field('text_contact_item');
                    $link_contact_item  = get_sub_field('link_contact_item');
                    $class_link = $is_linkeable ? 'is_link' : '';
                    ?>
                    <li class="list-item text-p2 <?= $class_link ?>">
                      <?php if($is_linkeable): ?>
                      <a  href="<?= $link_contact_item['url']; ?>" rel="noopener"       
                          role="link"        
                          target="_blank" 
                          aria-label="<?= $link_contact_item['title']; ?>" > 
                          <?= $link_contact_item['title']; ?>
                      </a>
                      <?php else: 
                        echo $text_contact_item;
                      endif; ?>
                    </li>
                <?php endwhile; ?>
            </ul>
          </div>
        <?php endif; 
        endif;?>
      </div>
    </div>
    <!-- Copyright OK -->
    <div class="row row-terms">
      <div class="col-sm-12 col-lg-6 col-menu-terms">
        <?php  if( !$is_landing_page  ) : 
            wp_nav_menu( array( 'theme_location' => 'menu-branch-terms' ) ); 
          else :
            wp_nav_menu( array( 'theme_location' => 'menu-branch-landing-terms' ) ); 
          endif;?>
      </div>
    </div>
    <div class="row row-copy">
      <div class="col-12 col-copy">
        <span>
          <?php the_field('abertay_text_copyrigth','options') ;?>
        </span>
      </div>
    </div>
  </div>
</footer>