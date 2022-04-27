<?php
/* Page Builder with ACF */
  // Case: Organisms Form Visualizate Contact
  if( get_row_layout() == 'sub_component_form_contact' ):
    get_template_part('template-parts/components/form_contact');
  endif;

  if( get_row_layout() == 'sub_component_hero_banner_form' ):
    get_template_part('template-parts/components/hero_banner_form');
  endif;

  if( get_row_layout() == 'sub_component_hero_banner_text' ):
    get_template_part('template-parts/components/hero_banner_text');
  endif;

  if( get_row_layout() == 'sub_component_why_abertay' ):
    get_template_part('template-parts/components/why_abertay');
  endif;

  if( get_row_layout() == 'sub_component_our_accreditations' ):
    get_template_part('template-parts/components/our_accreditations');
  endif;

  if( get_row_layout() == 'sub_component_content_multimedia' ):
    get_template_part('template-parts/components/content_flexible_multimedia');
  endif;

  if( get_row_layout() == 'sub_component_university_numbers' ):
    get_template_part('template-parts/components/university_numbers');
  endif;