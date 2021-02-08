<?php 

function portofolio_files() {

    //enqueing CSS
        wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');


    //enqueing JS
        wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
        wp_enqueue_script('fontAwesomeJS', 'https://kit.fontawesome.com/24bc428ad4.js');

}
add_action('wp_enqueue_scripts', 'portofolio_files');


function portofolio_features() {
    // adding theme features
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');


    //custom image sizes
}
add_action('after_setup_theme', 'portofolio_features');








// REMOVING WP EMOJIS
function disable_wp_emojicons() {

  // all actions related to emojis
  remove_action( 'admin_print_styles', 'print_emoji_styles' );
  remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
  remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
  remove_action( 'wp_print_styles', 'print_emoji_styles' );
  remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
  remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
  remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );

  // filter to remove TinyMCE emojis
  add_filter( 'tiny_mce_plugins', 'disable_emojicons_tinymce' );
}
add_action( 'init', 'disable_wp_emojicons' );

























?>