<?php if (have_rows('logos_des_partenaires')): ?>
    <div class="owl-carousel logos-carousel">
        <?php while (have_rows('logos_des_partenaires')) : the_row(); ?>
            <?php $logo = get_sub_field('logo'); ?>
            <div class="logo-item">
                <img class="owl-lazy" data-src="<?php echo $logo; ?>" alt="">
            </div>
        <?php endwhile; ?>
    </div>
<?php endif; ?>
