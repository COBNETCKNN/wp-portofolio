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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'N1n1e6HreRnArhq6zpEna98qdWJYVFaDA6lCwZ8gi+Omubf9TLdXxTv+vw1bWq3os/bVP5Ko34wJ7kJS/IYdQg==');
define('SECURE_AUTH_KEY',  'BYMWsiE/7suZrVCW9IvHhQDOaOGfeYUA7/NpopJ20KrUwwesOaNXmifjEwNQ6hK1TLpLwoxtQh1X6shTqFLuwQ==');
define('LOGGED_IN_KEY',    'th4ZEtT82DQEhn/R2sVaytWHGuNI/munMjjadVcCEAzIimC8xLdsdkSpPtnZcZBY5m6WKb4FV17hJok0bwD2XA==');
define('NONCE_KEY',        'qrj7RaFJuWZJQkXhRvWciRqgILmxTEy1pfAq+Inq5VfS5eHKlYmVAWAHkebJXdlzGP+S5E9ih9Ql5radSJqmxw==');
define('AUTH_SALT',        'VbZ3zxEH+GRqcteryiBBOxtU7r0arpMonBHFaruj/b8vd4xzUoOe9W7W422g1fJPCEjN8lhTj+B7GetpdF4YxQ==');
define('SECURE_AUTH_SALT', 'pXmbYscxpG71Orq+7zkUsM0N7KoBvC3MR1DSPspWwfqnFFsVf9UlhrZfta66Cxb2MZxuk8hucfy9di7yqzqqVQ==');
define('LOGGED_IN_SALT',   'ae3hITW3K7ZI0i6c22wXtGnlrzR5LVcr2hUCxct7uVYQqbGZEnPRDGH7c1z6ktDNVkW020HRuWBwmQoEjcG6wA==');
define('NONCE_SALT',       'AjH+0gL8zs0Ara4iY/7zYQCcgTktdE+fawfPB6JAzjYwaFSPuCY+i7xc28iDqx6TWOzaJgWLxzoL5CqYozShpw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
