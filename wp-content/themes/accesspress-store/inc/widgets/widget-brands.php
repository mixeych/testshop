<?php

add_action('widgets_init', 'register_brands_widget');
 
function register_brands_widget(){
    register_widget('BrandsSliderWidget');
}

if( !class_exists( 'BrandsSliderWidget' ) ) :
class BrandsSliderWidget extends WP_Widget {
    function __construct() {
        parent::__construct(
                'brands_slider_widget', 
                'Слайдер производителей',
                array( 'description' => 'слайдер-карусель производителей',  )
        );
    }
    function widget( $args, $instance ) {
            $args = array(
                'taxonomy' => 'brand',
                'hide_empty' => false
            );
            $brands = get_terms($args);
            if(!empty($brands)):
        ?>
<style>
.brands-widget.jcarousel-wrapper {
    border: 10px solid #fff;
    border-radius: 5px;
    box-shadow: 0 0 2px #999;
    margin: 20px auto;
    max-width: 100%;
    position: relative;
    padding: 0 20px;
}
.brands-widget .jcarousel li img{
    width: 100px;
    height: 80px;
}
.brands-widget .jcarousel li {
    width: 123px;
    text-align: center;
    height: 80px;
    overflow: hidden;
}
.brands-widget .jcarousel li {
    float: left;
}
.brands-widget .jcarousel ul {
    width: 20000em;
    position: relative;
    list-style: none;
    margin: 0;
    padding: 0;
}
.brands-widget .jcarousel {
    position: relative;
    overflow: hidden;
    width: 100%;
    height: auto;
}
.jcarousel {
    width: 970px;
    height: auto;
    margin: 0 auto;
}
.brands-widget .jcarousel-prev, .brands-widget .jcarousel-next {
    border: 0 none;
    border-radius: 0;
    box-shadow: none;
    height: 24px;
    top: 16px;
    width: 13px;
    position: absolute;
    font-size: 28px;
}
.brands-widget .jcarousel-prev {
    background: url("<?php echo get_stylesheet_directory_uri() ?>/images/arrow-Left.png") no-repeat scroll 0 0;
    left: 0px;
}
.brands-widget .jcarousel-next {
    background: url("<?php echo get_stylesheet_directory_uri() ?>/images/arrow-Right.png") no-repeat scroll 0 0;
    right: 0px;
}
</style>
        <div class="jcarousel-wrapper brands-widget">
            <div class="jcarousel">
                <ul class="mix-brands-widget-list">
                    <?php 
//                    echo "<pre>";
//                        var_dump($brands);
//                        echo "</pre>";
                        foreach($brands as $brand):
                            $img = get_field('image', 'brand_'.$brand->term_id);
                        if(!isset($img['url'])){
                            $img = get_stylesheet_directory_uri().'/images/no-image-icon.png';
                        }else{
                            $img = $img['url'];
                        }
                    ?>
                    <li class="mix-brands-item"><a href="<?php echo get_term_link($brand->term_id) ?>"><img src="<?php echo $img ?>" alt="<?php echo $brand->name ?>"></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <a class="jcarousel-prev" href="#"><</a>
            <a class="jcarousel-next" href="#">></a>
        </div>
            <script>
                jQuery(function($){
                    $('.brands-widget .jcarousel').jcarousel({
                        wrap: 'circular',
                        animation: {
                            duration: 600,
                            interval: 1
                        }
                    });
                    $('.brands-widget .jcarousel-prev').jcarouselControl({
                        carousel: $('.brands-widget .jcarousel'),
                        target: '-=1'
                    });

                    $('.brands-widget .jcarousel-next').jcarouselControl({
                        carousel: $('.brands-widget .jcarousel'),
                        target: '+=1'
                    });
                });
                
            </script>
        <?php
            endif;
    }
    function form( $instance ) {
        $title = (!empty($instance['title']))?$instance['title']:'';
        ?>
		
        <p>
            <label for="<?php echo $this->get_field_id( 'title' ); ?>">Название</label> 
            <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>">
        </p>

        <?php
    }
    function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
        return $instance;
    }
} 
endif;
