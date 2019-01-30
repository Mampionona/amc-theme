<div class="histoire-wrap">
    <?php if (have_rows('histoires')): ?>
        <div class="histoire-carousel-wrap">
            <div class="header">
                <?php while (have_rows('histoires')) : the_row(); ?>
                    <?php $titre = get_sub_field('titre'); ?>
                    <?php $date = get_sub_field('date'); ?>
                    <div class="d-flex">
                        <div class="date"><?php echo $date; ?></div>
                        <div class="titre"><?php echo $titre; ?></div>
                    </div>
                <?php endwhile; ?>
            </div>
            <div class="owl-carousel histoires histoire-carousel">
                <?php while (have_rows('histoires')) : the_row(); ?>
                    <?php
                        $titre = get_sub_field('titre');
                        $photo = get_sub_field('photo');
                        $date = get_sub_field('date');
                        $description = get_sub_field('description');
                    ?>
                    <div class="histoire-item">
                        <?php if ($photo || $description) : ?>
                            <figure>
                                <?php if ($photo) : ?>
                                    <img class="owl-lazy" data-src="<?php echo $photo['sizes']['histoire']; ?>" alt="">
                                <?php endif; ?>
                                <?php if ($description) : ?>
                                    <figcaption><?php echo $description; ?></figcaption>
                                <?php endif; ?>
                            </figure>
                        <?php endif;?>
                    </div>
                <?php endwhile; ?>
            </div>
            <div class="owl-dots d-flex justify-content-center" id="dates">
                <?php while (have_rows('histoires')) : the_row(); ?>
                    <?php $date = get_sub_field('date'); ?>
                    <div class="owl-dot">
                        <button class="btn"><?php echo $date; ?></button>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>
    <?php endif; ?>
</div>
