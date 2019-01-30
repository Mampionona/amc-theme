            </main>
            
            <footer id="footer" class="footer-wrap">
                <div class="text-center scroll-down-wrap">
                    <button class="btn scroll-down" id="scroll-down">
                        <span class="d-block"><?php _e('Scroll down', AMC_TEXTDOMAIN); ?></span>
                        <span class="icon-wrap">
                            <!-- <i class="fas fa-angle-down"></i> -->
                        </span>
                    </button>
                </div>

                <?php if (!is_front_page()) : ?>
                    <?php dynamic_sidebar('bottom'); ?>
                <?php endif; ?>
            </footer>
        </div>

        <?php wp_footer(); ?>
    </body>
</html>

