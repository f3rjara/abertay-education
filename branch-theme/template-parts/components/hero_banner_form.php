<?php
  $sub_hero_banner_form = get_sub_field('sub_hero_banner_form');

  $hidden_section = $sub_hero_banner_form['visible_section'] ? 'd-none' : 'd-block';
  $id_section = $sub_hero_banner_form['id_section'];
  $class_custom_section = $sub_hero_banner_form['class_custom_section'];

  $bg_color_section = $sub_hero_banner_form['background_color_section'];

  $bg_image_desktop = $sub_hero_banner_form['background_image_desktop'];
  $bg_image_mobile = $sub_hero_banner_form['background_image_movil'];

?>
<section  class="section-hero-banner-form <?= $hidden_section ?> <?= $class_custom_section ?>"
          id="<?= $id_section ?>"
          style="background-color: <?= $bg_color_section ?>;">

  <div class="container-fluid container-image">
    <picture class="picture-content">
        <source media="(min-width: 521px)" srcset="<?php echo $bg_image_desktop['url'];?>">
        <source media="(max-width: 520px)" srcset="<?php echo $bg_image_mobile['url'];?>">
        <img class="resp-img" alt="ACCELERATE YOUR CARRER" src="<?php echo $bg_image_mobile['url'];?>"/>
    </picture>
  </div>

  <div class="container container-content">
    <div class="row">
      
    </div>
  </div>
</section>