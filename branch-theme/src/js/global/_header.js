// When the user scrolls down 20px from the top of the document, slide down the navbar
import bootstrap from './../../../node_modules/bootstrap/dist/js/bootstrap.bundle.min';

function scrollFunction() {
  const navbar_abertay = document.querySelector('.navbar-abertay');
  const btn_abertay_toogle = document.querySelector('.navbar-toggle-abertay');
  const abertay_logo_white = document.querySelector('.abertay_logo_white');
  const abertay_logo_color = document.querySelector('.abertay_logo_color');
  const button_search_toogle = document.querySelector('.button-search-toogle');
  
  if ( document.body.scrollTop > 500 || document.documentElement.scrollTop > 500 ) {
    navbar_abertay.style.top = '0px';
    navbar_abertay.classList.add('navbar-abertay-scroll-show');
    btn_abertay_toogle.classList.add('navbar-abertay-scroll-show');
    button_search_toogle.classList.add('navbar-abertay-scroll-show');
    abertay_logo_white.classList.add('d-none');
    abertay_logo_color.classList.remove('d-none');
    document.querySelector('#abertay_form_navbar_search').classList.remove('active_search');
    document.querySelector('.bg_form_abertay').classList.remove('active_search');
  }
  if (  (document.body.scrollTop > 50 && document.body.scrollTop < 500) ||
        (document.documentElement.scrollTop > 50 &&  document.documentElement.scrollTop < 500 ) )  {  
    navbar_abertay.style.top = '-150%'; 
    navbar_abertay.classList.remove('navbar-abertay-scroll-show');
    btn_abertay_toogle.classList.remove('navbar-abertay-scroll-show');
    button_search_toogle.classList.remove('navbar-abertay-scroll-show');
    abertay_logo_white.classList.remove('d-none');
    abertay_logo_color.classList.add('d-none');
  } 
  else {  
    navbar_abertay.style.top = '0px'; 
  }
}

function nabvar_movil() {
  let button_mobile = document.querySelectorAll('.navbar-toggle-abertay');
  let McButton = document.querySelectorAll('.McButton');
  let navbar_collapse_abertay = document.querySelectorAll('.navbar-collapse-abertay');

  if (button_mobile) {
    button_mobile.forEach( button => {
      button.addEventListener('click', function () {
        McButton.forEach( isMcButton => {
          isMcButton.classList.toggle('active');
        });
        navbar_collapse_abertay.forEach( isNavbar => {
          isNavbar.classList.toggle('navbar-collapse-is-show');
        });
      });
    });
    
  }
}

function show_form_search() {
  let button_search_toogle = document.querySelector('.button-search-toogle');
  let abertay_form_navbar_search = document.querySelector('.abertay_form_navbar_search');
  let bg_form_abertay = document.querySelector('.bg_form_abertay');
  
  if ( button_search_toogle ) {
    button_search_toogle.addEventListener('click', function () {
      if( abertay_form_navbar_search ) {
        abertay_form_navbar_search.classList.toggle('active_search');
        bg_form_abertay.classList.toggle('active_search');
      }
    });
  }
  bg_form_abertay.addEventListener('click', function () {
    if( abertay_form_navbar_search ) {
      abertay_form_navbar_search.classList.remove('active_search');
      bg_form_abertay.classList.remove('active_search');
    }
  });
  
}

function formSearchBanner() {
  const btn_search = document.querySelector('.btn-search');
  const input_search = document.querySelector('.input-search');
  const form_search = document.querySelector('#abertay_form_navbar_search');

  if( btn_search ){
    btn_search.addEventListener('click' ,function( event ) {
      event.preventDefault();
      if( input_search ){
        if( input_search.value.trim().length  >= 0 && input_search.value.trim().length <= 2) {
          var myAlert = document.getElementById('toastNotice');//select id of toast
          var bsAlert =  bootstrap.Toast.getOrCreateInstance( myAlert );//inizialize it
          bsAlert.show();//show it
        }
        else {
          form_search.submit();
        }
      }
    });
  }
}

