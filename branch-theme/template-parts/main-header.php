<?php
/*  MAIN HEADER */
$abertay_logo_white = get_field('abertay-logo-white', 'options');
$abertay_logo_color = get_field('abertay-logo-color', 'options');
$size = 'full';

$cta_navbar_primary = get_field('abertay_cta_navbar_primary', 'options');
if ($cta_navbar_primary) :
  $link_url_secondary      = $cta_navbar_primary['url']    ? $cta_navbar_primary['url']    : '#';
  $link_title_secondary    = $cta_navbar_primary['title']  ? $cta_navbar_primary['title']  : 'REQUEST INFO';
  $link_target_secondary   = $cta_navbar_primary['target'] ? $cta_navbar_primary['target'] : '_self';
endif;
?>

<nav class="navbar navbar-expand-lg navbar-abertay" id="navbar-abertay-primary" role="navigation" aria-current="true">
  <div class="container">
    <div class="row w-100">
      <!-- LOGO SITE MAIN -->
      <div class="col-8 col-lg-7">
        <a href="/" aria-label="Abertay Univeristy" class="target_logo">
          <?php  if ($abertay_logo_white) {
            echo wp_get_attachment_image($abertay_logo_white['ID'], $size, false, array('class' => "abertay_logo_white logo-navbar"));
          }  if ($abertay_logo_color) {
            echo wp_get_attachment_image($abertay_logo_color['ID'], $size, false, array('class' => "abertay_logo_color logo-navbar d-none"));
          } ?>
        </a>
      </div>
      <!-- CTA ACTION NAVBAR -->
      <div class="col-3 col-lg-3 d-none d-lg-flex justify-content-end">
        <a  class="btn btn-abertay btn-abertay-medium px-5" 
            href="<?php echo esc_url( $link_url_secondary ); ?>"
            target="<?php echo esc_attr( $link_target_secondary ); ?>"
            aria-label="<?php echo esc_html( $link_title_secondary ); ?>" 
            type="button" >
                <?php echo esc_html( $link_title_secondary ); ?>
        </a>
      </div>
      <!-- BTN CALL TO FORM SEARCH -->
      <div class="col-2 col-lg-1 d-flex justify-content-end">
        <button class="btn button-search-toogle" 
                  id="button-search-toogle"
                  aria-label="Search content" 
                  type="button"> 
          <object type="image/svg+xml"
                  style="pointer-events: none;"
                  alt="What programme are you looking for"
                  aria-label="What programme are you looking for" 
                  data="<?php echo get_stylesheet_directory_uri().'/public/img/icon_search.svg'; ?>" 
                  class="logo">
          </object>
        </button>        
      </div>
      <!-- BTN TO COLLAPSE MENU -->
      <div class="col-2 col-lg-1 d-flex justify-content-center">
        <button class="navbar-toggle-abertay" type="button" aria-label="Toggle navigation">
          <div class="McButton"> <b></b> <b></b> <b></b> </div>
        </button>
      </div>
    </div>

    <!-- FORM TO SEARCH TEMPLATE -->
    <?php get_template_part('template-parts/layout/form_search_navbar'); ?>

    <!-- Collapse Menu Primary -->
    <?php get_template_part('template-parts/layout/collapse_menu_primary'); ?>
  </div>
</nav>

<!-- Fixed CTA for movil -->
<div class="col-btn-action-fixed d-block d-lg-none">
  <a class="btn btn btn-abertay button-action-fix" href="<?php echo esc_url($link_url_secondary); ?>" target="<?php echo esc_attr($link_target_secondary); ?>" aria-label="<?php echo esc_html($link_title_secondary); ?>" rel="noopener" type="button">
    <?php echo esc_html($link_title_secondary); ?>
  </a>
</div>

<!-- Toast Errror Mensage-->
<div class="toast toast-abertay" id="toastNotice" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    <img src="<?php echo get_stylesheet_directory_uri(); ?>/favicon.png" class="rounded me-2" alt="<?php echo get_bloginfo('name'); ?>" width="22px">
    <strong class="me-auto">Abertay University</strong>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
  </div>
  <div class="toast-body">
    <?php the_field('abertay_message_error_search', 'options'); ?>
  </div>
</div>