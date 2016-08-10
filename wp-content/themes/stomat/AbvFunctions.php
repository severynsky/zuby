<?php
if (!defined('ABSPATH')) exit;

class AbvFunctions
{
    /**
     * get id by post name bu slug
     *
     * @param $page_slug
     * @param $page_type
     * @return null|string
     */
    static function get_id_by_slug($page_slug, $page_type = 'page')
    {
        global $wpdb;
        $id = $wpdb->get_var("SELECT ID FROM $wpdb->posts WHERE post_name = '$page_slug' and post_type = '$page_type' and post_status = 'publish'");
        wp_reset_query();
        if ($id) {
            return $id;
        } else {
            return null;
        }
    }

    /**
     * return content from post by slug
     *
     * @param $page_slug
     * @param $page_type
     * @return bool|mixed
     */
    static function get_content_by_slag($page_slug, $page_type = 'page')
    {
        $id = self::get_id_by_slug($page_slug, $page_type);
        if (!$id) return false;
        $post_rnd = get_post($id);
        $the_content_filtered = apply_filters('the_content', $post_rnd->post_content);
        return str_replace(']]>', ']]&gt;', $the_content_filtered);
    }

    /**
     * get text from post by slug
     *
     * @param $page_slug
     * @param $page_type
     * @return bool|string
     */
    static function get_text_by_slag($page_slug, $page_type = 'page')
    {
        $id = self::get_id_by_slug($page_slug, $page_type);
        if (!$id) return false;
        $post_rnd = get_post($id);
        return $post_rnd->post_content;
    }

    /**
     * get title from post by slug
     *
     * @param $page_slug
     * @param $page_type
     * @return bool|string
     */
    static function get_title_by_slag($page_slug, $page_type = 'page')
    {
        $id = self::get_id_by_slug($page_slug, $page_type);
        if (!$id) return false;
        $post_rnd = get_post($id);
        return $post_rnd->post_title;
    }
}