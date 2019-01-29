<?php
$no_title = get_post_meta($post->ID, 'thm_no_title', true);
$template_file = get_stylesheet_directory() . '/templates/partials/one-page/content-page-' . $post->ID . '.php';
?>

<div class="col">
    <?php if (file_exists($template_file)) : ?>
        <?php require $template_file; ?>
    <?php endif; ?>
</div>
