import "bootstrap";

const unavailableBikes = document.querySelectorAll(".unavailable-bike");
unavailableBikes.forEach((bike) => {
  bike.parentNode.addEventListener("click", (event) => {
    event.preventDefault();
  })
});
