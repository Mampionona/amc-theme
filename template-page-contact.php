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
                            $page_id = get_the_id();
                            $adresse = get_field('adresse');
                            $horaires = get_field('horaires');
                            $introduction = get_field('introduction');
                            $alt_title = get_post_meta($page_id, 'thm_page_title', true);
                            $no_title = get_post_meta($page_id, 'thm_no_title', true);
                        ?>
                        <?php if (!$no_title) : ?>
                            <h1><?php echo !!$alt_title ? $alt_title : get_the_title(); ?></h1>
                        <?php endif; ?>
                        <?php if (!!$introduction) : ?>
                            <div class="introduction text-justify"><?php echo $introduction; ?></div>
                        <?php endif; ?>

                        <div class="row">
                            <div class="col-xl-8">
                                <div class="content">
                                    <?php the_content(); ?>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <?php get_template_part('templates/partials/map'); ?>
                                
                                <?php if (!!$horaires || !!$adresse) : ?>
                                    <div class="text-center text-xl-left">
                                        <?php if (!!$horaires) : ?>
                                            <div class="horaires"><?php echo $horaires; ?></div>
                                        <?php endif; ?>
                                        <?php if (!!$adresse) : ?>
                                            <address><?php echo $adresse; ?></address>
                                        <?php endif; ?>                                        
                                    </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>
