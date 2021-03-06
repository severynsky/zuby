<?php
if (!defined('ABSPATH')) exit;
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 04.08.16
 * Time: 8:45
 */
class AbvStomat
{
    /**
     * theme directory
     *
     * @var
     */
    public $themeDir;
    /**
     * theme url
     *
     * @var
     */
    public $themeUrl;

    /**
     * when creating an instance of class
     */
    function __construct(){
        $this->themeDir = dirname( __FILE__ );
        $this->themeUrl = get_stylesheet_directory_uri() ;

    }

    function run(){

    }



    /**
     * show title and content of post
     *
     * @param $slug
     * @param bool|true $line
     */
    static function get_post_title_text_by_slug($slug, $line = true){
        $title = AbvFunctions::get_title_by_slag($slug);
        $text = AbvFunctions::get_text_by_slag($slug);
        include('template-parts/title_line_text.php');
    }

    /**
     * show title and text of post
     *
     * @param $slug
     * @param bool|true $line
     */
    static function get_post_title_content_by_slug($slug, $line = true){
        $title = AbvFunctions::get_title_by_slag($slug);
        $text = AbvFunctions::get_content_by_slag($slug);
        include('template-parts/title_line_text.php');
    }

    /**
     * return arrays analysis of text post on separators by slug
     *
     * @param $separator
     * @param $slug
     * @return array
     */
    static function arr_name_price($slug, $separator='|'){
        $name = array();
        $price = array();
        $raw = AbvFunctions::get_text_by_slag($slug);
        if(!$raw) return false;
        $arr = explode("\r\n", $raw);
        foreach ($arr as $item){
            $tmp = explode($separator , $item);
            $name[] = $tmp[0];
            $price[] = $tmp[1];
        }
        return array($name, $price);
    }

    /**
     * show price list on main by slug
     *
     * @param $slug
     */
    static function show_name_price_on_main($slug){
        $arr = self::arr_name_price($slug);
        include('template-parts/price_main.php');
    }

    static function show_services($id = 5, $menu = false){

        $arr = get_post_meta($id,'abv_stomat_post_type_checkboxes',true);
        $last = AbvFunctions::last_true_in_array($arr);
        foreach ($arr as $key => $val){
            $post = get_post($key);
            if ($post and $post->post_status == "publish"){
                if(!$menu){
                    $short = get_post_meta($key,'abv_short_meta_value_key', true);
                    if ($key !== $last){
                        $col = "col-md-4 col-sm-6";
                    } else {
                        $col = "col-md-4 col-sm-6"; //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                    }
                    if ($val) include('template-parts/service.php');
                } else {
                    if ($val) include('template-parts/tablet-menu.php');
                }

            }
        }
    }


    static function get_href_phone(){
        $str = get_option("abv_options_theme_stomat")['phone'];
        if (!$str) return false;
        $restrict = array(" ", "(", ")", "-");
        foreach ($restrict as $item){
            $str = str_replace($item, '', $str);
        }
        return "tel:".$str;
    }
}