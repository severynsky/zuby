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
		<div class="phone">
			<a href="#"><img src="<?php echo bloginfo('template_directory') ?>/images/phone.svg" alt=""><p>067 766 50 41</p></a>
		</div>
		<div class="time">
			<img src="<?php echo bloginfo('template_directory') ?>/images/time.svg" alt=""><p>Пн – Сб 9:00 – 20:00 <br>без перерви</p>
		</div>
	</div>
	<div class="container-fluid">
		<div class="header">
			<div class="row white_line">
				<div class="hamburger_menu">
					<div class="line-top"></div>
					<div class="close_button">
						<a href="#"><img src="<?php echo bloginfo('template_directory') ?>/images/cross.svg" alt=""></a>
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
