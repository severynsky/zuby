<?php if (!defined('ABSPATH')) exit; ?>
<div class="img_box">
    <img src="<?php echo $scr; ?>" alt="">
    <input type="hidden" name="abv_gallery_img[<?php echo $no; ?>]" value="<?php echo $str_id; ?>">
    <a href="#" class="remove_image_button">x</a>
</div>