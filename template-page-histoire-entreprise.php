<?php
/**
 * Template Name: Histoire de l'entreprise
 */

get_header();

$histoires = get_post_meta(get_the_id(), 'histoire_entreprise', true);
?>

<section class="histoire-entreprise-wrap">
    <div class="container">
        <div class="row">
            <div class="col">                
                <div class="owl-carousel histoires histoire-carousel">
                    <?php foreach ($histoires as $histoire) : ?>
                        <?php
                        $attachment_src = wp_get_attachment_image_src($histoire['histoire_photo'], 'histoire');
                        $description = $histoire['histoire_description'];
                        ?>
                        <div class="histoire-item">
                            <?php if ($attachment_src || $description) : ?>
                                <figure>
                                    <?php if ($attachment_src) : ?>
                                        <img class="owl-lazy" data-src="<?php echo $attachment_src[0]; ?>" alt="">
                                    <?php endif; ?>
                                    <?php if ($description) : ?>
                                        <figcaption><?php echo $description; ?></figcaption>
                                    <?php endif; ?>
                                </figure>
                            <?php endif; ?>
                        </div>
                <?php endforeach; ?>
                </div>
                <div class="owl-dots d-flex justify-content-center" id="dates">
                    <?php foreach ($histoires as $histoire) : ?>
                        <?php $date = $histoire['histoire_date']; ?>
                        <?php if ($date) : ?>
                            <div class="owl-dot">
                                <button class="btn"><?php echo $histoire['histoire_date']; ?></button>
                            </div>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer();
