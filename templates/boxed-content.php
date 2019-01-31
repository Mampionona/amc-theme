
<section
    id="<?php echo $post->post_name; ?>" 
    data-section-name="<?php echo $post->post_name; ?>" 
    class="page-wrapper scrollify <?php echo has_post_thumbnail() ? 'has-background' : ''; ?>"
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

<!-- content: '';
display: block;
background-image: url(/amc/wp-content/uploads/2019/01/soudure.jpg);
height: 100%;
width: 60%;
position: absolute;
top: 0;
right: 0;
background-repeat: no-repeat;
background-position: right center; -->
