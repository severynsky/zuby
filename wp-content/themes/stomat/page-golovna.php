<?php get_header() ?>
		<div class="container">
			<div class="top_content">
				<div class="row">
					<div class="logo">
						<img src="<?php echo bloginfo('template_directory') ?>/images/logo-big.svg" alt="">
					</div>
					<div class="site-description">
						<?php echo bloginfo('description') ?>
					</div>
				</div>
			</div>

			<?php echo do_shortcode('[abv_gallery id="22" class="slider_top"]') ?>
			<div class="about_advantages">
				<div class="row">
					<div class="col-md-6">
						<div class="about">
							<?php AbvStomat::get_post_title_content_by_slug('pro-kliniku') ?>
							<div class="register_button">
								<a href="#"><?php echo __('Register for a free diagnosis','stomat') ?></a>
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
			<div class="treatment">
				<?php AbvStomat::get_post_title_content_by_slug('likuvannya') ?>
				<div class="row items">
					<?php AbvStomat::show_services() ?>
				</div>
				<div id="slickCounter"></div>
				<div class="register_button">
					<a href="#"><?php echo __('Register for a free diagnosis','stomat') ?></a>
				</div>
			</div>

			<div class="price_list">
				<div class="row">
					<div class="col-md-6">
						<div class="priceList">
							<?php AbvStomat::get_post_title_content_by_slug('prejskurant') ?>
							<div class="register_button desc-res">
								<a href="#"><?php echo __('Register for a free diagnosis','stomat') ?></a>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="price">
							<?php echo AbvStomat::show_name_price_on_main('tsiny') ?>
							<div class="button">
								<a href="#"><?php echo __('More','stomat') ?> <span>></span></a>
							</div>
						</div>
						<div class="register_button tablet-res">
							<a href="#"><?php echo __('Register for a free diagnosis','stomat') ?></a>
						</div>
					</div>
				</div>
			</div>

			<div class="photo_gallery">
				<?php AbvStomat::get_post_title_content_by_slug('fotogalereya') ?>
				<?php echo do_shortcode('[abv_gallery id="24" class="slider_bottom"]') ?>
			</div>
			<div class="register_form">
				<div class="left">
					<div class="title">
						<?php echo __('Register for a free diagnosis','stomat') ?>
					</div>
					<img src="<?php echo bloginfo('template_directory') ?>/images/form_bg.png" alt="">
				</div>
				<?php echo do_shortcode('[contact-form-7 id="33" title="Записатись на безкоштовну діагностику"]') ?>
			</div>
			<div class="address">
				<div class="row">
					<div class="col-md-6">
						<div class="addressList">
							<?php AbvStomat::get_post_title_content_by_slug('kontakty') ?>
						</div>
					</div>
					<div class="col-md-6">
						<div class="map" >
							<div id="map"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
<?php get_footer(); ?>