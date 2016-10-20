<?php
/**
* Plugin Name: MIX Woo brands by category
* Description: Connect product brands to category
* Version: 1.0
* Author: Dmitry MIkheev
*/
register_activation_hook(__FILE__, 'mix_create_brand_category_table');
add_action( 'brand_edit_form_fields', 'mix_extra_edit_brand_fields', 10, 2 );
add_action( 'brand_add_form_fields', 'mix_extra_add_brand_fields' );
add_action( 'create_brand', 'save_brand_tax_field' );
add_action( 'edited_brand', 'save_brand_tax_field' );

function mix_create_brand_category_table(){
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    global $wpdb;
    $table_name = $wpdb->get_blog_prefix() . 'woocommerce_brand_category_relations';
    $charset_collate = "DEFAULT CHARACTER SET {$wpdb->charset} COLLATE {$wpdb->collate}";
    $sql = "CREATE TABLE {$table_name} (
    id  bigint(20) NOT NULL auto_increment,
    brand_id bigint(20) NOT NULL,
    categ_id bigint(20) NOT NULL,
    PRIMARY KEY  (id)
    )
    {$charset_collate};";
    dbDelta($sql);
}

function mix_extra_edit_brand_fields($tag) {
    $catsBrand = get_term_meta( $tag->term_id, 'categories', true );
    $categories = get_terms('product_cat', array('hide_empty' => false));
    ?>
    <tr class="form-field">
    <th scope="row" valign="top"><label for="cat_id"><?php _e( 'Category' ); ?></label></th>
        <td>
            <?php foreach($categories as $category): ?>
            <label><?php echo $category->name ?><input type="checkbox" name="category[]" id="term_meta[category][]" value="<?php echo $category->term_id ?>"<?php if(is_array($catsBrand)&&in_array($category->term_id, $catsBrand)){ echo "checked='checked'"; } ?>></label>
            <?php endforeach; ?>
            <p class="description"><?php _e( 'Check categories.' ); ?></p>
        </td>
    </tr>
<?php
}

function mix_extra_add_brand_fields($tag) {
    $categories = get_terms('product_cat', array('hide_empty' => false));
    ?>
    <div class="form-field">
    <label for="cat_id"><?php _e( 'Category' ); ?></label>

            <?php foreach($categories as $category): ?>
            <label><?php echo $category->name ?><input type="checkbox" name="category[]" id="term_meta[category][]" value="<?php echo $category->term_id ?>"></label>
            <?php endforeach; ?>
            <p class="description"><?php _e( 'Check categories.' ); ?></p>
    </div>
<?php
}

function save_brand_tax_field($termID){

    $termMetas = isset( $_POST['category'] ) ? $_POST['category'] : array();
    mixSaveCategByBrand($termMetas, $termID);
    update_term_meta( $termID, 'categories', $termMetas );
}

/**
 * 
 * @param array $categsId
 * @param int $brandId
 * @return boolean
 */

function mixSaveCategByBrand($categsId, $brandId){
    global $wpdb;
    if(!is_array($categsId)||empty($categsId)){
        return false;
    }
    deleteCategoriesByBrand($brandId);
    foreach($categsId as $categId){
        $data = array(
            'categ_id' => (int) $categId,
            'brand_id' => $brandId
        );
        $wpdb->insert( $wpdb->prefix . 'woocommerce_brand_category_relations', $data );
    }
    return true;
}

/** 
 * @param int $brandId
 * @return array|object|null
 */

function getCategoriesByBrand($brandId){
    global $wpdb;
    $query = "SELECT categ_id FROM {$wpdb->prefix}woocommerce_brand_category_relations WHERE brand_id=$brandId";
    return $wpdb->get_results($query);
}

function deleteCategoriesByBrand($brandId){
    global $wpdb;
    $wpdb->delete($wpdb->prefix . 'woocommerce_brand_category_relations', array('brand_id' => $brandId));
    return true;
}

function getBrandsByCategories($categId){
    global $wpdb;
    $query = "SELECT brand_id FROM {$wpdb->prefix}woocommerce_brand_category_relations WHERE categ_id=$categId";
    return $wpdb->get_results($query);
}

add_filter('woof_sort_terms_before_out', 'mix_check_brand_category', 10, 2);

function mix_check_brand_category($terms, $type){
    
    $first = reset($terms);
    if($first['taxonomy'] != 'brand'){
        return $terms;
    }
    $currTerm = get_queried_object();
    $currentTermId = (int) $currTerm->term_id;
    $brands = getBrandsByCategories($currentTermId);
//    if(empty($brands)){
//        return $terms;
//    }
    $newTerms = array();
    foreach($brands as $brand){
        $newTerms[$brand->brand_id] = $terms[$brand->brand_id];
    }
    
    return $newTerms;
}

