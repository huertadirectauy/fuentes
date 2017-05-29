var galeria; //objeto global a la pagina conservar en memoria
$(window).load(function () {
    cargarZonas();
    $("#btnBuscar").click(function () {
        var llamadaAjax = new HAjax();
        llamadaAjax.url = '/producto/ListaProductos';
        llamadaAjax.method = 'POST';
        llamadaAjax.data = {
            idCategoria: -1,
            nombre: $("#txtNombreProducto").val(),
            idProductor: -1,
            idZona: $("#cmbZona").val(),
            idPuntoVenta: -1 
            }
        llamadaAjax.success = function (data) {
            galeria = new Galeria();
            galeria.columnas = 3;
            galeria.contenedor = "tablaProductos";
            galeria.contenedorPaginado = "tablaPaginado";
            galeria.data = data;
            galeria.construir();
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
