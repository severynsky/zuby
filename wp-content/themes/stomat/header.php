<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Stomat
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
	<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyAZaRY770THMIy_Oa03SUiluEUxh4f3skw&extension=.js'></script>
</head>
<body>

<div id="page" class="site">
	<div class="min_call_wrap">
		<a href="#"><img src="<?php echo bloginfo('template_directory') ?>/images/time_phone.svg" alt=""></a>
	</div>
	<div class="max_call_wrap">
		<a href="#" class="close-button-white">
			<img  src="<?php echo bloginfo('template_directory') ?>/images/close-button-white.svg" alt="">
		</a>
		<div class="phone">
			<a href="<?php echo AbvStomat::get_href_phone() ?>"><img src="<?php echo bloginfo('template_directory') ?>/images/phone.svg" alt=""><p><?php echo get_option("abv_options_theme_stomat")['phone'] ?></p></a>
		</div>
		<div class="time">
			<img src="<?php echo bloginfo('template_directory') ?>/images/time.svg" alt=""><p>
				<?php echo get_option("abv_options_theme_stomat")['time'] ?></p>
		</div>
		<div class="call">
			<a href="<?php echo AbvStomat::get_href_phone() ?>">Подзвонити</a>
		</div>
	</div>
	<div class="container-fluid all_content">
		<div class="header">
			<div class="row white_line">
				<div class="hamburger_menu">
					<div class="line-top"></div>
					<div class="close_button">
						<a href="#"  class="close_button"><img src="<?php echo bloginfo('template_directory') ?>/images/cross.svg" alt=""></a>
					</div>
					<?php wp_nav_menu( array('menu' => 'Гамбургер' )); ?>
					<div class="line-bottom"></div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<header id="masthead" class="site-header" role="banner">
								<div class="site-branding">
									<a href="/" rel="home"><img src="<?php echo bloginfo('template_directory') ?>/images/logo.svg" alt=""></a>
								</div>
								<!-- .site-branding -->
								<nav id="site-navigation" class="main-navigation" role="navigation">
									<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><img
											src="<?php echo bloginfo('template_directory') ?>/images/menu.svg" alt=""></button>
									<div class="menu-verhne-menyu-container">
										<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
									</div>
								</nav>
								<!-- #site-navigation -->
							</header>
							<!-- #masthead -->
						</div>

					</div>
				</div>

			</div>
		</div>
		<div class="top_content">
			<div class="grad_left">
				<div class="grad_right">
					<div class="row">
						<div class="logo">
							<img src="<?php echo bloginfo('template_directory') ?>/images/logo-big.svg" alt="">
						</div>
						<div class="site-description">
							<?php echo bloginfo('description') ?>
						</div>
					</div>
				</div>
			</div>
		</div>
