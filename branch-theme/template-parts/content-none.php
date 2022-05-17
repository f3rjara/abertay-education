<?php
/**
 * Template part for displaying a message that posts cannot be found *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/ *
 * @package ABERTAY
 */
  $s = get_search_query();
?>

<section class="no-results not-found">
  <h3 class="acg_primary_text">
    Search results for: <span class="acg_text_gray title-h2"><?php echo $s; ?></span>
  </h3>
  <hr class="separator-text"> <br>
	<div class="page-content">
		<?php
		if ( is_home() && current_user_can( 'publish_posts' ) ) :
			printf(
				'<p>' . wp_kses(
					__( 'Ready to publish your first post? <a href="%1$s">Get started here</a>.', 'acg' ),
					array(
						'a' => array(
							'href' => array(),
						),
					)
				) . '</p>',
				esc_url( admin_url( 'post-new.php' ) )
			);

		elseif ( is_search() ):  ?>

			<p class="acg_text_gray">
        <?php 
          esc_html_e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'acg' ); 
        ?>
      </p>
			<?php
			get_search_form();
		else : ?>

			<p>
        <?php esc_html_e( 'It seems we can&rsquo;t find what you&rsquo;re looking for. Perhaps searching can help.', 'acg' ); ?>
      </p>
			<?php
			get_search_form();
		endif;
		?>
	</div><!-- .page-content -->
</section><!-- .no-results -->
