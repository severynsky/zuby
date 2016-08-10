<div class="row">
	<div class="col-md-12">
		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="name_site">М.Р.С стоматологія</div>
			<div class="copy">2016 всі права захищено ©</div>
		</footer>
	</div>
</div>

</div>

</div>


<script>
	google.maps.event.addDomListener(window, 'load', init);
	var map;
	function init() {
		var mapOptions = {
			center: new google.maps.LatLng(49.843961, 24.021967),
			zoom: 16,
			zoomControl: false,
			disableDoubleClickZoom: true,
			mapTypeControl: false,
			scaleControl: false,
			scrollwheel: true,
			panControl: true,
			streetViewControl: false,
			draggable: true,
			overviewMapControl: true,
			overviewMapControlOptions: {
				opened: false,
			},
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			styles: [{
				"featureType": "landscape",
				"elementType": "labels",
				"stylers": [{"visibility": "off"}]
			}, {
				"featureType": "transit",
				"elementType": "labels",
				"stylers": [{"visibility": "off"}]
			}, {
				"featureType": "poi",
				"elementType": "labels",
				"stylers": [{"visibility": "off"}]
			}, {
				"featureType": "water",
				"elementType": "labels",
				"stylers": [{"visibility": "off"}]
			}, {
				"featureType": "road",
				"elementType": "labels.icon",
				"stylers": [{"visibility": "off"}]
			}, {"stylers": [{"hue": "#00aaff"}, {"saturation": -100}, {"gamma": 2.15}, {"lightness": 12}]}, {
				"featureType": "road",
				"elementType": "labels.text.fill",
				"stylers": [{"visibility": "on"}, {"lightness": 24}]
			}, {"featureType": "road", "elementType": "geometry", "stylers": [{"lightness": 57}]}],
		}
		var mapElement = document.getElementById('map');
		var map = new google.maps.Map(mapElement, mapOptions);
		var locations = [
			['my_pointer', 'undefined', 'undefined', 'undefined', 'undefined', 49.844331, 24.022193399999992,
				'http://alexbro.siteprosto.ks.ua/wp-content/uploads/pointer.svg']
		];
		for (i = 0; i < locations.length; i++) {
			if (locations[i][1] == 'undefined') {
				description = '';
			} else {
				description = locations[i][1];
			}
			if (locations[i][2] == 'undefined') {
				telephone = '';
			} else {
				telephone = locations[i][2];
			}
			if (locations[i][3] == 'undefined') {
				email = '';
			} else {
				email = locations[i][3];
			}
			if (locations[i][4] == 'undefined') {
				web = '';
			} else {
				web = locations[i][4];
			}
			if (locations[i][7] == 'undefined') {
				markericon = '';
			} else {
				markericon = locations[i][7];
			}
			marker = new google.maps.Marker({
				icon: markericon,
				position: new google.maps.LatLng(locations[i][5], locations[i][6]),
				map: map,
				title: locations[i][0],
				desc: description,
				tel: telephone,
				email: email,
				web: web
			});
			link = '';
		}

	}
</script>
<?php wp_footer(); ?>
</body>
</html>