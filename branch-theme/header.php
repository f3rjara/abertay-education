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
    <meta content='website' property='og:type'>
	<meta name="google-site-verification" content="ZLjCER6qLoi-jr4coX9ZeEH4tUmVMoIv358GhXA4U4k" />
	<meta name="robots" content="index, follow"/>
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.png" />
	<!-- <script id="Cookiebot" src=https://consent.cookiebot.com/uc.js data-cbid="f883502d-cbe4-48d1-8e34-5681df5c56dd" data-blockingmode="auto" type="text/javascript"></script> -->
	<!-- Google Tag Manager -->
		<!-- <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-MNSDXHT');</script> -->
	<!-- End Google Tag Manager -->
    <?php wp_head(); ?>
  </head>

<body <?php body_class(); ?> data-page-handle="<?php echo $_SERVER['REQUEST_URI']; ?>" >
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MNSDXHT"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
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