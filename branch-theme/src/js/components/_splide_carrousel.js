//import Splide from '@splidejs/splide';

const splide_carrousel = () => {
  const splide_in_page = document.querySelectorAll('.splide');

  if (splide_in_page.length > 0) {
    splide_in_page.forEach( ( splide ) => {
      console.log('load splides');
      if (splide.classList.contains('splide-cards-programm')) {
        new Splide( splide, {
          perPage: 3,
          perMove: 1,
          arrowPath: 'false',
          autoplay: 'true',
          pagination : 'false',
          arrows: 'false',
          type: 'loop',
          interval: 4000,
          breakpoints: {
            520: { perPage: 1 },
            768: { perPage: 1 },
            1199: { perPage: 2 },
          },
        }).mount();
      }
    });
  }
};

export { 
  splide_carrousel
};