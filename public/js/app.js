(function() {
  const modalLinks = document.querySelectorAll("a.modal")
  
  modalLinks.forEach((link) => {
    const sectionId = link.getAttribute("href").replace("#", "");
    const section = document.getElementById(sectionId);
    const closeButton = section.querySelector(".close");

    link.addEventListener("click", (event) => {
      event.preventDefault();
      section.style.display = "block";
    });

    closeButton.addEventListener("click", (event) => {
      event.preventDefault();
      section.style.display = "none";
    });
  });

  const setupCarousel = (wrapper) => {
    const screenWidth = 800;
    const screenList = wrapper.querySelector("ol");

    let currentIndex = 0;
    const minIndex = 0;
    const maxIndex = screenList.children.length - 1;

    const moveTo = (targetIndex) => {
      if (targetIndex < minIndex || targetIndex > maxIndex) {
        return;
      }
      currentIndex = targetIndex;
      const offset = -targetIndex * screenWidth
      screenList.style.left = offset + "px";
    }

    wrapper
      .querySelectorAll(".previous")
      .forEach((previous) => {
        previous.addEventListener("click", () => moveTo(currentIndex - 1));
      });

    wrapper
      .querySelectorAll(".next")
      .forEach((previous) => {
        previous.addEventListener("click", () => moveTo(currentIndex + 1));
      });
  };

  setupCarousel(document.getElementById("gallery"));
  setupCarousel(document.getElementById("cast_crew"));

  const quotesWrapper = document.getElementById("quotes");
  const quotes = quotesWrapper.querySelectorAll("li");
  const minQuote = 0;
  const maxQuote = quotes.length - 1
  let currentQuote = 0;

  const fadeOut = (index) => quotes[index].style.opacity = 0;
  const fadeIn = (index) => quotes[index].style.opacity = 1;

  const showNextQuote = () => {
    fadeOut(currentQuote);

    currentQuote = currentQuote + 1;
    if (currentQuote < minQuote || currentQuote > maxQuote) {
      currentQuote = 0;
    }

    fadeIn(currentQuote);
    setTimeout(() => showNextQuote(), 6000);
  }

  showNextQuote();
})();
