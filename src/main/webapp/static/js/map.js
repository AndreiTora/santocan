let pawIcon = L
		.icon({
			iconUrl : 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Black_Paw.svg/1200px-Black_Paw.svg.png',
			iconSize : [ 25, 25 ], // size of the icon
		});

let map = L.map('map', {
	center : [ 43.317362, -8.311263 ],
	zoom : 15
});

L
		.tileLayer(
				'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
				{
					attribution : '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>'
				}).addTo(map);

let marker = L.marker([ 43.317362, -8.311263 ], {
	icon : pawIcon
}).bindPopup('REFUGIO SANTOCAN').addTo(map);