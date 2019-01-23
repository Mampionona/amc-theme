<?php

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

function amc_enqueue_scripts() {
    $theme_dir = get_stylesheet_directory_uri();

    wp_enqueue_style('amc-style', $theme_dir . '/build/css/app.css', array(), null);
    wp_enqueue_script('amc-script', $theme_dir . '/build/js/app.js', array(), null);
}

add_action('wp_enqueue_scripts', 'amc_enqueue_scripts', 20);
