(function() {
    var openBtn = document.getElementById('nav-open');
    var closeBtn = document.getElementById('nav-close');
    var sideNav = document.getElementById('side-nav');
  
    openBtn.addEventListener('click', function() {
      sideNav.style.transition = 'left 0.5s ease-in-out';
      sideNav.style.left = '0%';
    });
  
    closeBtn.addEventListener('click', function() {
      sideNav.style.transition = 'left 0.5s ease-in-out';
      sideNav.style.left = '-80%';
    });



    
var windows = document.querySelectorAll(".window")
var winBtns = document.querySelectorAll(".window-switch");
let centLide = 1;

                    var palNav = function(nual){
                        windows.forEach((slide) => {
                            slide.classList.remove('active-window');

                            winBtns.forEach((btn)=>{
                                btn.classList.remove('active-switch');
                            });
                        });
                        windows[nual].classList.add('active-window');
                        winBtns[nual].classList.add('active-switch');
                    }
                    winBtns.forEach((btn, i) => {
                        btn.addEventListener("click", () => {
                            palNav(i);
                            centSlide  = i;
                        });
                    });

  })();
  