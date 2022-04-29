<?php
  $menu_primary = $args['primary_menu']; 
?>

<div class="navbar-collapse navbar-collapse-abertay">
  <ul class="navbar-nav navbar-nav-primary ">
    <?php foreach ($menu_primary as $key => $nav_item_primary) : ?>
      <?php
      // dropdown-menu-primary level 2
      if (count($nav_item_primary['children']) > 0) : ?>
        <li class="nav-item navbar-item-primary dropdown <?php echo implode(" ", $nav_item_primary['classes']); ?>">
          <a class="nav-link dropdown-toggle"  data-bs-toggle="dropdown">
            <?php echo $nav_item_primary['title']; ?>
          </a>
          <?php $submenu = $nav_item_primary['children']; ?>
          <ul class="dropdown-menu dropdown-menu-primary">
            <?php
            foreach ($submenu as $key => $dropdown_item) :
              if (count($dropdown_item['children']) <= 0) : ?>
                <li>
                  <a  class="dropdown-item  <?php echo implode(" ", $dropdown_item['classes']); ?>" 
                      href="<?php echo $dropdown_item['url'];  ?>">
                    <?php echo $dropdown_item['title'];  ?>
                  </a>
                </li>
              <?php else : ?>
                <li>
                  <a class="dropdown-item is-menu-item <?php echo implode(" ", $dropdown_item['classes']); ?>">
                    <?php echo $dropdown_item['title'];  ?> </a>
                  <?php echo pupulate_submenu_html($dropdown_item['children']); ?>
                </li>
              <?php endif; ?>
            <?php endforeach; ?>
          </ul>
        </li>
      <?php
      // menu Item level 1 
      else : ?>
        <li class="nav-item navbar-item-primary">
          <a  class="nav-link  <?php echo implode(" ", $nav_item_primary['classes']); ?>" 
              href="<?php echo $nav_item_primary['url']; ?> ">
            <?php echo $nav_item_primary['title'];  ?>
          </a>
        </li>
      <?php endif; ?>

    <?php endforeach; ?>
  </ul>
</div>