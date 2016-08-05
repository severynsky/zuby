<?php
if (!defined('ABSPATH')) exit;
function abvStomatAutoLoader($className){
    $path = __DIR__.DIRECTORY_SEPARATOR.$className.'.php';
    if(file_exists($path)){
        require ($path);
    }
}
spl_autoload_register('abvStomatAutoLoader');