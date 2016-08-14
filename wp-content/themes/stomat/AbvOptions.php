<?php
if (!defined('ABSPATH')) exit;

class AbvOptions
{
    function __construct(){
        add_action('admin_menu', array($this, 'admin_menu'));
        add_action('admin_init', array($this, 'admin_settings'));
    }

    function admin_menu(){
        add_options_page('Опції теми', 'Опції теми', 'manage_options', __FILE__, array($this, 'option_page'));
    }

    function option_page() {
        ?>
        <div class="wrap">
            <form action="options.php" method="post">
                <?php settings_fields('abv_group'); ?>
                <?php do_settings_sections(__FILE__); ?>
                <?php submit_button(); ?>
            </form>
        </div>
        <?php
    }

    function theme_options_sanitize($options) {
        $clean_options = array();
        foreach ($options as $k => $v) {
            if (strpos($v,'<br>') !== false){
                $clean_options[$k] = $v;
            } else {
                $clean_options[$k] = strip_tags($v);
            }
        }
        return $clean_options;
    }

    function admin_settings() {
        register_setting('abv_group', 'abv_options_theme_stomat', array($this, 'theme_options_sanitize'));
        add_settings_section('abv_section_stomat_id', 'Опції теми', '', __FILE__);

        /////////

        add_settings_field('abv_setting_phone_id', 'Контактний телефон', array($this, 'theme_phone_cb'),
            __FILE__, 'abv_section_stomat_id', array('label_for' => 'abv_setting_phone_id'));

        add_settings_field('abv_setting_time_id', 'Час праці', array($this, 'theme_time_cb'),
            __FILE__, 'abv_section_stomat_id', array('label_for' => 'abv_setting_time_id'));
    }

    /////////////////////////////////////////////

    function theme_time_cb() {
        $options = get_option('abv_options_theme_stomat');
        if (!$options['time']) $options['time'] = maybe_serialize('time');
        ?>
            <input type="text" name="abv_options_theme_stomat[time]" id="abv_setting_time_id"
                   value="<?php echo esc_attr($options['time']); ?>" class="regular-text">
        <?php
    }

    function theme_phone_cb() {
        $options = get_option('abv_options_theme_stomat');
        if (!$options['phone']) $options['phone'] = maybe_serialize('phone');
        ?>
            <input type="text" name="abv_options_theme_stomat[phone]" id="abv_setting_phone_id"
                   value="<?php echo esc_attr($options['phone']); ?>" class="regular-text">
        <?php
    }
}