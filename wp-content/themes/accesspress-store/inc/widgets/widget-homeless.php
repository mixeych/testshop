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
                'posts_per_page' => 3,
            );
            $items = get_posts($args);
        ?>
        <div class="homeless-widget">
            <div class="title"><?php echo $instance['title'] ?></div>
            <div class="content">
                <?php if(!empty($items)): ?>
                <?php foreach($items as $item): ?>
                    <div class="homeless-item">
                        <div class="title"
                            <a href="<?php echo get_permalink($item->ID) ?>">
                                <p><?php echo $item->post_title ?></p>
                            </a>
                        </div>
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
                        
                    </div>
                <?php endforeach; endif; ?>
            </div>
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

