<?php global $themeum; ?>

            </main>
            
            <footer id="footer" class="footer-wrap d-none d-xl-block">
                <?php // get_template_part('templates/partials/scroll', 'down'); ?>

                <?php dynamic_sidebar('bottom'); ?>
            </footer>

            <div id="loader" class="loader w-100 h-100 d-flex align-items-center justify-content-center">
                <?php if (isset($themeum['logo_image'])) : ?>
                    <?php if (!empty($themeum['logo_image'])) : ?>
                        <img src="<?php echo $themeum['logo_image']; ?>" alt="<?php bloginfo('name'); ?>">
                    <?php else : ?>
                        <?php bloginfo('name'); ?>
                    <?php endif; ?>
                <?php endif; ?>
            </div>
        </div>

        <?php wp_footer(); ?>
    </body>
</html>

