let stars = document.querySelectorAll(".star");
	document.querySelector(".star-container").addEventListener("click", starRating);
	let rating = document.querySelector(".rating");

	function starRating(e) {
	  stars.forEach((star) => star.classList.remove("star__checked"));
	  const i = [...stars].indexOf(e.target);
	  if (i > -1) {
	    stars[i].classList.add("star__checked");
	    rating.textContent = `${stars.length - i}/5`;
	  } else {
	    rating.textContent = `${0}/5`;
	  }
	}