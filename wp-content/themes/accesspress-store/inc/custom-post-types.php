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