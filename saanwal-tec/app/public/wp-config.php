<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}


define('AUTH_KEY',         'Ku4R4vBILeGKeYh3TggqR0LteiUuYJGpjW+IdsTo/ajK1xWI4Wp/u84CEYxq+J4gOyqj8h4PzgdA0owsKI7SfA==');
define('SECURE_AUTH_KEY',  'QZJvresqWylt94GbkRA2Y3yAl3YKS7Y+xGB5L2PnLQAvaDRkmQ0qDetN+8BS/jn+KXPcD7uI0xV73Rfs9PBxGA==');
define('LOGGED_IN_KEY',    'PtlnOgUweqfiXigcIXG38rWQbVGnrkv2SeR9DowzajENTMhAtknlZA2hhPX2uJoMiQlE9gk3MKd05vjc9rqvbg==');
define('NONCE_KEY',        'ZFdgyLkYoA46AcKDZQflWiGMs7Zph4HpsMrqF6+HH5zjur69w7A3fQnJTIZ4RKB90QSwcHdZVLQxxC+Tvah0FQ==');
define('AUTH_SALT',        'NYE7IFvQjVLlKMeSANkkfkNb2ziD5LZkbyXf2V3wNlNGxz2Mgiaugupgt63e/Oxw/Ja2XFKH5ALsc9YVvMAdew==');
define('SECURE_AUTH_SALT', 'JF8ra7Hw7qgrX4fStnS8j49ySt5KMDrch82e5Wi29MhZTXRruzHCz6BC2e6Xoedrea6hIHxkFM/7iZhkCuc5Cg==');
define('LOGGED_IN_SALT',   'XQq4x4uG0wNzuHgqinhELRYjJWhhfQNgVwV8n3EtqCCCZupTnpBJyS6XFgKO7nM7jmriIZuUKj17WjqL3zNslw==');
define('NONCE_SALT',       'Jarf7Q+bh6ndqV5CQR1K8LF8/WA6sSpci+uCIkFinxyryoV4x8FfN2X8IdXSQ0a5kUE8LlKS/f7BkJEYGYUgKg==');
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
