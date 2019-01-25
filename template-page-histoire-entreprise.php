<?php
/**
 * Template Name: Histoire de l'entreprise
 */

get_header();
?>

<section class="histoire-entreprise-wrap">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="owl-carousel histoire-carousel">
                    <?php for ($i = 0; $i < 6; $i++) : ?>
                        <div>
                            <figure>
                                <img src="//via.placeholder.com/1110x250?text=slide+<?php echo ($i + 1); ?>" alt="">
                                <figcaption>Commodo velit dolor laborum exercitation excepteur fugiat et incididunt magna commodo dolor. Et pariatur sit est amet irure sunt sit laborum reprehenderit non. Occaecat sunt consequat quis consectetur do ad. Cillum exercitation sint occaecat esse sunt consectetur fugiat nostrud ad.</figcaption>
                            </figure>
                        </div>
                    <?php endfor; ?>
                </div>
                <div class="owl-dots d-flex justify-content-center" id="dates">
                    <?php for ($i = 0; $i < 6; $i++) : ?>
                        <div class="owl-dot">
                            <button class="btn"><?php echo ($i + 1); ?></button>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer();
