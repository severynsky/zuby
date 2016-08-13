<?php get_header('second') ?>
                <div class="service">
                    <div class="row">
                        <div class="col-xs-3">
                            <div class="menu">
                                <?php wp_nav_menu( array('menu' => 'Меню послуги' )); ?>
                                <div class="button-menu" id="tablet-menu-button-open">
                                    <a href="#"><img src="/wp-content/uploads/2016/08/range.png" alt=""></a>    
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-9">
                            <div class="row head">
                                <div class="col-xs-2 col-md-4">
                                    <div class="title">Профілактика</div>
                                </div>
                                <div class="col-xs-10 col-md-8">
                                    <div class="register_button">
                                        <a href="#"><?php echo __('Register for a free diagnosis','stomat') ?></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="pic"><img src="/wp-content/uploads/2016/08/ortodontia.svg" alt=""></div>
                                </div>
                                <div class="col-md-10">
                                    <div class="text">
                                        <?php echo AbvFunctions::get_content_by_id($post->ID) ?>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="register_form">
				<div class="left">
					<div class="title">
						<?php echo __('Register for a free diagnosis','stomat') ?>
					</div>
					<img src="<?php echo bloginfo('template_directory') ?>/images/form_bg.png" alt="">
				</div>
				<?php echo do_shortcode('[contact-form-7 id="33" title="Записатись на безкоштовну діагностику"]') ?>
			</div>
                        </div>
                    </div>
                </div>

            </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer('second') ?>