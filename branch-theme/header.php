<?php
/**
 * The header for our theme
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 * @package branch_theme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
  <head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta content='width=device-width, initial-scale=1.0' name='viewport'>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta content='#fff' name='theme-color'>
    <meta content='<?php bloginfo('description'); ?>' name='description'>
    <meta content='univa' name='keywords'>
    <meta content='website' property='og:type'>
    <meta content='<?php wp_title('|', true, 'right'); ?>' property='og:title'>
    <meta content='<?php bloginfo('description'); ?>' property='og:description'>
    <meta content="<?php $featuredImage = get_field('featured_image'); echo esc_url( $featuredImage['url'] ); ?>" property="og:image"  />
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.png" />
    <?php wp_head(); ?>
  </head>

<body <?php body_class(); ?> data-page-handle="<?php echo $_SERVER['REQUEST_URI']; ?>" >

  <header class="header-site">
    <?php  
      $abertay_menu_hamburger = get_field('abertay_menu_hamburger', 'options');
      $abertay_megamenu = get_field('abertay_megamenu', 'options');
      $isLandingPage = is_page_template( 'template-landings-page.php' ) ? TRUE : FALSE;
      if( $abertay_menu_hamburger ) :
        get_template_part( 'template-parts/main-header', 'content', array('is_landing_page' => $isLandingPage) );
      else :
        if ( $abertay_megamenu ): 
          get_template_part( 'template-parts/main-header-megamenu', 'content', array('is_landing_page' => $isLandingPage) );
        else :
          get_template_part( 'template-parts/main-header-desktop', 'content', array('is_landing_page' => $isLandingPage) );
        endif;
      endif;
      
    ?>
  </header>

  <div id="site-main-content" class="site-main-content">