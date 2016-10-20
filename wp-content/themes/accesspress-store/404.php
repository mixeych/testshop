<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @package AccessPress Store
 */

get_header(); ?>

<main id="main" class="site-main" role="main">
	<div id="primary" class="content-area">
		<section class="error-404 not-found">
			<header class="page-header">
				<h1 class="page-title"><?php _e( 'Oops! That page can&rsquo;t be found.', 'accesspress-store' ); ?></h1>
			</header><!-- .page-header -->

			<div class="page-content">
				<p>Перейдите пожалуйста на <a href="<?php echo home_url() ?>">главную страницу</a> и уточните критерии поиска</p>
			</div><!-- .page-content -->

			<div class="number404">
				404 
				<span>Ошибка</span>   
			</div>
		</section><!-- .error-404 -->		
	</div><!-- #primary -->
</main><!-- #main -->
<?php get_footer();