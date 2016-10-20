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
        'name' => 'Список производителей',
        'singular_name' => __('Brand', 'accesspress-store'),
        'menu_name' => __('Brands', 'accesspress-store'),
        'search_items'      =>  __('Search Brands', 'accesspress-store'),
        'all_items'         =>  __('All Brands', 'accesspress-store'),
        'parent_item'       =>  __('Parent Brand', 'accesspress-store'),
        'parent_item_colon' =>  __('Parent Brand:', 'accesspress-store'),
        'edit_item'         => __('Edit Brand', 'accesspress-store'),
        'update_item'       =>  __('Update Brand', 'accesspress-store'),
        'add_new_item'      =>  __('Add New Brand', 'accesspress-store'),
        'new_item_name'     => __('New Brand Name', 'accesspress-store'),
    );

    register_taxonomy('brand', array('product'), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'brand' ),
    ));
}
