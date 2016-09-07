<div class="col-sm-4 col-xs-4">
    <a href="<?php echo get_permalink($key) ?>">
        <div class="item">
            <?php $thumb = get_the_post_thumbnail($key, 'full');
            if (!$thumb) {echo '<img src="'.$this->themeDir.'images/no_photo.png'.'" alt="">';}
            else {echo $thumb;} ?>
            <p class="title"><?php echo $post->post_title ?></p>
        </div>
    </a>
</div>
