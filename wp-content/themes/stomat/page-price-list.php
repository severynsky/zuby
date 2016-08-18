<?php get_header('second') ?>
                <div class="prices">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="price_list">
                                <div class="title">
                                    Прейскурант
                                </div>
                                <div class="line"></div>
                                <div class="register_button">
                                    <a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
                                </div>
                                <div class="price">
                                    <?php echo AbvStomat::show_name_price_on_main('tsiny') ?>
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
				<a name="register" id="register"></a>
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