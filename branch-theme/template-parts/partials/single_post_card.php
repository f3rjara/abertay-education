<?php
  $description_card = substr( get_the_excerpt() , 0, 180) . '...' ;
?>
<div class="single-post-card card h-100">
  <div class="grid">
    <figure class="effect-apollo">
      <?= wp_get_attachment_image( get_post_thumbnail_id(),  'large', false, array('class' => 'card-img-top') ); ?>
      <figcaption>
        <a href="<?= get_the_permalink() ?>"  aria-label="<?= get_the_title() ?>"><?= get_the_title()?></a>
      </figcaption>
    </figure>
  </div>
  <div class="card-body">
    <div class="card-text">     
      <h4 class="card-title"><?= get_the_title() ?></h4>
      <p class="date-post"> <i class='bx bx-calendar'></i> <?php the_time('M j, Y'); ?></p>
      <p class="extract-content"><?= $description_card ?></p>
    </div>
    <div class="card-button">
      <a href="<?= get_permalink( get_the_ID() )?>"  aria-label="<?= get_the_title() ?>" 
                class="btn btn-abertay btn-abertay-outline btn-abertay-medium">
                Find out more
      </a>
    </div>
  </div>
</div>