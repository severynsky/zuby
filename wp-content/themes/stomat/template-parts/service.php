<div class="<?php echo $col ?>">
    <div class="item">
        <?php $thumb = get_the_post_thumbnail($key, 'full');
        if (!$thumb) {echo '<img src="'.$this->themeDir.'images/no_photo.png'.'" alt="">';}
        else {echo $thumb;} ?>
        <div class="title">
            <?php echo $post->post_title ?>
        </div>
        <div class="text">
            <?php echo $short; ?>
        </div>
        <div class="button">
            <a href="<?php echo get_permalink($key) ?>"><?php echo __('More','stomat') ?> <span>></span></a>
        </div>
    </div>
</div>