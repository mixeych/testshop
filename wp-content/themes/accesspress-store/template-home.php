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
<?php if (is_active_sidebar('promo-widget-1')): ?>
    <section id="promo-section1">
        <div class="ak-container">
            <div class="promo-wrap1">
                <div class="promo-product1 clearfix">
                    <?php dynamic_sidebar('promo-widget-1'); ?>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>
<section id="promo-section2">
    <div class="ak-container">
        <div class="promo-wrap2">
            <?php if (is_active_sidebar('promo-widget-2')): ?>
                <div class="promo-product2">
                    <?php dynamic_sidebar('promo-widget-2'); ?>
                </div>
            <?php endif; ?>
        </div>
    </div>
</section>
<?php if (is_active_sidebar('cta-video')): ?>
    <section id="ap-cta-video" class="cta-video-section-wrap">
        <div class="cta-overlay">
            <div class="ak-container">
                <div class="cta-vid-wrap">
                    <?php dynamic_sidebar('cta-video') ?>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php if (is_active_sidebar('product-widget-3')): ?>
    <section class="ap-cat-list clear">
        <div class="ak-container">
            <div class="cat-list-wrap">
                <?php dynamic_sidebar('product-widget-3') ?>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php if (is_active_sidebar('brand-sidebar')): ?>
    <section id="brand-section">
        <?php dynamic_sidebar('brand-sidebar'); ?>
    </section>
<?php endif; ?>
<div class="inner">
    <main id="main" class="site-main clearfix <?php echo $single_page_layout; ?>">
        <?php if ($single_page_layout == 'both-sidebar'): ?>
            <div id="primary-wrap" class="clearfix">
        <?php endif; ?>

            <div id="primary" class="content-area">
                <?php 
                $args = array(
                    'taxonomy' => 'product_cat',
                    'hide_empty' => 0,
                    'parent' => 0,
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


<?php if (is_active_sidebar('product-widget-1')): ?>
    <!-- This is Product 1 Section !-->
    <section id="product1" class="prod1-slider">
        <div class="ak-container">
            <?php dynamic_sidebar('product-widget-1'); ?>
        </div>
    </section>
<?php endif; ?>

<?php if (is_active_sidebar('product-widget-2')): ?>
    <!-- This is Product 2 Section !-->
    <section id="product2" class="prod2-slider">
        <div class="ak-container">
            <?php dynamic_sidebar('product-widget-2'); ?>
        </div>
    </section>
<?php endif; ?>

<?php get_footer(); ?>