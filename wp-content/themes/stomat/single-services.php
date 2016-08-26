<?php get_header('second') ?>
                <div class="service">
                    <div class="row">
                        <div class="treatment-sidebar element--fadeinright">
                            <div class="menu">
                                <?php wp_nav_menu( array('menu' => 'Меню послуги' )); ?>
                                <div class="button-menu" id="tablet-menu-button-open">
                                    <a href="#"><img src="/wp-content/uploads/2016/08/range.png" alt=""></a>    
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-9 col-xs-offset-3 treatment-text-block">
                            <div class="mobile-service-head">
                            <div class="register_button visible-xs">
                                <a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
                            </div>
                            <div class="title visible-xs"><?php echo $post->post_title; ?></div>
                                
                            </div>
                            <div class="row head">
                                <div class="col-xs-2 col-md-4 hidden-xs">
                                    <div class="title"><?php echo $post->post_title; ?></div>
                                </div>
                                <div class="col-xs-10 col-md-8 hidden-xs">
                                    <div class="register_button">
                                        <a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="pic">
                                        <?php $thumb = get_the_post_thumbnail($post->ID, 'full');
                                        if (!$thumb) {echo '<img src="/wp-content/uploads/2016/08/no_photo.png" alt="">';}
                                        else {echo $thumb;} ?>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <div class="text element--fadein">
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