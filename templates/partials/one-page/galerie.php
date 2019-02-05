<div class="histoire-wrap">
    <?php if (have_rows('histoires')): ?>
        <div class="histoire-carousel-wrap">
            <div class="header d-none d-xl-block">
                <?php while (have_rows('histoires')) : the_row(); ?>
                    <?php $titre = get_sub_field('titre'); ?>
                    <?php
                        $date = get_sub_field('date');
                        $date = str_replace(array(' ', '-'), array('', '<br>'), $date);
                    ?>
                    <div class="d-flex animated">
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
                        $date = str_replace(array(' ', '-'), array('', '<br>'), $date);
                        $description = get_sub_field('description');
                    ?>
                    <div class="histoire-item">
                        <div class="row item-header d-xl-none">                            
                            <div class="col">
                                <div class="date text-right"><?php echo $date; ?></div>
                            </div>
                            <div class="col">
                                <div class="titre"><?php echo $titre; ?></div>
                            </div>
                        </div>
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
            <div class="owl-dots d-flex flex-wrap justify-content-center" id="dates">
                <?php while (have_rows('histoires')) : the_row(); ?>
                    <?php
                        $date = get_sub_field('date');
                        $date = str_replace(array(' ', '-'), array('', '<br>'), $date);
                    ?>
                    <div class="owl-dot">
                        <button class="btn"><?php echo $date; ?></button>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>
    <?php endif; ?>
</div>
