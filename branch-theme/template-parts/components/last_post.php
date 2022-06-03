<?php
  /* the last post   */
  $data_query = array(
    'posts_per_page' => 1, /* how many post you need to display */
    'offset' => 0,
    'orderby' => 'post_date',
    'order' => 'DESC',
    'post_type' => 'post', /* your post type name */
    'post_status' => 'publish'
  );
  $query = new WP_Query($data_query);
?>
<?php if ($query->have_posts()) :
  while ($query->have_posts()) : $query->the_post(); 
  $description_card = substr( get_the_excerpt() , 0, 230) . '...' ;
  $post_permalink = get_permalink( get_the_ID() );?>

    <section class="section-last-post">
      <div class="container py-abertay">
        <div class="row">
          <div class="col-12 col-lg-6">
            <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" >
              <?= get_the_post_thumbnail(get_the_ID(), 'full', array('class' => 'img-section')); ?>
            </a>
          </div>
          <div class="col-12 col-lg-6 d-flex flex-column justify-content-around align-items-start">
            <div class="content-card">
            <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" > <h2 class="title-post"><?= get_the_title(); ?></h2></a>
              <p class="date-post"> <i class='bx bx-calendar'></i> <?php the_time('M j, Y'); ?></p>
              <p class="extract-content card-text"><?= $description_card ?></p>
            </div>
            <a href="<?= $post_permalink ?>"  aria-label="<?= get_the_title() ?>" 
              class="btn btn-abertay btn-abertay-outline">
              Find out more
            </a>
          </div>
        </div>
      </div>
    </section>
<?php endwhile;
endif;
?>