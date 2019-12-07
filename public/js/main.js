(() => {
  let portfolioPiece = document.querySelectorAll(".portfolio-piece"),
    modal = document.querySelector(".modal"),
    modalContent = document.querySelector(".modal-content"),
    closeLightbox = document.querySelectorAll(".close-lightbox"),
    portfolioPage = document.querySelector(".portfolio-page"),
    portfolioHeader = portfolioPage.querySelector(".header"),
    portfolioName = portfolioPage.querySelector(".portfolio-piece-name"),
    link = portfolioPage.querySelector(".link"),
    promoText = portfolioPage.querySelector(".promo-text"),
    paragraph1 = portfolioPage.querySelector(".para-1"),
    paragraph2 = portfolioPage.querySelector(".para-2"),
    paragraph3 = portfolioPage.querySelector(".para-3"),
    img1 = portfolioPage.querySelector(".img-1");

  //fetching data AJAX
  function getData(e) {
    e.preventDefault();
    let url = `portfolio/${this.getAttribute("href")}`;
    console.log(url);
    fetch(url)
      .then(res => {
        return res.json();
      })
      .then(data => {
        console.log(data);
        parseData(data);
      })
      .catch(err => {
        // Do something for an error here
        console.log("Error Reading data " + err);
      });

    modal.classList.add("show");
  }

  //add data into DOM
  function parseData(content) {
    portfolioHeader.innerHTML = content.header;
    portfolioName.innerHTML = content.name;
    link.innerHTML = content.link;
    promoText.innerHTML = content.promo_text;
    img1.src = content.thumbnail;
    paragraph1.innerHTML = content.paragraph_1;
    paragraph2.innerHTML = content.paragraph_2;
  }

  //event listener for portfolio piece
  portfolioPiece.forEach(e => e.addEventListener("click", getData));

  //close lightbox function
  closeLightbox.forEach(close => {
    close.addEventListener("click", function() {
      modal.classList.remove("show");
    });
  });
})();
