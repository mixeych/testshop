<?php
/**
* Plugin Name: MIX Woo product attribute by category
* Description: Connect product attribute to category
* Version: 1.0
* Author: Dmitry MIkheev
*/

register_activation_hook(__FILE__, 'mix_create_attribute_category_table');
add_action('woocommerce_attribute_deleted', 'mix_attribute_action_delete', 10, 3);


function mix_create_attribute_category_table(){
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    global $wpdb;
    $table_name = $wpdb->get_blog_prefix() . 'woocommerce_attribute_category_relations';
    $charset_collate = "DEFAULT CHARACTER SET {$wpdb->charset} COLLATE {$wpdb->collate}";
    $sql = "CREATE TABLE {$table_name} (
    id  bigint(20) NOT NULL auto_increment,
    term_id bigint(20) NOT NULL,
    attr_id bigint(20) NOT NULL,
    PRIMARY KEY  (id)
    )
    {$charset_collate};";
    dbDelta($sql);
}

/**
 * 
 * @param int $attribute_id
 * @param array $categories
 * @return boolean
 */
function add_category_attribute($attribute_id, $categories){
    global $wpdb;
    delete_category_attribute($attribute_id);
    $data;
    foreach($categories as $cat_id){
        $data = array(
            'term_id' => (int) $cat_id,
            'attr_id' => $attribute_id
        );
        $wpdb->insert( $wpdb->prefix . 'woocommerce_attribute_category_relations', $data );
    }
    return true;
}
/**
 * 
 * @param int $attribute_id
 * @param array $categories
 * @return boolean
 */
function delete_category_attribute($attribute_id){
    global $wpdb;
    $wpdb->delete($wpdb->prefix . 'woocommerce_attribute_category_relations', array('attr_id' => $attribute_id));
    return true;
}

function mix_attribute_action_delete($attribute_id, $attribute_name, $taxonomy){
    delete_category_attribute($attribute_id);
}

/**
 * 
 * @param int $attribute_id
 * @return array
 */
function mix_get_attribute_category($attribute_id){
    global $wpdb;
    $query = "SELECT * FROM {$wpdb->prefix}woocommerce_attribute_category_relations WHERE attr_id = $attribute_id";
    return $wpdb->get_results($query);
}

/**
 * 
 * @global object $wpdb
 * @param string $slug
 * @return int
 */
function mix_get_id_attribute_by_slug($slug){
    global $wpdb;
    $query = "SELECT attribute_id FROM {$wpdb->prefix}woocommerce_attribute_taxonomies WHERE attribute_name='$slug'";
    return (int) $wpdb->get_var($query);
}

/**
 * @global object $wpdb
 * @param int $categ_id
 * @return array
 */

function get_attr_ids_by_category($categ_id){
    global $wpdb;
    $query = "SELECT attr_id FROM {$wpdb->prefix}woocommerce_attribute_category_relations WHERE term_id=$categ_id";
    return $wpdb->get_results($query);
}