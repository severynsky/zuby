<?php
if (!defined('ABSPATH')) exit;
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17.06.16
 * Time: 9:24
 */
class ABVGalleryWidgets {

    // рисуем вид админки галереи
    function abv_gallery_meta_callback($galleryForm) {
        global $abv_gallery;
        wp_nonce_field($abv_gallery->plugin_dir, 'abv_nonceName');

        $gallery_description_field = esc_html(
            get_post_meta($galleryForm->ID, 'abv_gallery_description_meta_value_key', true));
        $gallery_images_field = esc_html(
            get_post_meta($galleryForm->ID, 'abv_gallery_images_meta_value_key', true));

        include('tpl/gallery_metabox.php');

    }

    // генерируем ХТМЛ шорткода
    public function abv_gallery_shortcode($atts) {
        extract(shortcode_atts(array(
            'id' => 0,
            'title' => 0,
            'disc' => 0,
            'class' => '',
        ), $atts));

        $gallery = get_post($id);
        if (get_post_type($gallery->ID) == "gallery"){

            $gallery_description_field = esc_html(
                get_post_meta($gallery->ID, 'abv_gallery_description_meta_value_key', true));
            $gallery_images_field = esc_html(
                get_post_meta($gallery->ID, 'abv_gallery_images_meta_value_key', true));

            $arr_images = explode(',',$gallery_images_field);

            $html='';
            include('tpl/gallery_shortcode.php');
            return $html;
        }

    }
    //отрисовываем сохраненные картинки галереи
    public static function load_gallery($str_id){
        $no = 10000;
        if ($str_id){
            $arr = explode(',', $str_id);
            foreach($arr as $str_id){
                //5.3
                $scr = wp_get_attachment_image_src($str_id,'full');
                $scr = $scr[0];
                $no +=1;
                include('tpl/gallery_load_image.php');
            }
        }
    }
}