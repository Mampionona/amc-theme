<?php

function amc_deregister_assets() {
    // styles
    wp_deregister_style('bootstrap.min');
    wp_deregister_style('font-awesome.min');
    wp_deregister_style('owl.carousel');
    wp_deregister_style('magnific-popup');
    wp_deregister_style('starterpro-starter-legacy');
    wp_deregister_style('starterpro-custom-css');
    wp_deregister_style('starterpro-main');
    wp_deregister_style('starterpro-blog-detaills');
    wp_deregister_style('starterpro-responsive');
    wp_deregister_style('prettyPhoto');
    wp_deregister_style('animate.min');
    wp_deregister_style('starterpro-style');

    // scripts
    wp_deregister_script('bootstrap');
    wp_deregister_script('loopcounter');
    wp_deregister_script('owl.carousel.min');
    wp_deregister_script('jquery.prettySocial');
    wp_deregister_script('jquery.isotope.min');
    wp_deregister_script('jquery.prettyPhoto');
    wp_deregister_script('jquery.magnific-popup.min');
    // wp_deregister_script('jquery.nav');
    // wp_deregister_script('main-onepage');
    wp_deregister_script('unique-style');
}

add_action('wp_enqueue_scripts', 'amc_deregister_assets', 19);

function amc_enqueue_scripts() {
    wp_enqueue_style('amc-style', get_stylesheet_directory_uri() . '/build/css/app.css');
    wp_enqueue_script('amc-script', get_stylesheet_directory_uri() . '/build/js/app.js');
}

add_action('wp_enqueue_scripts', 'amc_enqueue_scripts', 20);
