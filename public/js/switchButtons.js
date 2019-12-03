(() => {
  let portfolioFilter = document.querySelectorAll(".portfolio-filter");
  let btnSwitch = document.querySelector(".switch");

  portfolioFilter.forEach((filter, index) => {
    filter.addEventListener("click", function() {
      //reset color for links
      for (let i = 0; i < portfolioFilter.length; i++) {
        portfolioFilter[i].style.color = "#ffb633";
      }

      let mq = window.matchMedia("(min-width: 768px)");

      function switchBtn(tabletViewPort) {
        if (tabletViewPort.matches) {
          filter.style.color = "white";
          if (index == 0) {
            btnSwitch.style.left = "0";
          } else if (index == 1) {
            btnSwitch.style.left = "33.33%";
          } else if (index == 2) {
            btnSwitch.style.left = "66.66%";
          }
        } else {
          // btnSwitch.syle.background = "black";
        }
      }

      switchBtn(mq);
      mq.addListener(switchBtn);
    });
  });
})();
