<div class="partial-content-multimedia">
<?php 
  $flex_content = $args['flex_content'];
  $content_uniqid = $args['content_uniqid'];
  $key_global = $args['key'];
  
  if( $flex_content ) :
    $count_content = 0;
    foreach ( $flex_content  as $key => $content ):

      if( $content[0]['acf_fc_layout'] == 'add_video_local'): ?>
      <div class="content-video">
        <video class="video-local video-local-<?php echo $content_uniqid.'_'.$key_global; ?>" playsinline controlsList="nodownload">
            <source src="<?php echo $content[0]['get_video_local']; ?>"
                    type="video/mp4">
              Your browser does not support HTML video.
        </video>
        <div class="button-video-section d-flex justify-content-center align-items-center">
            <button class="multimedia-btn-play-video-local" 
                    type="button"
                    aria-label="play to video"
                    data-uniqid="<?php echo $content_uniqid;?>" 
                    data-keyglobal = "<?php echo $key_global;?>">
                    <i class='bx bx-play icon-btn-play'></i>
            </button>
        </div>
      </div>
      <?php elseif ( $content[0]['acf_fc_layout'] == 'add_external_video'): 
        $get_external_video = $content[0]['get_external_video'];
        // Use preg_match to find iframe src.
        preg_match('/src="(.+?)"/', $get_external_video, $matches);
        $src = $matches[1];      
        // Add extra parameters to src and replcae HTML.
        $params = array(
          'controls'  => 0,
          'hd'        => 1,
          'autohide'  => 1
        );
        $new_src = add_query_arg($params, $src);
        $iframe = str_replace($src, $new_src, $get_external_video);
        // Add extra attributes to iframe HTML.
        $attributes = 'frameborder="0"';
        $iframe = str_replace('></iframe>', ' ' . $attributes . '></iframe>', $iframe);   
      ?>
        <div class="emebed_univa_video">
          <?php  // Display customized HTML.
            echo $iframe; 
          ?>
        </div>
      <?php else: 
        $image = $content[0]['image'];
        echo wp_get_attachment_image( $image['ID'], 'full', false, array('class' => 'content_image image-.'.$content_uniqid.' image-key-global-'.$key_global ) ); 
      endif;
      $count_content ++;
    endforeach;
  endif;
?> 
</div>