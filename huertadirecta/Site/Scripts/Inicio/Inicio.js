$(window).load(function () {  
    var map;
    cargarZonas();
    initMap();
});
    function initMap() {
        map = new google.maps.Map(document.getElementById('googleMap'), {
            center: { lat: -34.7644421, lng: -55.7793048 },
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP            
        });

        var place = new google.maps.LatLng(-34.7644421, -55.7793048);
        var marker = new google.maps.Marker({
            position: place
            , title: 'Huerta Sanchez'
            , map: map
            ,
        });

        var place2 = new google.maps.LatLng(-34.6999124, -55.7463098);
        var marker2 = new google.maps.Marker({
            position: place2
            , title: 'Mercado cercania'
            , map: map
            ,
        });

        map.drawRoute({
            origin: [-34.7644421, -55.7793048],
            destination: [-34.6999124, -55.7463098],
            travelMode: 'walking',
            strokeColor: '#0054c2',
            strokeOpacity: 0.6,
            strokeWeight: 6
        });
    }

    function cargarZonas() {
        var llamadaAjax = new HAjax();
        llamadaAjax.url = '/Maestros/Zonas';
        llamadaAjax.method = 'GET';
        llamadaAjax.data = {}
        llamadaAjax.success = function (data) {
            cargarCombo('cmbZona', data,'<option value="1">Estas en?</option>');
            
        }

        llamadaAjax.llamar();

    }