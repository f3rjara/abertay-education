function load_video_local() {
  document
    .querySelectorAll('.multimedia-btn-play-video-local')
    .forEach(function (button) {
      if (button) {
        let stopVideos = document.querySelectorAll('video');
        button.addEventListener('click', function () {
          stopVideos.forEach((video) => { video.pause(); video.currentTime = 0; });
          const databtn = Object.values(button.dataset);
          let id_video =   `.video-local-${databtn[0]}_${databtn[1]}`;
          let myVideo = document.querySelector(id_video);
          if (myVideo) {
            myVideo.play();

            // Playing event
            myVideo.addEventListener('playing', function () {
              button.style.display = 'none';
              myVideo.controls = true;
            });

            // Pause event
            myVideo.addEventListener('pause', function () {
              button.style.display = 'flex';
              myVideo.controls = false;
            });

            myVideo.addEventListener('ended', function () {
              button.style.display = 'flex';
              myVideo.controls = false;
            });
          }
        });
      }
    });
}


export { 
  load_video_local
};