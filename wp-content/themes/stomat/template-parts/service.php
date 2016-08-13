<div class="col-md-4 col-sm-6">
    <div class="item">
        <?php $thumb = get_the_post_thumbnail($item, 'full');
        if (!$thumb) {echo '<img src="'.$this->themeDir.'images/no_photo.png'.'" alt="">';}
        else {echo $thumb;} ?>
        <div class="title">
            <?php echo $post->post_title ?>
        </div>
        <div class="text">
            <?php echo $short; ?>
        </div>
        <div class="button">
            <a href="<?php echo get_permalink($item) ?>"><?php echo __('More','stomat') ?> <span>></span></a>
        </div>
    </div>
</div>