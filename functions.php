<?php
define('AMC_TEXTDOMAIN', 'amc-theme');

require_once 'lib/assets.php';
require_once 'lib/nav-walker.php';
require_once 'lib/metabox.php';

function amc_theme_setup() {
    add_theme_support('soil-clean-up');
    add_theme_support('soil-disable-asset-versioning');
    add_theme_support('soil-js-to-footer');
    add_theme_support('soil-relative-urls');

    // add_image_size( string $name, int $width, int $height, bool|array $crop = false )
    add_image_size('histoire', 542, 342, true);
}

add_action('after_setup_theme', 'amc_theme_setup', 20);

// filter title tag
function amc_title($title) {
    if (is_front_page()) {
        return get_bloginfo('name');
    }

    return $title . ' - ' . get_bloginfo('name');
}

add_filter('wp_title', 'amc_title', 10, 2);

// unregister_post_type project post_type
function amc_unregister_post_type() {
    unregister_post_type('project');

    // remove starter metaboxes
    remove_filter('rwmb_meta_boxes', 'thm_register_meta_boxes');
    // remove starter scripts and styles
    remove_action('wp_enqueue_scripts', 'themeum_style');
}

add_action('init', 'amc_unregister_post_type', 20);

function amc_enqueue_scripts() {
    $amc_script = 'amc-script';

    wp_enqueue_style('amc-style', asset_path('css/app.css'));
    wp_enqueue_script($amc_script, asset_path('js/app.js'));

    $vars = array('ajaxurl' => admin_url('admin-ajax.php'));

    wp_localize_script($amc_script, 'amc_vars', $vars);
}

add_action('wp_enqueue_scripts', 'amc_enqueue_scripts', 20);

function amc_admin_scripts() {
    wp_enqueue_style('amc-admin', asset_path('css/admin.css'));
}

add_action('admin_enqueue_scripts', 'amc_admin_scripts');

// Redeclare Bottom sidebar
function amc_deregister_sidebar() {
    unregister_sidebar('bottom');

    register_sidebar(array(
        'name' => __('Bottom', AMC_TEXTDOMAIN),
        'id' => 'bottom',
        'description' => __( 'Widgets in this area will be shown before Footer.' , AMC_TEXTDOMAIN),
        'before_title' => '<h3 class="widget_title">',
        'after_title' => '</h3>',
        'before_widget' => '<div class="bottom-widget"><div id="%1$s" class="widget %2$s" >',
        'after_widget' 	=> '</div></div>'
	));
}

add_action('widgets_init', 'amc_deregister_sidebar', 20);

// Get all submenus in current page
function get_current_menu_children($location, $menu_items = array()) {
    global $post;

    $locations = get_nav_menu_locations();
    $menu = wp_get_nav_menu_object($locations[$location]);

    if ($menu) {
        $items = wp_get_nav_menu_items($menu->term_id);
        $menu_id = 0;

        // get current menu item
        foreach ($items as $item) {
            if ($item->object_id == $post->ID) {
                if (preg_match('#p=([0-9]+)$#', $item->guid, $matches)) {
                    $menu_id = (int) $matches[1];
                    break;
                }
            }
        }

        // get submenu items
        foreach ($items as $item) {
            if ($item->menu_item_parent != $menu_id) {
                continue;
            }

            $menu_items[] = $item->object_id;
        }

        return $menu_items;
    }

    return false;
}

// Update menu level 2
// add_action('wp_ajax_update_menu', 'amc_update_menu');
// add_action('wp_ajax_nopriv_update_menu', 'amc_update_menu');

// function amc_update_menu() {
//     ob_start();

//     if (has_nav_menu('primary')) {
//         wp_nav_menu(array(
//             'theme_location' => 'primary',
//             'container' => false,
//             'menu_class' => 'nav navbar-nav d-lg-flex justify-content-center align-items-start h-100',
//             'walker' => new Onepage_WalkerOverride()
//         ));
//     }

//     $menu = ob_get_clean();
//     die(wp_send_json($menu));
// }
