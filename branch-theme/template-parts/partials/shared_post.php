<?php 
  $post_url   = isset( $args['post_url'] ) ? $args['post_url'] : get_permalink();
  $title_post = isset( $args['title_post'] ) ? $args['title_post'] : get_the_title();
?>
<div class="share-icons-block"> 
  <p class="share-title normal-p2">Share This</p>
  <ul class="list-group list-group-horizontal list-shared-post">
    <!-- shared on Facebook -->
    <li class="list-group-item pt-1">
      <a  target="_blank" 
          class="share-button share-facebook" 
          href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $post_url; ?>" 
          title="Share on Facebook">
          <i class='bx bxl-facebook'></i>
      </a>
    </li>
    <!-- shared on LinkeIn -->
    <li class="list-group-item pt-1">
      <a  target="_blank" 
          class="share-button share-LinkedIn" 
          http://www.linkedin.com/shareArticle?url=  &title=
          href="https://linkedin.com/shareArticle?url=<?php echo $post_url; ?>&title=<?php echo $title_post; ?>" 
          title="Share on LinkedIn">
          <i class='bx bxl-linkedin' ></i>
      </a>
    </li>
    <!-- shared on Twitter -->
    <li class="list-group-item pt-1">
      <a  target="_blank" 
          class="share-button share-twitter" 
          href="https://twitter.com/intent/tweet?url=<?php echo $post_url; ?>&text=<?php echo $title_post; ?>&via=<?php the_author_meta( 'twitter' ); ?>" 
          title="Tweet this">
          <i class='bx bxl-twitter' ></i>
      </a>
    </li>
    <!--  Shared on WhatsApp -->
    <li class="list-group-item pt-1">
      <a  target="_blank" 
          class="share-button share-WhatsApp" 
          href="https://api.whatsapp.com/send?text=<?php echo $post_url; ?>" 
          title="Share on WhatsApp">
          <i class='bx bxl-whatsapp' ></i>
      </a>
    </li>
  </ul>
</div>