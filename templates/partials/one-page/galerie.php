<div class="galerie-wrap">
    <?php get_template_part('templates/partials/entry', 'title'); ?>
    <?php if (have_rows('histoires')): ?>
        <div class="galerie-carousel-wrap">
            <div class="header d-none d-xl-block">
                <?php while (have_rows('histoires')) : the_row(); ?>
                    <?php if (!get_sub_field('active')) continue; ?>
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
                    <?php if (!get_sub_field('active')) continue; ?>
                    <?php
                        $titre = get_sub_field('titre');
                        $photo = get_sub_field('photo');
                        $date = get_sub_field('date');
                        $description = get_sub_field('description');
                    ?>
                    <div class="histoire-item">
                        <div class="row item-header d-xl-none">                            
                            <div class="col">
                                <div class="date text-right <?php echo preg_match('#\-#', $date) ? 'long' : ''; ?>">
                                    <?php echo str_replace(array(' ', '-'), array('', '<br>'), $date); ?>
                                </div>
                            </div>
                            <div class="col">
                                <div class="titre"><?php echo $titre; ?></div>
                            </div>
                        </div>
                        <figure>
                            <?php $placeholder = asset_path('images/placeholder.jpg'); ?>
                            <img
                                class="owl-lazy"
                                src="<?php echo $placeholder; ?>"
                                data-src="<?php echo $photo ? $photo['sizes']['histoire'] : $placeholder; ?>" 
                                alt="<?php echo $titre; ?>"
                            />
                            <?php if ($description) : ?>
                                <figcaption><?php echo $description; ?></figcaption>
                            <?php endif; ?>
                        </figure>
                    </div>
                <?php endwhile; ?>
            </div>
            <div class="overflow-hidden full-width dots-container">
                <div class="owl-dots d-flex swipeable step-dots">
                    <?php while (have_rows('histoires')) : the_row(); ?>
                        <?php if (!get_sub_field('active')) continue; ?>
                        <?php
                            $date = get_sub_field('date');
                            $date = str_replace(array(' ', '-'), array('', '<br>'), $date);
                        ?>
                        <div class="owl-dot <?php echo !$date ? 'bullet' : ''; ?>">
                            <button class="btn"><?php echo $date; ?></button>
                        </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
    <?php endif; ?>
</div>
