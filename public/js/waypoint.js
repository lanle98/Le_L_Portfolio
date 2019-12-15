(() => {
  let percent = document.querySelectorAll(".percent"),
    aboutIcon = document.querySelectorAll(".box"),
    projects = document.querySelectorAll(".portfolio-piece");

  //generate random number
  function random(min, max) {
    return Math.random() * (max - min) + min;
  }

  //gsap for about icons
  aboutIcon.forEach(icon => {
    var about = new Waypoint({
      element: document.querySelector(".About"),
      handler: function(direction) {
        gsap.fromTo(
          icon,
          random(1, 3),

          { scale: 0, opacity: 0 },
          { scale: 1, opacity: 1, ease: Elastic.easeOut.config(1, 0.3) }
        );
        this.destroy();
      },
      offset: "50%"
    });
  });

  //gsap for skill percent bars
  percent.forEach(p => {
    var skill = new Waypoint({
      element: document.querySelector(".Skills"),
      handler: function(direction) {
        gsap.fromTo(
          p,
          random(2, 5),

          { left: "-100%", opacity: 0 },
          { left: 0, opacity: 1, ease: Power1.easeOut }
        );
        this.destroy();
      },
      offset: "50%"
    });
  });

  //gsap for portfolio pieces
  projects.forEach(project => {
    var portfolio = new Waypoint({
      element: document.querySelector(".Portfolio"),
      handler: function(direction) {
        gsap.fromTo(
          project,
          random(2, 4),

          { scale: 0, opacity: 0 },
          { scale: 1, opacity: 1, ease: Elastic.easeOut }
        );
        this.destroy();
      },
      offset: "60%"
    });
  });
})();
