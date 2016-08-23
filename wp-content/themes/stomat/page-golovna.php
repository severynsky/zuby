<?php get_header() ?>
	<div class="container-fluid">
		<div class="row about_advantages_wrap">
			<div class="container">

				<div class="scene_element element--fadeinup"> <?php echo do_shortcode('[abv_gallery id="22" class="slider_top"]') ?></div>
				<div class="scene_element element--fadeinup"><?php echo do_shortcode('[abv_gallery id="159" class="slider_top_mobile"]') ?></div>
				
				<div class="about_advantages">
					<a name="about" id="about"></a>
					<div class="row">
						<div class="col-md-6">
							<div class="about">
								<?php AbvStomat::get_post_title_content_by_slug('pro-kliniku') ?>
								<div class="register_button">
									<a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="advantages">
								<?php AbvStomat::get_post_title_content_by_slug('nashi-perevagy') ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row treatment_wrap">
			<div class="container">
				<div class="treatment">
					<a name="medcine" id="medcine"></a>
					<?php AbvStomat::get_post_title_content_by_slug('likuvannya') ?>
					<div class="row items">
						<?php AbvStomat::show_services() ?>
					</div>
					<div id="slickCounter"></div>
					<div class="register_button">
						<a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
					</div>
				</div>
			</div>
		</div>
		<div class="row price_list_wrap">
			<div class="container">
				<div class="price_list">
					<a name="prices" id="prices"></a>
					<div class="treatment">
						<div class="row">
							<div class="col-md-6">
								<div class="priceList">
									<?php AbvStomat::get_post_title_content_by_slug('prejskurant') ?>
									<div class="register_button desc-res">
										<a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="price">
									<?php echo AbvStomat::show_name_price_on_main('tsiny') ?>
									<div class="button">
										<a href="/price-list"><?php echo __('More','stomat') ?> <span>></span></a>
									</div>
								</div>
								<div class="register_button tablet-res">
									<a href="#register"><?php echo __('Register for a free diagnosis','stomat') ?></a>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
		<div class="row photo_gallery_wrap">
			<div class="container">
				<div class="photo_gallery">
					<a name="gallery" id="gallery"></a>
					<?php AbvStomat::get_post_title_content_by_slug('fotogalereya') ?>
					<?php echo do_shortcode('[abv_gallery id="24" class="slider_bottom"]') ?>
				</div>
			</div>
		</div>
		<div class="row register_form_wrap">
			<div class="container">
				<div class="register_form">
					<a name="register" id="register"></a>
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
		<div class="row address_wrap">
			<div class="container">
				<div class="address">
					<a name="contacts" id="contacts"></a>
					<div class="row">
						<div class="col-sm-6">
							<div class="addressList">
								<?php AbvStomat::get_post_title_content_by_slug('kontakty') ?>
							</div>
						</div>
						<div class="col-sm-6 hidden-xs">
							<div class="map" >
								<div id="map"></div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<div class="row footer_wrap">
				<div class="col-md-12">
					<footer id="colophon" class="site-footer" role="contentinfo">
						<div class="name_site"><?php echo bloginfo('blogname') ?></div>
						<div class="copy">2016 <?php echo __('all rights reserved', 'stomat') ?> ©</div>
					</footer>
				</div>
			</div>
		</div>

<?php get_footer(); ?>