<?php
    $texte_additionnel = get_field('texte_additionnel');
    $url_jetassistance = get_field('url_jetassistance');
    $devenez_partenaire = get_field('devenez_partenaire');
?>

<div class="agrements-wrap">
    <div class="content">
        <?php get_template_part('templates/partials/entry', 'title'); ?>
        <?php the_content(); ?>
    </div>

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

    <div class="row additionnel">
        <div class="col-lg-7 text-center text-xl-left">
            <?php echo $texte_additionnel; ?>
        </div>
        <div class="col-lg-5 text-center text-lg-left">
            <a href="<?php echo $url_jetassistance; ?>" class="jet btn btn-outline-light" target="_blank">
                <?php _e('Jet Assistance', AMC_TEXTDOMAIN); ?>
                <!-- <i class="far fa-play-circle"></i> -->
            </a>
        </div>
    </div>

    <div class="devenez-partenaire">
        <h3 class="subtitle"><?php _e('Devenez partenaire', AMC_TEXTDOMAIN); ?></h3>
        <?php echo do_shortcode($devenez_partenaire); ?>
    </div>
</div>
