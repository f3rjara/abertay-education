import { scrollFunction, nabvar_movil, show_form_search, formSearchBanner ,  hiddenSubmenus, loadMenuLevel } from './global/_header';

function theme_mode() {
  return document.querySelector('body').classList.contains('developmet-mode') ? 'developmet-mode' : 'production-mode';
}

window.onload = function () {
  console.log('Theme Ready');
  theme_mode(); 
  loadMenuLevel();
  hiddenSubmenus();
  nabvar_movil();
  show_form_search();
  formSearchBanner();
};

window.onscroll = function( ) {
  scrollFunction();
};
