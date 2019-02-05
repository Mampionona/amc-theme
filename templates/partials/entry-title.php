<?php
    $page_id = get_the_id();
    $alt_title = get_post_meta($page_id, 'thm_page_title', true);
    $no_title = get_post_meta($page_id, 'thm_no_title', true);
?>

<?php if (!$no_title) : ?>
    <h2>
        <?php echo !!$alt_title ? $alt_title : get_the_title(); ?>
    </h2>
<?php endif; ?>
