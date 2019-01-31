
<section
    id="<?php echo $post->post_name; ?>" 
    data-section-name="<?php echo $post->post_name; ?>" 
    class="page-wrapper scrollify <?php echo has_post_thumbnail() ? 'has-background in' : ''; ?>"
>
    <?php if (has_post_thumbnail()) : ?>
        <span class="background" data-background-image="<?php  echo has_post_thumbnail() ? get_the_post_thumbnail_url($post->ID, 'full') : ''; ?>"></span>
    <?php endif; ?>
    <div class="container">
        <div class="row">
            <?php get_template_part('templates/page', 'content'); ?>
        </div>
    </div> <!-- .container -->
</section>
