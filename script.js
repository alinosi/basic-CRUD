window.onscroll = function() {scrollFunction()};
          
          function scrollFunction() {
            if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
              document.getElementById("ul-navbar").style.backdropFilter = "blur(10px)";
              document.getElementById("ul-navbar").style.backgroundColor = "rgb(0,0,0,0.7)";
            } else {
              document.getElementById("ul-navbar").style.backgroundColor = "transparent";
              document.getElementById("ul-navbar").style.backdropFilter = "blur(0px)";
            }
          }