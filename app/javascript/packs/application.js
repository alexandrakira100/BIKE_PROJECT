import "bootstrap";

const unavailableBikes = document.querySelectorAll(".unavailable-bike");
console.log(unavailableBikes)
unavailableBikes.forEach((bike) => {
  console.log(bike.parentNode)
  bike.parentNode.addEventListener("click", (event) => {
    event.preventDefault();
  })
});
