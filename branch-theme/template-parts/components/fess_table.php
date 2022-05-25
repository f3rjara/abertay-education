<?php
  $sub_fees_table = get_sub_field('sub_fees_table');
  /* CONFIGURATION SECTION */
  $hidden_section = $sub_fees_table['visible_section'] ? 'd-none' : '';
  $id_section = $sub_fees_table['id_section'];
  $class_custom_section = $sub_fees_table['class_custom_section'];
  $bg_color_section = $sub_fees_table['background_color_section'];
  $dark_mode = $sub_fees_table['dark_section_mode'] ? 'dark-mode-section' : '';
  $repeater_fees = $sub_fees_table['repeater_fees'];
?>

<section  class="section-fees-table py-abertay <?= $hidden_section ?> <?= $dark_mode ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">
  <div class="container">
    <div class="row mx-2 mx-xl-0 d-flex justify-content-center">
      <div class="col-12 col-lg-10 col-xl-7">
        <h2 class="title-section text-center mb-4"><?= $sub_fees_table['title_section'] ?></h2>
        <?php if( strlen( $sub_fees_table['text_caption_section'] ) > 0 ) : ?>
          <p class="caption-text text-center text-p2 mb-4"><?= $sub_fees_table['text_caption_section'] ?></p>
        <?php endif; ?>
      </div>
    </div>
    <div class="row mx-2 mx-xl-0 d-flex justify-content-center mt-3">
      <?php foreach ( $repeater_fees as $key => $data ): $features = $data['repeater_features']; ?>
        <div class="col-12 col-lg-7 col-featues mb-3">
          <h4 class="title-caption mb-3 text-center"><?= $data['title_caption'] ?></h4>
          <div class="content-date w-100">
            <table class="table table-striped table-hover">
              <tbody>
                <?php if($features): foreach ($features as $key => $value) :  ?>
                  <tr class="row-title"> <td class="text-center"><?=$value["title"]?></td> </tr>
                  <tr class="row-description"> <td class="text-center"><?=$value["description"]?></td> </tr>
                <?php endforeach; endif; ?>
              </tbody>
            </table>
          </div>
        </div>
      <?php endforeach; ?>
    </div>
    <!-- CTA BUTTON FOR PROGRAMS SLIDER  -->
    <?php $link = $sub_fees_table['cta_button'];  if( $link ): 
        $link_url = $link['url'];
        $link_title = $link['title'];
        $link_target = $link['target'] ? $link['target'] : '_self';
    ?>
    <div class="row ">
      <div class="col-12 mt-3 text-center">
        <a  class="btn btn-abertay" 
            aria-label="<?php echo esc_html( $link_title ); ?>" 
            href="<?php echo esc_url( $link_url ); ?>" 
            target="<?php echo esc_attr( $link_target ); ?>">
            <?php echo esc_html( $link_title ); ?>
        </a>
      </div>
    </div>
    <?php endif; ?>
    <!-- END CTA BUTTON FOR PROGRAMS SLIDER  -->
  </div>
</section>