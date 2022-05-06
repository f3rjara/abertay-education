<?php
  $content_card = get_field('group_content_card');

  $title_card = strlen( $content_card['custom_title'] ) > 0  ? $content_card['custom_title'] : get_the_title();
  $post_id = get_the_ID();
  $post_permalink = get_permalink( $post_id );
  $image_primary = get_field('custom_image_card') ? get_field('custom_image_card') : get_post_thumbnail_id();

  $program_modality = strlen( $content_card['program_mode'] ) > 0  ? $content_card['program_mode']  : '100% Online';
  $label_button = strlen( get_field('label_button_card') ) > 0 ? get_field('label_button_card') : 'Read more';

  if( strlen( $content_card['description_card'] ) > 0 ) { $description_card = $content_card['description_card']; }
  else { $description_card = substr( get_the_excerpt() , 0, 120) . '...' ;}
  $features_cards = $content_card['features_cards'];
?>

<div class="programm-card card my-3 h-100 ">
  <div class="grid">

    <figure class="effect-apollo">
      <?= wp_get_attachment_image( $image_primary,  'large', false, array('class' => 'card-img-top') ); ?>
      <figcaption>
        <a href="<?= $post_permalink ?>"  aria-label="<?php echo $title_card; ?>"><?php echo $title_card; ?></a>
      </figcaption>
    </figure>
  </div>


  <div class="card-body">
    <div class="card-text">
      <p class="modality-prg"><?= $program_modality ?></p>
      <h4 class="card-title"><?= $title_card ?></h4>
      <ul class="features-cards">
        <?php foreach ( $features_cards as $key => $item ) : ?>
          <li class="item-list">
            <?= wp_get_attachment_image( $item['icon'] ,  'full', false, array('class' => 'icon-feature') ); ?>
            <h6 class="feature text-p2"><?=  $item['title'] ?> <span><?=  $item['description'] ?></span></h6>
          </li>
        <?php endforeach; ?>
      </ul>
      <p class="card-text"><?= $description_card ?></p>
    </div>
    <div class="card-button">
      <a href="<?= $post_permalink ?>"   aria-label="<?php echo $title_card; ?>" class="btn btn-abertay btn-abertay-outline-pink"><?= $label_button ?></a>
    </div>
  </div>
  
</div>