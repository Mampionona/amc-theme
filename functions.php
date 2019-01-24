<?php

function amc_theme_setup() {
    add_theme_support('soil-clean-up');
    add_theme_support('soil-disable-asset-versioning');
    add_theme_support('soil-js-to-footer');
    add_theme_support('soil-relative-urls');
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

// Fafana daholo ny JS sy CSS tsy miasa
function amc_deregister_assets() {
    // styles
    wp_deregister_style('font-awesome');
    wp_deregister_style('sportson_preset1');
    wp_deregister_style('quick-style');

    // scripts
    wp_deregister_script('bootstrap');
    wp_deregister_script('SmoothScroll');
    wp_deregister_script('parallax');
    wp_deregister_script('main');
}

add_action('wp_enqueue_scripts', 'amc_deregister_assets', 19);

// unregister_post_type project post_type
function amc_unregister_post_type() {
    unregister_post_type('project');
}

add_action('init', 'amc_unregister_post_type', 20);

function amc_enqueue_scripts() {
    $theme_dir = get_stylesheet_directory_uri();

    wp_enqueue_style('amc-style', $theme_dir . '/build/css/app.css', array(), null);
    wp_enqueue_script('amc-script', $theme_dir . '/build/js/app.js', array(), null);
}

add_action('wp_enqueue_scripts', 'amc_enqueue_scripts', 20);

// Redeclare Bottom sidebar
function amc_deregister_sidebar() {
    unregister_sidebar('bottom');

    register_sidebar(array(
        'name' => __( 'Bottom', 'themeum' ),
        'id' => 'bottom',
        'description' => __( 'Widgets in this area will be shown before Footer.' , 'themeum'),
        'before_title' => '<h3 class="widget_title">',
        'after_title' => '</h3>',
        'before_widget' => '<div class="bottom-widget"><div id="%1$s" class="widget %2$s" >',
        'after_widget' 	=> '</div></div>'
	));
}

add_action('widgets_init', 'amc_deregister_sidebar', 20);
