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

}