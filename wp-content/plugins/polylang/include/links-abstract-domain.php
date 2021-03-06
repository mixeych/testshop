<?php

/**
 * Links model for use when using one domain or subdomain per language
 *
 * @since 2.0
 */
abstract class PLL_Links_Abstract_Domain extends PLL_Links_Permalinks {

	/**
	 * Constructor
	 *
	 * @since 2.0
	 *
	 * @param object $model PLL_Model instance
	 */
	public function __construct( &$model ) {
		parent::__construct( $model );

		// Avoid cross domain requests ( mainly for custom fonts )
		add_filter( 'content_url', array( $this, 'site_url' ) );
		add_filter( 'plugins_url', array( $this, 'site_url' ) );
	}

	/**
	 * Returns the current site url
	 *
	 * @since 1.8
	 *
	 * @param string $url
	 * @return string
	 */
	public function site_url( $url ) {
		$lang = $this->get_language_from_url();
		$lang = $this->model->get_language( $lang );
		return $this->add_language_to_link( $url, $lang );
	}
}
