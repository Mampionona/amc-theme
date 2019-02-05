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
            <div class="owl-carousel histoires histoire-carousel full-width">
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
                        <figure>
                            <img
                                class="owl-lazy" 
                                data-src="<?php echo $photo ? $photo['sizes']['histoire'] : asset_path('images/placeholder.jpg'); ?>" 
                                alt="<?php echo $titre; ?>"
                            />
                            <?php if ($description) : ?>
                                <figcaption><?php echo $description; ?></figcaption>
                            <?php endif; ?>
                        </figure>
                    </div>
                <?php endwhile; ?>
            </div>
            <div class="owl-dots d-flex overflow-hidden full-width" id="dates">
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
