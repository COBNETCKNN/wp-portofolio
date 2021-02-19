<?php 

/* REGISTRATION OF POST TYPES */

    //projects post type
    function project_post_types(){
        register_post_type('project', array(
            'public' => true,
            'labels' => array(
                'name' => 'Projects',
                'add_new_item' => 'Add New Project',
                'edit_item' => 'Edit Project',
                'all_items' => 'All Projects',
                'singular_name' => 'Project'
            ),
            'menu_icon' => 'dashicons-wordpress',
            'rewrite' => array('slug' => 'projects'),
            'supports' => array('title', 'thumbnail'),

        ));

    }

    add_action('init', 'project_post_types');











?>