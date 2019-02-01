<?php
    // $no_title = get_post_meta($post->ID, 'thm_no_title', true);
    $template = '';
    $template_name = get_page_template_slug($post->ID);

    if (preg_match('#template\-page\-([a-z0-9\-]+)\.php#', $template_name, $matches)) {
        $template = $matches[1];
    }

    $one_page_template_directory = get_stylesheet_directory() . '/templates/partials/one-page/';

    $file = 'default';

    if (file_exists($one_page_template_directory . $template . '.php') && !!$template) {
        $file = $template;
    }
?>

<div class="col">
    <?php require $one_page_template_directory . $file . '.php'; ?>
</div>
