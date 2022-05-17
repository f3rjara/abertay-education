<?php
    $sub_navigation_section =  get_sub_field( 'sub_navigation_section' );
    $repeater_navigation =  $sub_navigation_section['repeater_navigation'];
    
?>
<section  class="navigation-sections d-flex align-items-center 
                <?php echo $sub_navigation_section['custom_class_section']; ?>"
          style="background-color: <?php echo $sub_navigation_section['background_color']; ?>;"
          id="<?php echo $sub_navigation_section['id_section']; ?>"> 
  <div class="container">
    <div class="row  d-flex row-list">
      <div class="col-sm-12">
        <nav id="navbar-navigation-sections" class="navbar" role="navigation">
          <!-- Menu manual o Registrar menu en Functions -->
          <ul class="list-group list-group-horizontal list-navigation nav nav-pills navbar-nav " data-offset-top="200">
            <?php if( $repeater_navigation ): foreach ( $repeater_navigation as $key => $nav_item ) : ?>
              <li class="nav-item ">
                  <a  href="#<?php echo $nav_item['id_section'] ?>" 
                      aria-label="<?php echo $nav_item['label_in_menu'] ?>" 
                      class="nav-link me-2">
                      <?php echo $nav_item['label_in_menu'] ?>
                  </a>
              </li>
            <?php endforeach;  endif; ?>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</section>