<?php
/**
 * This is the front page code
 * Template Name: HomePage
 */
get_header();
$single_page_layout = esc_attr( get_post_meta($post->ID, 'accesspress_store_sidebar_layout', true) );
if (empty($single_page_layout)) {
    $single_page_layout = esc_attr( get_theme_mod('single_page_layout','right-sidebar') );
}
//load slider
do_action('accesspress_slickslider');
?>

<div class="inner">
    <main id="main" class="site-main clearfix <?php echo $single_page_layout; ?>">
        <?php if ($single_page_layout == 'both-sidebar'): ?>
            <div id="primary-wrap" class="clearfix">
        <?php endif; ?>

            <div id="primary" class="content-area">
                <?php 
                $args = array(
                    'taxonomy' => 'product_cat',
                    'hide_empty' => 0
                );
                $terms = get_terms($args);
                if(!empty($terms)):
                    foreach($terms as $term):
                        $termImg = get_stylesheet_directory_uri().'/images/no-image-icon.png';
                        $termImgId = get_woocommerce_term_meta( $term->term_id, 'thumbnail_id', true );
                        if($termImgId){
                            $termImg = wp_get_attachment_url( $termImgId );
                        }
                        ?>
                        <div class="category-item">
                            <div class="image-wrap">
                                <a href="<?php echo get_term_link($term->term_id) ?>">
                                    <img src="<?php echo $termImg ?>" alt="category-img" >
                                </a>
                            </div>
                            <div class="title"
                                <a href="<?php echo get_term_link($term->term_id) ?>">
                                    <p><b><?php echo $term->name ?></b></p>
                                </a>
                            </div>
                        </div>
                        <?php
                        
                    endforeach; 
                endif;
                ?>
            </div>
        <?php
                if ($single_page_layout == 'both-sidebar' || $single_page_layout == 'left-sidebar'):
                    get_sidebar('left');
                endif;
            ?>

        <?php if ($single_page_layout == 'both-sidebar'): ?>
            </div>
        <?php endif; ?>

            <?php
                if ($single_page_layout == 'both-sidebar' || $single_page_layout == 'right-sidebar'):
                    get_sidebar('right');
                endif;
            ?>
    </main>
</div>
<?php get_footer(); ?>