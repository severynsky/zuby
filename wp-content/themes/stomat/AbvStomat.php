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

    static function get_post_title_text_by_slug($slug, $line = true){
        $title = AbvFunctions::get_title_by_slag($slug);
        $text = AbvFunctions::get_text_by_slag($slug);
        include('template-parts/title_line_text.php');
    }

    static function get_post_title_content_by_slug($slug, $line = true){
        $title = AbvFunctions::get_title_by_slag($slug);
        $text = AbvFunctions::get_content_by_slag($slug);
        include('template-parts/title_line_text.php');
    }
}