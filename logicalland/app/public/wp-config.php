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
define('DB_NAME', 'local');
define('DB_USER', 'root');
define('DB_PASSWORD', 'root');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

$table_prefix = 'wp_';

define('FS_METHOD', 'direct');

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
if (!defined('WP_DEBUG')) {
    define('WP_DEBUG', true);
}

// Authentication unique keys and salts
define('AUTH_KEY', 'NFXhC7xSqjmVcrSyaIs2W28WL42UcP5UZ8lwDEC/dq4BOkgs6h5uqrWbbbUWNnMr3jQbXGpgDwO6jhmhOCcLZw==');
define('SECURE_AUTH_KEY', 'uzuOkXkLn7xfX68ozxKQij2PeFXP/9iiOxBBG/R0JlDgP6+EELE++4K14T8AcK7NVpmmAht8fSJwdGWNfM1DTg==');
define('LOGGED_IN_KEY', 'ZpFj3qarc4sYv7uThFKNqVDdvLDSPBIExQZfMSAuWQlXEDWJGdF5aM+DvLOpwHHFoHND8Y5IlTFv1npoxgn1nQ==');
define('NONCE_KEY', 'fHh29m7wms4yuihSnHPKf5d9v6wAMndhsW9QBGrqCHXpW7Y8LG4HScGaeA4CIuR6eV67H18d2YFJQeiC8C1HXw==');
define('AUTH_SALT', 'OcD2+WQxsEk23MLZGHTRcpsRGzZ0t/EHbxiAHUna6FDjjGkqKRduyuiAx7RaSSR0xS9Ji7oS+bcixUEkNapKCQ==');
define('SECURE_AUTH_SALT', 'GMozIOyjGunaZ+UGBE4V6wdu+G9vIuQOVYBoMt4SU7aVcpT+oab8HMwUlju76n+2LRvfOCjtDABo0c9qZFCsLA==');
define('LOGGED_IN_SALT', 'c4XYqKpwAb0nxGK+sfR1JLUd1yCsPorH2JPNBjxorx6v5iZPz3MEKy3zGDh4sBJCR2hW7kz3OBRLMoi+NH4qPw==');
define('NONCE_SALT', 'lLFKXgbCPejfzVsWeHVO4ahN4x7yurwxnWOdSJzIf1hDvc3iNkx4sy4tM3ErwKKqQTBbQimgE94ja/xX+KqYAw==');

define('WP_ENVIRONMENT_TYPE', 'local');

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
