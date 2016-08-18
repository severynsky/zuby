<div class="check_wrap" style="border: 1px solid black; padding: 5px;margin-top: -1px;">
    <input type="hidden" name="abv_stomat_post_type_checkbox-<?php echo $key ?>"
           id="abv_stomat_post_type_checkbox-<?php echo $key ?>"
           value="0" >
    <input type="checkbox" name="abv_stomat_post_type_checkbox-<?php echo $key ?>"
           id="abv_stomat_post_type_checkbox-<?php echo $key ?>"
           value="1" <?php checked($val) ?>>
    <label for="abv_stomat_post_type_checkbox-<?php echo $key ?>"><?php echo $post->post_title ?></label>
</div>