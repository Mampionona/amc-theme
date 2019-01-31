            </main>
            
            <footer id="footer" class="footer-wrap">
                <?php // get_template_part('templates/partials/scroll', 'down'); ?>

                <?php if (!is_front_page()) : ?>
                    <?php dynamic_sidebar('bottom'); ?>
                <?php endif; ?>
            </footer>
        </div>

        <?php wp_footer(); ?>
    </body>
</html>

