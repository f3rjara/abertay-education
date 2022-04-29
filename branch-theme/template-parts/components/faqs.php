<?php
$sub_faqs = get_sub_field('sub_faqs');
$id_unique = uniqid();

$render_global_content = $sub_faqs['render_global_content'];
if( $render_global_content ) { $content_sub_faqs = $sub_faqs; }
else {
  // Check value exists. ACF Flexible
  if( have_rows('sections_global_in_page', 'options') ):
    // Loop through rows.
    while ( have_rows('sections_global_in_page', 'options') ) : the_row();
      if( get_row_layout() == 'sub_component_faqs' ):
        $content_sub_faqs = get_sub_field('sub_faqs');; 
      endif;
    // End loop.
    endwhile;
  endif;
}
/* CONFIGURATION SECTION */
$hidden_section = $content_sub_faqs['visible_section'] ? 'd-none' : '';
$id_section = $content_sub_faqs['id_section'];
$class_custom_section = $content_sub_faqs['class_custom_section'];
$bg_color_section = $content_sub_faqs['background_color_section'];
$repeater_faqs = $content_sub_faqs['repeater_faqs'];
?>

<section  class="section-faqs py-abertay <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-7">
        <h2 class="title-primary text-center theme_purple_01_text"><?= $content_sub_faqs['title_primary'] ?></h2>
        <?php if( strlen( $content_sub_faqs['caption_text'] ) > 0 ) :?>
          <p class="caption-text mt-4 text-center text-p2">
            <?= $content_sub_faqs['caption_text'] ?>
          </p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row d-flex justify-content-center mt-4 ">
      <div class="col-12 col-lg-10">
        <div class="row-collapse">
          <div class="custom-acordeon col-sm-12 align-items-center justify-content-center">
            <div class="accordion accordion-flush" id="accordionFlush_<?php echo $id_unique; ?>">
              <?php foreach ($repeater_faqs  as $key => $item) : ?>
                <div class="accordion-item w-100">
                  <h2 class="accordion-header" id="flush-heading-<?php echo $id_unique; ?>-<?php echo $key; ?>">
                    <button class="accordion-button <?php if ($key > 0) echo 'collapsed'; ?>" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse-<?php echo $id_unique; ?>-<?php echo $key; ?>" aria-expanded="true" aria-controls="flush-collapse-<?php echo $id_unique; ?>-<?php echo $key; ?>">
                      <span class="desktop-body-1"><?php echo $item['title_item']; ?></span>
                      <div class="cube">&nbsp;</div>
                    </button>
                  </h2>
                  <div id="flush-collapse-<?php echo $id_unique; ?>-<?php echo $key; ?>" class="accordion-collapse collapse <?php if ($key == 0) echo 'show'; ?>" aria-labelledby="flush-heading-<?php echo $id_unique; ?>-<?php echo $key; ?>" data-bs-parent="#accordionFlush_<?php echo $id_unique; ?>">
                    <div class="accordion-body">
                      <?php echo $item['content_item']; ?>
                    </div>
                  </div>
                </div>
              <?php endforeach; ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>