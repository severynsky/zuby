<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
    <?php wp_head(); ?>
</head>
<body class='preload'>
<div class="container-fluid second">
    <div class="row">
        <div class="col-xs-12">
            <div class="row tablet-menu-wrap">
                <div class="cross">
                    <a id="tablet-menu-button-close" href="#"><img src="/wp-content/uploads/2016/08/cross.svg" alt=""></a>
                </div>
                <div class="tablet-menu">
                    <?php AbvStomat::show_services(5, true) ?>
                </div>
            </div>
            <div class="row mobil-menu-wrap">
                <div class="cross">
                    <a id="mobil-menu-button-close" href="#"><img src="/wp-content/uploads/2016/08/cross.svg" alt=""></a>
                </div>
            <div class="mobil-menu">
                <?php wp_nav_menu( array('menu' => 'Меню послуги' )); ?>
            </div>
            </div>
            <div class="white_line element--showFromTop">
                        <header class="service">
                            <div class="col-md-3 col-sm-3 col-xs-10">
                                <div class="go-main">
                                    <a href="/"><img src="/wp-content/uploads/2016/08/arrow.png" alt=""> На головну</a>
                                </div>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-2">
                                <div class="call_wrap">
                                    <div class="phone">
                                        <a href="#"><img src="<?php echo bloginfo('template_directory') ?>/images/phone_red_03.png" alt=""><p>067 766 50 41</p></a>
                                    </div>
                                    <div class="time">
                                        <img src="<?php echo bloginfo('template_directory') ?>/images/time_red_03.png" alt=""><p>Пн – Сб 9:00 – 20:00 без перерви</p>
                                    </div>
                                </div>
                                <div class="m_call_wrap">
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
                            </div>
                        </header>
                    </div>
                <div class="container treatment-body">
                    <div class="row">
                    </div>