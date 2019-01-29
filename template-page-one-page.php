<?php
/*
 * Template Name: One page
 */
get_header();

$post_ids = get_current_menu_children('primary');
$args = array('post_type' => 'page');

if (!!count($post_ids)) {
	$args = array_merge($args, array(
		'post__in' => $post_ids,
		'posts_per_page' => count($post_ids),
		'orderby' => 'post__in'
	));
}

// get pages on menu
$allPosts = new WP_Query($args);
?>
<main id="main-content" class="one-page-content">
	<?php
		if (have_posts()) {
			while ($allPosts->have_posts()) {
				$allPosts->the_post();
				global $post;

				$separator = get_post_meta($post->ID, 'thm_no_hash', true);
				$page_section = get_post_meta($post->ID, 'thm_section_type', true);

				if ($separator) {
					continue;
				}

				if ($page_section == 'default') {
					get_template_part('templates/boxed', 'content');
				} elseif ($page_section == 'full') {
					get_template_part('templates/fullwidth', 'content');
				}
			}
		}

		wp_reset_postdata();
	?>
</main>

<?php get_footer();
