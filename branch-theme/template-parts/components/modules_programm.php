<?php
  $sub_modules = get_sub_field('sub_modules_programm');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_modules['visible_section'] ? 'd-none' : '';
  $id_section = $sub_modules['id_section'];
  $class_custom_section = $sub_modules['class_custom_section'];
  $bg_color_section = $sub_modules['background_color_section'];
  $dark_mode = $sub_modules['dark_mode_section'] ? 'dark-mode' : '';
  $repeater_modules = $sub_modules['repeater_modules'];
  $title_tab = $sub_modules['default_title_tab'];
?>

<section  class="section-modules-programm py-abertay <?= $hidden_section ?> <?= $dark_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-7">
        <h2 class="title-section text-center mb-4"><?= $sub_modules['title_section']  ?></h2>
        <?php if( strlen( $sub_modules['caption_text'] ) > 0 ) : ?>
          <p class="caption-text text-p2 text-center mb-4"><?= $sub_modules['caption_text']  ?></p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row row-modules">
      <div class="col-12">

        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
          <?php if( $repeater_modules): foreach ( $repeater_modules as $key => $module ) :?>
            <li class="nav-item" role="presentation">
              <button class="nav-link <?php if( $key == 0) echo 'active'?>" 
                      id="pills-<?= $key ?>-tab" data-bs-toggle="pill" 
                      data-bs-target="#pills-<?= $key ?>" type="button" role="tab" 
                      aria-controls="pills-<?= $key ?>" aria-selected="true">
                <?= $title_tab.' '.($key+1) ?>
              </button>
            </li>
          <?php endforeach; endif; ?>
        </ul>


        <div class="tab-content" id="pills-tabContent">
          <?php if( $repeater_modules): foreach ( $repeater_modules as $key => $module ) :?>
            <div  class="tab-pane fade <?php if( $key == 0) echo 'show active'?>" 
                  id="pills-<?= $key ?>" role="tabpanel"
                  aria-labelledby="pills-<?= $key ?>-tab">
              <h5 class="title-module"><?= $module['title_module'] ?></h5>
              <hr class="separator">
              <p class="description-module text-p2"><?= $module['description_module'] ?></p>
            </div>
          <?php endforeach; endif; ?>
        </div>
      </div>
    </div>
  </div>
</section>