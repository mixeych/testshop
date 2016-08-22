<?php
/*
 * 
 */

function homeless_post_type(){
    $args = array(
        'label' => 'Ищут Дом',
        'public' => true,
        'supports' => array('title','editor','author','thumbnail')
    );

    register_post_type('homeless', $args);
}

add_action('init', 'homeless_post_type');

add_action( 'init', 'mix_create_brands_taxonomy', 0 );

function mix_create_brands_taxonomy(){
    $labels = array(
        'name' => 'Brands',
        'singular_name' => 'Brand',
        'menu_name' => 'Brands',
        'search_items'      => 'Search Brands',
        'all_items'         => 'All Brands',
        'parent_item'       => 'Parent Brand',
        'parent_item_colon' => 'Parent Brand:',
        'edit_item'         => 'Edit Brand',
        'update_item'       => 'Update Brand',
        'add_new_item'      => 'Add New Brand',
        'new_item_name'     => 'New Brand Name',
    );

    register_taxonomy('brand', array('product'), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'brand' ),
    ));
}
