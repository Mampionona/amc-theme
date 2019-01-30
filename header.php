<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<?php global $themeum; ?>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php wp_title(''); ?></title>
	<?php if (isset($themeum['favicon']) && !empty($themeum['favicon'])) : ?>
		<link rel="shortcut icon" href="<?php echo $themeum['favicon']; ?>" type="image/x-icon"/>
    <?php endif; ?>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
	<!--[if lt IE 9]>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
	<![endif]-->
    <?php
        if (isset($themeum['before_head'])) {
            echo $themeum['before_head'];
        }
        
        wp_head();
    ?>
</head>
<body <?php body_class() ?>>
	<div id="page" class="hfeed site">
		<?php get_template_part('templates/core/header'); ?>
			<main id="ajax-content">
