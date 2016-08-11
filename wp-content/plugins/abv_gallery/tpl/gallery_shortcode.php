<?php
if (!defined('ABSPATH')) exit;
if($title ==='1'){
    $html .= "<p class='title'> $gallery->post_title </p>";
}
if($disc ==='1'){
    $html .= "<p class='description'> $gallery_description_field </p>";
}
$html .="<div class='abv-carousel ".$class."'>";

foreach($arr_images as $item){
        $scr = wp_get_attachment_image_src($item,'full');
        $html .="<div class='item'>";
        $html .="<img src=' $scr[0] ' alt=''>";
        $html .="</div>";
}
$html .="</div>";
