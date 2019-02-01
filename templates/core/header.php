<?php global $themeum; ?>

<header id="header" class="site-header" role="banner">
    <nav>
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
    </nav>
</header>

<button class="navbar-toggler flex-column d-inline-flex" type="button" data-toggle="fade" data-target="#primary-nav" aria-label="Toggle navigation">
    <span class="bar-icon d-inline-block"></span>
    <span class="bar-icon d-inline-block"></span>
    <span class="bar-icon d-inline-block"></span>
</button>

<nav>
    <div class="menu-niveaux menu-niveau-1 navbar-collapse primary-nav" id="primary-nav">
        <?php
            if (has_nav_menu('primary')) {
                wp_nav_menu(array(
                    'theme_location' => 'primary',
                    'container' => false,
                    'menu_class' => 'nav navbar-nav d-lg-flex justify-content-center align-items-end h-100',
                    'walker' => new Onepage_WalkerOverride()
                ));
            }
        ?>
    </div>

    <div class="menu-niveaux menu-niveau-2">
        <?php
            if (has_nav_menu('primary')) {
                wp_nav_menu(array(
                    'theme_location' => 'primary',
                    'container' => false,
                    'menu_class' => 'nav navbar-nav d-lg-flex justify-content-center align-items-start h-100',
                    'walker' => new Onepage_WalkerOverride()
                ));
            }
        ?>
    </div>

    <div class="menu-responsive">
        <div class="wrap">
            <button class="btn close-menu">
                <img src="<?php echo asset_path('images/close.png'); ?>" alt="close" />
            </button>
            <div class="logo text-center">
                <a class="navbar-brand" href="<?php echo esc_url(home_url()); ?>" title="<?php bloginfo('name'); ?>">
                    <img src="<?php echo asset_path('images/amc-178.png'); ?>" alt="<?php bloginfo('name'); ?>">
                </a>
            </div>
            <div class="menu-wrap">
                <?php
                    if (has_nav_menu('secondary')) {
                        wp_nav_menu(array(
                            'theme_location' => 'secondary',
                            'container' => false,
                            'menu_class' => 'nav navbar-nav d-flex justify-content-center align-items-center',
                            'walker' => new Onepage_WalkerOverride()
                        ));
                    }
                ?>
            </div>
        </div>
    </div>
</nav>
