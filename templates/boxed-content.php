
<section
    id="<?php echo $post->post_name; ?>" 
    data-section-name="<?php echo $post->post_name; ?>" 
    class="page-wrapper scrollify"
    data-background-image="<?php  echo has_post_thumbnail() ? get_the_post_thumbnail_url($post->ID, 'full') : ''; ?>"
>
    <div class="container">
        <div class="row">
            <?php get_template_part('templates/page', 'content'); ?>
        </div>
    </div> <!-- .container -->
</section>
