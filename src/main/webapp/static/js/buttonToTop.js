let mybutton = document.getElementById("botonArriba");

window.onscroll = function() {
	scrollFunction()
	};

let scrollFunction = () => {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

let topFunction = () => {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}