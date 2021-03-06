<?php 

function portofolio_files() {

    //enqueing CSS
        wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');


    //enqueing JS
        wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
        wp_enqueue_script( 'jquery' );
        wp_enqueue_script('fontAwesomeJS', 'https://kit.fontawesome.com/24bc428ad4.js');
        wp_enqueue_script('particlesJS', get_stylesheet_directory_uri() . '/js/particles.js-master/dist/particles.min.js', array(), 1.0, true);
        wp_enqueue_script('iconifyIcons', 'https://code.iconify.design/1/1.0.7/iconify.min.js');
        wp_enqueue_script('scrollRevealJS', 'https://unpkg.com/scrollreveal');
}
add_action('wp_enqueue_scripts', 'portofolio_files');


function portofolio_features() {
    // adding theme features
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');


    //custom image sizes
    add_image_size('aboutAvatar', 270, 270, true);
    add_image_size('projectSize', 400, 250, false);
}
add_action('after_setup_theme', 'portofolio_features');


// REMOVING CONTENT EDITOR FROM PAGES


/*
    //Come and Visit Us Page
function hide_editor() {

    $homepgname = get_the_title($post_id);
    if($homepgname == 'Stack'){ 
        remove_post_type_support('page', 'editor');
        }
    }
add_action( 'admin_head', 'hide_editor' );
*/

// ADDING SUPPORT FOR SVG ICONS

function add_file_types_to_uploads($file_types){
    $new_filetypes = array();
    $new_filetypes['svg'] = 'image/svg+xml';
    $file_types = array_merge($file_types, $new_filetypes );
    return $file_types;
    }
add_filter('upload_mimes', 'add_file_types_to_uploads');







/*
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