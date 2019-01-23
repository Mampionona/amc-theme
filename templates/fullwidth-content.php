<?php $no_title = get_post_meta( $post->ID, 'thm_no_title', true ); ?>

<section id="<?php echo $post->post_name; ?>" class="page-wrapper full-width">
    <div class="container-fluid">
        <div class="row">
            <?php get_template_part('templates/page', 'content'); ?>
        </div>
    </div>
</section>
