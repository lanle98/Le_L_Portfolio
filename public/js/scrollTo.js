(() => {
  document.querySelectorAll("nav .link").forEach((e, index) => {
    e.addEventListener("click", () => {
      gsap.to(window, {
        duration: 1,
        scrollTo: {
          y: ".section" + (index + 1),
          offsetY: 70
        },
        ease: Circ.easeOut
      });
    });
  });

  document.querySelector(".go-to-top").addEventListener("click", function() {
    gsap.to(window, {
      duration: 1,
      scrollTo: {
        y: "header",
        offsetY: 70
      },
      ease: Circ.easeOut
    });
  });
})();
