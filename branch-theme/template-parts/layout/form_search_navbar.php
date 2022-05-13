<form action="<?php echo home_url('/');?>" class="abertay_form_navbar_search" id="abertay_form_navbar_search" autocomplete="off">  
  <div class="input-group">
    <input  type="text" 
            class="form-control input-search" 
            name="s" 
            value="<?php the_search_query(); ?>" 
            minlength="3"
            placeholder="What programme are you looking for?" 
            aria-label="What programme are you looking for" 
            aria-describedby="button-search-form-banner">
    <div class="input-group-append">
        <button class="btn btn-search btn-abertay m-0" 
                id="button-search-form-banner"
                aria-label="Search content" 
                type="submit"> 
        <object type="image/svg+xml"
                style="pointer-events: none;"
                alt="What programme are you looking for"
                aria-label="What programme are you looking for" 
                data="<?php echo get_stylesheet_directory_uri().'/public/img/icon_search.svg'; ?>" 
                class="logo">
        </object>
        </button>
    </div>
  </div>
</form>
<div class="bg_form_abertay"></div>