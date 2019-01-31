<?php
/**
 * Template Name: Contact
 */
?>

<?php get_header(); ?>
<section class="page-wrapper scrollify">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="contact-wrap">                
                    <?php while (have_posts()) : the_post(); ?>
                        <?php
                            $carte = get_field('carte');
                            $formulaire = get_field('formulaire');
                            $adresse = get_field('adresse');
                            $horaires = get_field('horaires');
                        ?>

                        <div class="content"><?php the_content(); ?></div>

                        <div class="row">
                            <div class="col-lg-8">
                                <div class="contact-form"><?php echo do_shortcode($formulaire); ?></div>
                            </div>
                            <div class="col-lg-4">
                                <?php get_template_part('templates/partials/map'); ?>
                                
                                <div class="horaires"><?php echo $horaires; ?></div>
                                <address><?php echo $adresse; ?></address>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>
