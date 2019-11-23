(() => {
  let aboutSection = document.querySelector(".About");
  let aboutLink = document.querySelector(".about-link");
  let contactLink = document.querySelector(".contact-link");
  let contactSection = document.querySelector(".Contact");
  aboutLink.addEventListener("click", function() {
    aboutSection.scrollIntoView();
  });

  contactLink.addEventListener("click", function() {
    contactSection.scrollIntoView();
  });
})();
