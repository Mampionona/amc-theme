<?php global $themeum; ?>

<header id="header" class="site-header" role="banner">
    <nav>
        <button class="navbar-toggler flex-column d-inline-flex d-lg-none" type="button" data-toggle="fade" data-target="#primary-nav" aria-label="Toggle navigation">
            <span class="bar-icon"></span>
            <span class="bar-icon"></span>
            <span class="bar-icon"></span>
        </button>

        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="navbar-wrapper">
                        <div class="navbar-brand-wrap text-lg-center">                    
                            <a class="navbar-brand" href="<?php echo esc_url(home_url()); ?>" title="<?php bloginfo('name'); ?>">
                                <?php if (isset($themeum['logo_image'])) : ?>
                                    <?php if (!empty($themeum['logo_image'])) : ?>
                                        <img src="<?php echo $themeum['logo_image']; ?>" alt="<?php bloginfo('name'); ?>">
                                    <?php endif; ?>
                                <?php endif; ?>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="navbar-collapse primary-nav slideInRight animated delay-1s" id="primary-nav">
            <?php
                if (has_nav_menu('primary')) {
                    wp_nav_menu(array(
                        'theme_location' => 'primary',
                        'container' => false,
                        'menu_class' => 'nav navbar-nav d-lg-flex justify-content-center align-items-end h-100',
                        'walker' => new Onepage_Walker()
                    ));
                }
            ?>
        </div>
    </nav>
</header>
