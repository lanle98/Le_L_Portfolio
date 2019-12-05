(() => {
  console.log("filter");
  let designs = document.querySelectorAll(".design-categories"),
    developments = document.querySelectorAll(".development-categories"),
    both = document.querySelectorAll(".both-categories"),
    portfolioFilter = document.querySelectorAll(".portfolio-filter");
  console.log(designs);

  portfolioFilter.forEach((filter, index) =>
    filter.addEventListener("click", function() {
      let portfolioPiece = document.querySelectorAll(".portfolio-piece");
      if (index == 1) {
        console.log(index);
        developments.forEach(design => design.classList.remove("hidden"));
        designs.forEach(design => design.classList.add("hidden"));
      } else if (index == 2) {
        console.log(index);
        designs.forEach(design => design.classList.remove("hidden"));
        developments.forEach(design => design.classList.add("hidden"));
      } else {
        designs.forEach(design => design.classList.remove("hidden"));
        developments.forEach(design => design.classList.remove("hidden"));
      }

      //add animation
      portfolioPiece.forEach(piece => {
        gsap.fromTo(piece, 1, { opacity: 0 }, { opacity: 1 });
      });
    })
  );

  //   //generate dynamic box sizes
  //   for (let i = 0; i < portfolioPiece.length; i++) {
  //     if (i == 0 || i == 3 || i == 4 || i == 7 || i == 8 || i == 10) {
  //       portfolioPiece[i].classList.add("col-md-4");
  //     } else {
  //       portfolioPiece[i].classList.add("col-md-8");
  //     }
  //   }
})();
