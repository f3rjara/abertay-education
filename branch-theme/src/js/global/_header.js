// When the user scrolls down 20px from the top of the document, slide down the navbar

function scrollFunction() {
  console.log(document.documentElement.scrollTop);
  console.log(document.body.scrollTop);
  console.log('--');
 /*  if (
    document.body.scrollTop > 800 ||
    document.documentElement.scrollTop > 800
  ) {
    document.getElementById('navbar').style.top = '0px';
  }
  if (
    (document.body.scrollTop > 50 && document.body.scrollTop < 800) ||
    (document.documentElement.scrollTop > 50 &&
      document.documentElement.scrollTop < 800)
  ) {
    document.getElementById('navbar').style.top = '-50px';
  } else {
    document.getElementById('navbar').style.top = '0px';
  } */
}

export { 
  scrollFunction
};