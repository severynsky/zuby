<?php
if (!defined('ABSPATH')) exit;
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 16.06.16
 * Time: 15:27
 */
class ABVGallery
{
    public $plugin_dir;
    public $plugin_url;
    
    function __construct(){
        $this->plugin_dir = dirname( __FILE__ );
        $this->plugin_url = plugin_dir_url( __FILE__ );
        // add language
        add_action('after_setup_theme', array($this, 'addLanguage'));
        // подключаем стили
        add_action('wp_enqueue_scripts', [$this, 'abv_load_style_script']);
        // инит темы
        add_action('init', [$this, 'abv_create_gallery']);
        // создаем метабокс
        add_action('add_meta_boxes', [$this, 'abv_gallery_add_meta_boxes']);
        // сохранение поста
        add_action( 'save_post', [$this, 'abv_gallery_save_post_data'] );
        //подключение стилей в админке
        add_action( 'admin_enqueue_scripts', [$this, 'abv_include_image_js'] );
        // поключим шоты
        add_shortcode('abv_gallery', [(new ABVGalleryWidgets()), 'abv_gallery_shortcode']);
        // изменяем список постов
        add_filter('manage_posts_columns', [$this, 'posts_columns_id'], 5);
        add_action('manage_posts_custom_column', [$this, 'posts_custom_id_columns'], 5, 2);
    }

    /**
     * add transcription to plugin
     */
    function addLanguage()
    {
        load_plugin_textdomain('abv-gallery', false, dirname(plugin_basename(__FILE__)) . '/languages/');
    }

    //подключение стилей в админке
    function abv_include_image_js() {

        if ( ! did_action( 'wp_enqueue_media' ) ) {
            wp_enqueue_media();
        }

        wp_enqueue_script( 'gallery_jquery-ui', $this->plugin_url . 'js/jquery-ui.min.js', array('jquery'), null, false );
        wp_enqueue_script( 'abv_gallery_image_admin', $this->plugin_url . 'js/abv_image_admin.js', array('jquery'), null, false );
        wp_enqueue_style('gallery_jquery-ui.min', $this->plugin_url . 'css/jquery-ui.min.css');
        wp_enqueue_style('abv_gallery_admin', $this->plugin_url . 'css/admin.css');
    }

// подключаем стили
    function abv_load_style_script(){
        wp_register_script('abv_gallery_jquery', $this->plugin_url . "js/jquery-1.11.1.min.js",false,false);
        wp_register_script('gallery_owl-carousel-min', $this->plugin_url . "js/owl.carousel.min.js",false,false,true);
        wp_register_script('abv_gallery_common', $this->plugin_url . "js/common.js",false,false,true);

        wp_enqueue_script('abv_gallery_jquery');
        wp_enqueue_script('gallery_owl-carousel-min');
        wp_enqueue_script('abv_gallery_common');

        wp_enqueue_style('gallery_owl.carousel', $this->plugin_url.'css/owl.carousel.min.css');
        wp_enqueue_style('abv_gallery_styles', $this->plugin_url . 'css/styles.css');
    }

// создаем пост тайп
    function abv_create_gallery() {
        register_post_type('gallery',
            array(
                'labels' => array(
                    'name' => 'Галереи',
                    'singular_name' => 'Галерея',
                    'add_new' => 'Добавить галерею',
                    'add_new_item' => 'Добавить новую галерею',
                    'edit' => 'Редактировать',
                    'edit_item' => 'Редактировать галерею',
                    'new_item' => 'Новая галерея',
                    'view' => 'Смотреть',
                    'view_item' => 'Смотреть галерею',
                    'search_items' => 'Искать галерею',
                    'not_found' => 'Галерею не найдено',
                    'not_found_in_trash' => 'Галерею в корзине не найдено',
                    'parent' => 'Предок галереи'
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
    function abv_gallery_add_meta_boxes(){
        add_meta_box( 'abv_gallery_id', 'Галерея', [(new ABVGalleryWidgets()), 'abv_gallery_meta_callback'], 'gallery' );
    }



// сохрянем галерею
    function abv_gallery_save_post_data($post_id) {
        if (get_post_type($post_id) == "gallery"){
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

            $description = sanitize_text_field( $_POST['abv_gallery_description_field'] );

            $images= '';
            foreach($_POST['abv_gallery_img'] as $item){
                $images .= $item.',';
            }
            $images = substr($images, 0, -1);


            update_post_meta($post_id, 'abv_gallery_description_meta_value_key', $description);
            update_post_meta($post_id, 'abv_gallery_images_meta_value_key', $images);
        }

    }

// изменяем заголовок списка галерей
    function posts_columns_id($defaults){
        if($_GET['post_type'] == 'gallery'){
            unset($defaults['date']);
            $defaults['abv_post_id'] = __('ID');
            $defaults['abv_shortcode'] = __('Шорткод');
            return $defaults;
        }
        return $defaults;
    }

// выводим значения списка галерей
    function posts_custom_id_columns($column_name, $id){
        if($column_name === 'abv_post_id'){
            echo $id;
        }
        if($column_name === 'abv_shortcode'){
            echo $this->abv_shortcode_word($id);
        }
    }
// генерирует шорткодстринг
    function abv_shortcode_word($id){
        $str =  '[abv_gallery id="'.$id.'"]';
        return $str;
    }

}