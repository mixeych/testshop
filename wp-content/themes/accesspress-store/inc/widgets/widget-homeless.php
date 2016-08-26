<?php

add_action('widgets_init', 'register_homeless_widget');
 
function register_homeless_widget(){
    register_widget('HomelessWidget');
}

if( !class_exists( 'HomelessWidget' ) ) :
class HomelessWidget extends WP_Widget {
    function __construct() {
        parent::__construct(
                'homeless_widget', 
                'Они ищут дом',
                array( 'description' => 'Они ищут дом виджет',  )
        );
    }
    function widget( $args, $instance ) {
            $args = array(
                'post_type' => 'homeless',
                'posts_per_page' => 15,
            );
            $items = get_posts($args);
        ?>
        <div class="homeless-widget">
            <div class="title"><?php echo $instance['title'] ?></div>
            
                <?php if(!empty($items)): ?>
            <style>
            .homeless-widget .jcarousel-wrapper {
                border: 10px solid #fff;
                border-radius: 5px;
                box-shadow: 0 0 2px #999;
                margin: 20px auto;
                max-width: 100%;
                position: relative;
                padding: 0 20px;
            }
            .homeless-widget .jcarousel li img{
                width: 100px;
                height: 122px;
            }
            .homeless-widget .jcarousel li {
                width: 123px;
                text-align: center;
                height: 153px;
                overflow: hidden;
            }
            .homeless-widget .jcarousel li {
                float: left;
            }
            .homeless-widget .jcarousel ul {
                width: 20000em;
                position: relative;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            .homeless-widget .jcarousel {
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
            .homeless-widget .jcarousel-prev, .homeless-widget .jcarousel-next {
                border: 0 none;
                border-radius: 0;
                box-shadow: none;
                height: 24px;
                top: 50px;
                width: 13px;
                position: absolute;
                font-size: 28px;
            }
            .homeless-widget .jcarousel-prev {
                background: url("<?php echo get_stylesheet_directory_uri() ?>/images/arrow-Left.png") no-repeat scroll 0 0;
                left: 0px;
            }
            .homeless-widget .jcarousel-next {
                background: url("<?php echo get_stylesheet_directory_uri() ?>/images/arrow-Right.png") no-repeat scroll 0 0;
                right: 0px;
            }
            .jcarousel-controll{
                display: none;
            }
            </style>
            <div class="content jcarousel-wrapper">
                <div class="jcarousel">
                    <ul class="mix-homeless-widget-list">
                <?php foreach($items as $item): ?>
                    <li class="homeless-item">
                        
                        <div class="image-wrap">
                            
                            <a href="<?php echo get_permalink($item->ID) ?>">
                                <?php 
                                $homelessImg = get_the_post_thumbnail( $item->ID );
                                if(!$homelessImg){
                                    $homelessImg = get_stylesheet_directory_uri().'/images/no-image-icon.png';
                                }
                                echo $homelessImg;
                                ?>
                            </a>
                        </div>
                        <div class="title">
                            <a href="<?php echo get_permalink($item->ID) ?>">
                                <p><?php echo $item->post_title ?></p>
                            </a>
                        </div>
                    </li>
                <?php endforeach; ?>
                    </ul>
                </div>
                <a class="jcarousel-prev jcarousel-controll" href="#"><</a>
                <a class="jcarousel-next jcarousel-controll" href="#">></a>
                
            </div>
            <script>
                jQuery(function($){
                    $('.homeless-widget .jcarousel').jcarousel({
                        wrap: 'circular',
                        animation: {
                            duration: 600,
                            interval: 1
                        }
                    });
                    $('.homeless-widget .jcarousel-prev').jcarouselControl({
                        carousel: $('.homeless-widget .jcarousel'),
                        target: '-=1'
                    });

                    $('.homeless-widget .jcarousel-next').jcarouselControl({
                        carousel: $('.homeless-widget .jcarousel'),
                        target: '+=1'
                    });
                    var count = $(".homeless-item").length;
                    if(count > 9){
                        $(".homeless-widget .jcarousel-controll").show();
                    }
                });
                
            </script>
                 <?php endif; ?>
            
        </div>
        <?php
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

