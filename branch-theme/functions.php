<?php
/**
 * branch_theme functions and definitions
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 * @package branch_theme
*/

define( 'WP_ENVIRONMENT_TYPE', 'development');
// define( 'WP_ENVIRONMENT_TYPE', 'production');

/**
 * Init Theme defaults and registers support
 */
require get_template_directory() . '/includes/theme-support.php';

/**
 *  Theme Support for Scripts CSS and JS, globals, custom and library
 */
require get_template_directory() . '/includes/theme-support-scripts.php';

/**
 * Custom template tags for this theme.
*/
require get_template_directory() . '/includes/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/includes/template-functions.php';

/**
 * Functions Suport Title and Description of Site
 */
require get_template_directory() . '/includes/customizer.php';

/**
 * Functions Return Menu Location WP in Array
 */
require get_template_directory() . '/includes/get_menu_array.php';

/**
 * Functions Return Breadcrumbs  WP 
 */
require get_template_directory() . '/includes/get_breadcrumbs.php';

/**
 * Functions Suport ACF Global for Site
 */
require get_template_directory() . '/includes/acf_options.php';
