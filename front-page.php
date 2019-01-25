<?php
/*
 * Template Name: Frontpage
 */
get_header();

// get front page id
$current_page_id = get_option('page_on_front');
$args = array('post_type' => 'page');

// checking menu exist in location "primary"
if (($locations = get_nav_menu_locations() ) && $locations['primary']) {
	$menu = wp_get_nav_menu_object( $locations['primary'] );
	$menu_items = wp_get_nav_menu_items( $menu->term_id );

	$post_ids = array();
	foreach ($menu_items as $items) {
		if ($items->object == 'page') {
			$post_ids[] = $items->object_id;
		}
	}

	$args = array(
		'post_type' => 'page', 
		'post__in' => $post_ids, 
		'posts_per_page' => count($post_ids), 
		'orderby' => 'post__in'
	);
}

// get pages on menu
$allPosts = new WP_Query($args); 

if (have_posts()) {
	while ( $allPosts->have_posts() ) {
		$allPosts->the_post();
		global $post;

		$separator = get_post_meta( $post->ID, 'thm_no_hash', true );
		$page_section = get_post_meta( $post->ID, 'thm_section_type', true );

		$postId = get_the_ID();

		if (($separator != 1) && ($postId != $current_page_id)) {
			if ( $page_section == 'default' ) {
				get_template_part('templates/boxed', 'content');
			} elseif ($page_section == 'full') {
				get_template_part('templates/fullwidth', 'content');
			}
		}
	}
}

wp_reset_postdata();

get_footer();
