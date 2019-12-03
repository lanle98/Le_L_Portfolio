(() => {
  let portfolioPiece = document.querySelectorAll(".portfolio-piece"),
    portfolioFilter = document.querySelectorAll(".portfolio-filter");

  function getData() {
    let url = `/${this.getAttribute("href")}`;
    console.log(url);
    fetch(url)
      .then(res => {
        return res.json();
      })
      .then(data => {
        console.log(data);
      });
  }

  //generate dynamic box sizes
  for (let i = 0; i < portfolioPiece.length; i++) {
    if (i == 0 || i == 3 || i == 4 || i == 7 || i == 8 || i == 10) {
      portfolioPiece[i].classList.add("col-md-4");
    } else {
      portfolioPiece[i].classList.add("col-md-8");
    }
  }

  portfolioFilter.forEach(filter => filter.addEventListener("click", getData));
})();