// load menu Level
function loadMenuLevel() {
  // close all inner dropdowns when parent is closed
  document
    .querySelectorAll('.navbar .dropdown')
    .forEach(function (everydropdown) {
      everydropdown.addEventListener('hidden.bs.dropdown', function () {
        this.querySelectorAll('.submenu').forEach(function (everysubmenu) {
          everysubmenu.classList.remove('show-submenu-items');
          document.querySelectorAll('.dropdown-menu a').forEach(function (element) {
            element.classList.remove('show');
            element.classList.remove('show-menu-item');
          });
        });
      });
    });
  let submenus = [];
  document.querySelectorAll('.dropdown-menu a').forEach(function (element) {
    element.addEventListener('click', function (e) {
      let nextEl = this.nextElementSibling;
      let level_menu = this.getAttribute('data-level-menu');
      hiddenSubmenus();
      submenus[level_menu] = nextEl;
      if (nextEl && nextEl.classList.contains('submenu')) {
        e.preventDefault();
        e.stopPropagation();
        nextEl.classList.toggle('show');
        nextEl.classList.toggle('show-submenu-items');
        element.classList.toggle('show-menu-item');
      }
    });
  });
}

function hiddenSubmenus() {
  document.querySelectorAll('.dropdown-menu a').forEach(function (submenu) {
    if (submenu) {
      let nextEl = submenu.nextElementSibling;
      if (nextEl && nextEl.classList.contains('submenu')) {
        nextEl.classList.remove('show');
        nextEl.classList.remove('show-submenu-items');
        submenu.classList.remove('show-menu-item');
      }
    }
  });
}

function controlesubmenuDesktop() {
  document.querySelectorAll('.dropdown-toggle').forEach( function ( button ) {
    button.addEventListener('click' , () => {
      document.querySelectorAll('.submenu').forEach( function (everysubmenu) {
        everysubmenu.classList.remove('show');
      });
    });
  });
}

function isParent(refNode, otherNode) {
  var parent = otherNode.parentNode;
  do {
    if (refNode == parent) {
      return true;
    } else {
      parent = parent.parentNode;
    }
  } while (parent);
  return false;
}

// Menu in Hover for Menu Desktop
function showMenuHover() {
  let  menuPrimary = document.querySelector('.abertay-menu-desktop .dropdown .dropdown-toggle');
  const submenuPrimary = document.querySelector('.dropdown .dropdown-menu-primary');
  menuPrimary = menuPrimary == null ? document.querySelector('.abertay-menu-megamenu .dropdown .dropdown-toggle') : false;

  let submenus  = document.querySelectorAll('.abertay-menu-desktop .dropdown-item.is-menu-item');
  let submenusMega  = document.querySelectorAll('.abertay-menu-megamenu .dropdown-item.is-menu-item');
  let entryHover = false;
  
  if ( menuPrimary) {
    if (window.innerWidth > 992) {
      let entrySubmenuHover = false;

      submenuPrimary.addEventListener( 'mouseover', function ( event ) {
        //event.stopPropagation();
        if (!isParent(this, event.relatedTarget) && event.target == this){ 
          entrySubmenuHover = true;
        }
      });
      submenuPrimary.addEventListener( 'mouseout', function ( event ) {
        //event.stopPropagation();
        if (!isParent(this, event.relatedTarget) && event.target == this){ 
          entryHover = false;
          entrySubmenuHover = false;
          menuPrimary.click();
        }
      });

      menuPrimary.addEventListener( 'mouseover', function () {
        entryHover = true;
        menuPrimary.click();
      });

      menuPrimary.addEventListener( 'mouseout', function () {
        if ( !entrySubmenuHover ) {
          entryHover = false;
          menuPrimary.click();
        }
      });

      window.addEventListener('scroll', function() {
        if ( document.body.scrollTop > 500 || document.documentElement.scrollTop > 500 ) { 
          if ( entryHover || menuPrimary.classList.contains('show') ) {
            menuPrimary.click();
            entryHover = false;
          }
        }
      });
    }
  }
  if( submenus ) {
    if (window.innerWidth > 992) {
      submenus.forEach( submenu  => {
        submenu.addEventListener( 'mouseover', function () {
          submenu.click();
        });
      });
    }
  }
  if( submenusMega ){
    if (window.innerWidth > 992) {
      submenusMega.forEach( submenu  => {
        let goSrc = submenu.getAttribute('href');
        submenu.addEventListener('click', () => {
          location.href = goSrc;
        });
        
      });
    }
  }
}


export { 
  scrollFunction,
  nabvar_movil,
  show_form_search,
  formSearchBanner,
  hiddenSubmenus,
  loadMenuLevel,
  controlesubmenuDesktop,
  showMenuHover
};