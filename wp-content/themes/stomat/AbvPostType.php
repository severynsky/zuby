<?php
if (!defined('ABSPATH')) exit;
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 04.08.16
 * Time: 14:14
 */
class AbvPostType
{
    public $name;
    public $slug;
    public $url;
    function __construct($name, $slug){
        $this->name = $name;
        $this->slug = $slug;
        $this->url = plugin_dir_url( __FILE__ );
        // инит темы
        add_action('init', [$this, 'create_post_type']);
        // создаем метабокс
        add_action('add_meta_boxes', [$this, 'add_meta_boxes']);
        // сохранение поста
        add_action( 'save_post', [$this, 'save_post_data'] );
        //подключение стилей в админке
        add_action( 'admin_enqueue_scripts', [$this, 'include_css_js'] );
    }

    // создаем пост тайп
    function create_post_type() {
        register_post_type($this->slug,
            array(
                'labels' => array(
                    'name' => $this->name,
                    'singular_name' => $this->name,
                    'add_new' => 'Добавить ',
                    'add_new_item' => 'Добавить новую',
                    'edit' => 'Редактировать',
                    'edit_item' => 'Редактировать',
                    'new_item' => 'Новая',
                    'view' => 'Смотреть',
                    'view_item' => 'Смотреть',
                    'search_items' => 'Искать',
                    'not_found' => 'Не найдено',
                    'not_found_in_trash' => 'В корзине не найдено',
                    'parent' => 'Предок'
                ),
                'public' => true,
                'publicly_queryable' => false,
                'exclude_from_search' => true,
                'menu_position' => 15,
                'supports' => array('title'),
                'taxonomies' => array(''),
                'menu_icon' => 'dashicons-images-alt2',
                'has_archive' => true
            )
        );
    }

    // создаем метабокс админки
    function add_meta_boxes(){
        add_meta_box( 'abv_'.$this->slug.'_id', $this->name, [$this, 'meta_callback'], $this->slug );
    }

    // рисуем вид админки галереи
    function meta_callback($galleryForm) {
        global $abv_gallery;
        wp_nonce_field($abv_gallery->plugin_dir, 'abv_nonceName');

        $gallery_images_field = esc_html(
            get_post_meta($galleryForm->ID, 'abv_'.$this->slug.'_meta_value_key', true));

        ?>
        <table>
            <tr>
                <td>
                    <?php echo __("Shortcode","abv-gallery") ?>
                </td>
                <td>
                    <span style="font-weight: bold"><?php echo $abv_gallery->abv_shortcode_word($galleryForm->ID); ?></span>
                    <?php echo __("(title='1' - show title disc='1' - show description)","abv-gallery") ?>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <?php echo __("Images gallery (can be assorted)","abv-gallery") ?>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="wrap_img_box" style="width: 100%;">
                        <?php $this->load_gallery($gallery_images_field); ?>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <button type="submit" class="upload_image_button button"><?php echo __("Download image","abv-gallery") ?></button>
                </td>
            </tr>
        </table>
        <?php
    }

    //отрисовываем сохраненные картинки галереи
    function load_gallery($str_id){
        $no = 10000;
        if ($str_id){
            $arr = explode(',', $str_id);
            foreach($arr as $str_id){
                //5.3
                $scr = wp_get_attachment_image_src($str_id,'full');
                $scr = $scr[0];
                $no +=1;
                ?>
                <div class="img_box">
                    <img src="<?php echo $scr; ?>" alt="">
                    <input type="hidden" name="abv_gallery_img[<?php echo $no; ?>]" value="<?php echo $str_id; ?>">
                    <a href="#" class="remove_image_button">x</a>
                </div>
                <?php

            }
        }
    }

    // сохрянем галерею
    function save_post_data($post_id) {
        if (get_post_type($post_id) == $this->slug){
            if (!isset($_POST['abv_nonceName']))
                return $post_id;
            // проверяем nonce нашей страницы, потому что save_post может быть вызван с другого места.
            if (!wp_verify_nonce($_POST['abv_nonceName'], $this->plugin_dir))
                return $post_id;

            // проверяем, если это автосохранение ничего не делаем с данными нашей формы.
            if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE)
                return $post_id;

            // проверяем разрешено ли пользователю указывать эти данные
            if ('page' == $_POST['post_type'] && !current_user_can('edit_page', $post_id)) {
                return $post_id;
            } elseif (!current_user_can('edit_post', $post_id)) {
                return $post_id;
            }

            $images= '';
            foreach($_POST['abv_gallery_img'] as $item){
                $images .= $item.',';
            }
            $images = substr($images, 0, -1);

            update_post_meta($post_id, 'abv_'.$this->slug.'_images_meta_value_key', $images);
        }

    }

    //подключение стилей в админке
    function include_css_js() {

        if ( ! did_action( 'wp_enqueue_media' ) ) {
            wp_enqueue_media();
        }

        wp_enqueue_script( 'post_type_jquery-ui', $this->url . 'js/jquery-ui.min.js', array('jquery'), null, false );
        wp_enqueue_script( 'abv_post_type_image_admin', $this->url . 'js/abv_post_type_admin.js', array('jquery'), null, false );
        wp_enqueue_style('post_type_jquery-ui.min', $this->url . 'css/jquery-ui.min.css');
        wp_enqueue_style('abv_post_type_admin', $this->url . 'css/admin.css');
    }
}