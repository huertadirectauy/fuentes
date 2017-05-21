$(window).load(function () {
    cargarZonas();
    $("#btnRegistrar").click(function () {       
        var llamadaAjax = new HAjax();
        llamadaAjax.url = '/producto/ListaProductos';
        llamadaAjax.method = 'POST';
        llamadaAjax.data = {
            idCategoria: $("#txt").val(),
            nombre: $("#txt").val(),
            idProductor: $("#txt").val(),
            idZona: $("#txt").val(),
            idPuntoVenta: 1 
            }
        llamadaAjax.success = function (data) {
            alert(data.mensaje);
        }

        llamadaAjax.llamar();
    });

    function cargarZonas() {
        var llamadaAjax = new HAjax();
        llamadaAjax.url = '/Maestros/Zonas';
        llamadaAjax.method = 'GET';
        llamadaAjax.data = {}
        llamadaAjax.success = function (data) {            
            cargarCombo('cmbZona',data)
        }

        llamadaAjax.llamar();
       
    }
});
