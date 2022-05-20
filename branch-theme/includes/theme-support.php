<?php 
/**
   * starter_theme functions and definitions
   * @link https://developer.wordpress.org/themes/basics/theme-functions/
   * @package palytic_theme
*/


if ( ! function_exists( 'branch_theme_setup' ) ) :

    function branch_theme_setup() {

    /**
     * Make theme available for translation.
     * Translations can be placed in the /languages/ directory.
    */
    load_theme_textdomain( 'branch-theme', get_template_directory() . '/languages' );
    
    /**
     * Enable support for post thumbnails and featured images.
    */
    add_theme_support( 'post-thumbnails' );

    /*
     * Let WordPress manage the document title.
     * By adding theme support, we declare that this theme does not use a
     * hard-coded <title> tag in the document head, and expect WordPress to
     * provide it for us.
     * Remove <title> in your Header.php
    */
    add_theme_support( 'title-tag' );


    // This theme uses wp_nav_menu() in one location.
    $locations = ( array (
      'menu-branch-primary'  =>   esc_html__( 'Primary Menu', 'Branch' ), 
      'menu-branch-footer'   =>   esc_html__( 'Primary Footer', 'Branch' ),
      'menu-branch-terms'    =>   esc_html__( 'Primary Terms', 'Branch' ),
      'menu-branch-landing-primary'    =>   esc_html__( 'Primary Menu Landing', 'Branch' ),
      'menu-branch-landing-footer'    =>   esc_html__( 'Primary Footer Landing', 'Branch' ),
      'menu-branch-landing-terms'    =>   esc_html__( 'Primary Terms Landing', 'Branch' )
    ) );

    register_nav_menus( $locations );

    /*
     * Switch default core markup for search form, comment form, and comments
     * to output valid HTML5.
     */
    add_theme_support( 'html5',
    array(
      'search-form',
      'comment-form',
      'comment-list',
      'gallery',
      'caption',
      'style',
      'script',
      'responsive-embeds',
      'wp-block-styles',
      'widgets',
      'widgets-block-editor',
      'editor-styles',
      'wp-block-style',
      'align-wide'
    ) );
    
    /**
     * Enable support for the following post formats:
     * aside, gallery, quote, image, and video
     */
    add_theme_support( 'post-formats', array ( 'aside', 'gallery', 'quote', 'image', 'video' ) );
  
    // Add theme support for selective refresh for widgets.
    add_theme_support( 'customize-selective-refresh-widgets' );

    /**
     * Add support for core custom logo.
     *
     * @link https://codex.wordpress.org/Theme_Logo
     */
    add_theme_support( 'custom-logo', array(
      'height'      => 250,
      'width'       => 250,
      'flex-width'  => true,
      'flex-height' => true,
    ) );
  }
endif;

if( ! function_exists( 'branch_theme_widgets_init' ) ) :
  function branch_theme_widgets_init() {
    register_sidebar( array(
      'name'          => esc_html__( 'Sidebar', 'branch_theme' ),
      'id'            => 'sidebar-theme-primary',
      'description'   => esc_html__( 'Agregue su widgets aquí.', 'branch_theme' ),
      'before_widget' => '<section id="%1$s" class="widget %2$s">',
      'after_widget'  => '</section>',
      'before_title'  => '<h2 class="widget-title">',
      'after_title'   => '</h2>',
    ) );
  }
endif;

function remove_core_updates() {
	if (!current_user_can('update_core')) {
		return;
	}
	add_action('init', create_function('$a', "remove_action( 'init', 'wp_version_check' );"), 2);
	add_filter('pre_option_update_core', '__return_null');
	add_filter('pre_site_transient_update_core', '__return_null');
}

function branch_dashboard_widgets() {
  global $wp_meta_boxes;  
  wp_add_dashboard_widget('custom_help_widget', 'Branch Theme Support', 'custom_dashboard_help');
}

function custom_dashboard_help() {
  get_template_part( 'template-parts/support-theme', 'content' );
}

// Deshabilitar la notificación de actualización de plugins
function dcms_disable_plugin_update( $value ) {
	if ( isset($value) && is_object($value) ) {
		// Desactivamos las notificaciones del plugin ACF PRO
		if ( isset( $value->response['advanced-custom-fields-pro/acf.php'] ) ) {
			unset( $value->response['advanced-custom-fields-pro/acf.php'] );
		}
		
	}
	return $value;
}

function add_file_types_to_uploads($file_types){
  $new_filetypes = array();
  $new_filetypes['svg'] = 'image/svg+xml';
  $file_types = array_merge($file_types, $new_filetypes );
  return $file_types;
}

add_action( 'after_setup_theme', 'branch_theme_setup' );
add_action( 'widgets_init', 'branch_theme_widgets_init' );
add_action( 'after_setup_theme', 'remove_core_updates');
add_action( 'wp_dashboard_setup', 'branch_dashboard_widgets');
add_filter( 'site_transient_update_plugins', 'dcms_disable_plugin_update' );
add_filter( 'upload_mimes', 'add_file_types_to_uploads');