const btnPerro = document.getElementById('btnPerro');
const btnGato = document.getElementById('btnGato');
const btnAll = document.getElementById('btnAll');

btnPerro.addEventListener('click', (event) => filterSelection('Perro'));
btnGato.addEventListener('click', (event) => filterSelection('Gato'));
btnAll.addEventListener('click', (event) => filterSelection('all'));

const addActiveClass = (ele, name) => {
   let i, arr1, arr2;
   
   arr1 = ele.className.split(" ");
   arr2 = name.split(" ");
   
   for (i = 0; i < arr2.length; i++) {
      if (arr1.indexOf(arr2[i]) == -1) {
         ele.className += " " + arr2[i];
      }
   }
}

const removeActiveClass = (ele, name) => {
	let i, arr1, arr2;
	
	arr1 = ele.className.split(" ");
	arr2 = name.split(" ");
	
	for (i = 0; i < arr2.length; i++) {
		while (arr1.indexOf(arr2[i]) > -1) {
	         arr1.splice(arr1.indexOf(arr2[i]), 1);
	      }
	   }
	ele.className = arr1.join(" ");
}

const filterSelection = (c) => {
   let x, i;
   
   x = document.querySelectorAll(".filterElements");
   
   if (c == "all") 
	   c = "";
   
   Array.from(x).forEach(item => {
      removeActiveClass(item, "show");
      
      if (item.className.indexOf(c) > -1) 
    	  addActiveClass(item, "show");
   });
}

filterSelection('all');

let filterBtns = document.querySelector(".filterBtns");
let btns = filterBtns.getElementsByTagName("button");

for (let i = 0; i < btns.length; i++) {
   btns[i].addEventListener("click", function() {
      let current = document.getElementsByClassName("active");
      current[0].className = current[0].className.replace(" active", "");
      this.className += " active";
   });
}