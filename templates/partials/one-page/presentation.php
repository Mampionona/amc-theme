<div class="presentation-wrap">
    <div class="row">
        <div class="<?php echo has_post_thumbnail() ? 'col-sm-7': 'col'; ?>">
            <?php get_template_part('templates/partials/entry', 'title'); ?>
            <?php the_content(); ?>
        </div>
    </div>
</div>
