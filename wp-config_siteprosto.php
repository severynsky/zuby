<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/home/sitepros/domains/siteprosto.ks.ua/public_html/stomat/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager
define('DB_NAME', 'sitepros_stomat');

/** MySQL database username */
define('DB_USER', 'sitepros_stomat');

/** MySQL database password */
define('DB_PASSWORD', '8MgzKga1');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'HB.!Eo|7CqrC#m[+x3l:W*7P?}/D-r,yygH}*Lk9.YL#i2+E<OlYhgX&bP%362WC');
define('SECURE_AUTH_KEY',  '(^q6`uxlNCfECZh-J0]}vn`CcqxP)xW3fj-.kLdis,#<je[UmNauGIdX6bi p{92');
define('LOGGED_IN_KEY',    '/%$`X}pC(CQi)4|Tt{ST}6HY^?N$s_=dqb<%}=9ZlgJ]=u3AnAKkKlA yhZ8gT])');
define('NONCE_KEY',        '#@}GGT-@X^rAV4S/ MQ*@kdQy.VG;pRASMYnu9Qr]>r_}nZxFp..u{ZyhhP-:GN!');
define('AUTH_SALT',        'a7MS2)BaU `XC+B|lN3}A]6H&v3TIata^.FNS<CK O`~z}_*Yhymv[C3uNZ8sD14');
define('SECURE_AUTH_SALT', '7ql.siCr9u/v?]D<(A3])cI^A_wj/o!LSuj:kefTpDO6j#|2E;adQ>{|2PhoU(I)');
define('LOGGED_IN_SALT',   '3_Moz;J5BVWd7L4=_z+#WO*HKc)[l<ZQIKv=>4+(uPKNIzpoT|Ka|vOrp+ ExnE4');
define('NONCE_SALT',       'k=bikmx:Wc%FUp(lJ{(iEb8!ZB#|O8hj!1R3447pjiJg^(y@|D@$_.P}7.C49~@7');

/**#@-*/
define('FS_METHOD', 'direct');
/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
