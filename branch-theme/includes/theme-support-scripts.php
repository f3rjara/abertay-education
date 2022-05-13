<?php
/**
 * branch_theme Enqueque and Register Scripts
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 * @package branch_theme
*/


if( ! function_exists( 'branch_theme_scripts' ) ) : 
  function branch_theme_scripts() {
    global $wp_query; 

    if( wp_get_environment_type() === 'development' ) {
      // load assets for (dev)
      wp_enqueue_script( 'jquery' );
      wp_register_script( 'branch_my_loadmore', get_stylesheet_directory_uri() . '/public/js/myloadmore.js', array('jquery') );
      wp_enqueue_script('branch_theme-scripts-dev', 'http://localhost:8080/site.js');
      wp_enqueue_style( 'splide_css', get_stylesheet_directory_uri() . '/public/css/splide.min.css',array(), '1');
      wp_enqueue_script( 'splide_js', get_stylesheet_directory_uri() . '/public/js/splide.min.js', null ,  '4.5.2',true);
    } else {
      // load assets (prod) in dist
      wp_enqueue_script( 'jquery' );
      wp_register_script( 'branch_my_loadmore', get_stylesheet_directory_uri() . '/public/js/myloadmore.js', array('jquery') );
      wp_enqueue_style('branch_theme-style', get_template_directory_uri() . '/dist/site.min.css');
      wp_enqueue_script('branch_theme-scripts', get_template_directory_uri() . '/dist/site.js');
      wp_enqueue_style( 'splide_css', get_stylesheet_directory_uri() . '/public/css/splide.min.css',array(), '1');
      wp_enqueue_script( 'splide_js', get_stylesheet_directory_uri() . '/public/js/splide.min.js', null ,  '4.5.2',true);
      //wp_enqueue_script('branch_theme-admin-scripts', get_template_directory_uri() . '/dist/admin.js');
    }
  }
endif;

add_action( 'wp_enqueue_scripts', 'branch_theme_scripts' );
