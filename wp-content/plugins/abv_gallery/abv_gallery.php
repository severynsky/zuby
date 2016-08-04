<?php
if (!defined('ABSPATH')) exit;
/*
Plugin Name: ABV галерея
Plugin URI: http://alexbro.siteprosto.ks.ua/
Description: Plugin ABV gallery with the object-oriented approach
Version: 1.1
Author: Alex Bronnikov
Author URI: http://alexbro.siteprosto.ks.ua
*/

include 'abv_autoload.php';

global $abv_gallery;

$abv_gallery = new ABVGallery();