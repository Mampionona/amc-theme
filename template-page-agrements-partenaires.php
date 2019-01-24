<?php
/**
 * Template Name: Agréments et partenaires
 */
?>

<?php get_header(); ?>
<section class="agrements-partenaires-wrap">
    <div class="container">
        <div class="row">
            <div class="col">
                <?php while (have_posts()) : ?>
                    <?php
                        the_post();
                        the_content();

                        $texte_additionnel = get_field('texte_additionnel');
                        $url_jetassistance = get_field('url_jetassistance');
                        $devenez_partenaire = get_field('devenez_partenaire');
                    ?>
                    __logos__
                    <div class="row">
                        <div class="col-lg-7">
                            <?php echo $texte_additionnel; ?>
                        </div>
                        <div class="col-lg-5 text-center text-lg-left">
                            <a href="<?php echo $url_jetassistance; ?>" class="btn btn-outline-light" target="_blank">
                                <?php _e('Jet Assistance', 'starter'); ?>
                                <i class="far fa-play-circle"></i>
                            </a>
                        </div>
                    </div>

                    <div class="devenez-partenaire">
                        <h3><?php _e('Devenez partenaire', 'starter'); ?></h3>
                        <?php echo do_shortcode($devenez_partenaire); ?>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>
