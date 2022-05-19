import { scrollFunction, nabvar_movil, show_form_search, formSearchBanner ,  hiddenSubmenus, loadMenuLevel, controlesubmenuDesktop, showMenuHover } from './global/_header';
import { load_video_local } from './components/_flexible_multimedia';
import { splide_carrousel } from './components/_splide_carrousel';

function theme_mode() {
  return document.querySelector('body').classList.contains('developmet-mode') ? 'developmet-mode' : 'production-mode';
}

window.onload = function () {
  console.log('Theme Ready');
  theme_mode(); 
  loadMenuLevel();
  hiddenSubmenus();
  showMenuHover();
  nabvar_movil();
  show_form_search();
  formSearchBanner();
  controlesubmenuDesktop();
  load_video_local();
  splide_carrousel();
};

window.onscroll = function( ) {
  scrollFunction();
};
