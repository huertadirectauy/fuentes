var galeria; //objeto global a la pagina conservar en memoria
var idProductoActual = 0;

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
            galeria.functionClick = "verProducto";
            galeria.construir();
        }

        llamadaAjax.llamar();
    });

    $("#btnAgregar").click(function () {
        agregar();
    });

    $("#btnuploadimg").click(function () {
        var frmData = new FormData();

        frmData.append("Document", $("#img")[0].files[0]);

        $.ajax({
            url: 'http://localhost:63667/api/producto/subirImagen',
            type: "POST",
            dataType: "JSON",
            data: frmData,
            contentType: false,
            processData: false,
            success: function (result) {
            }
        })
    })
});

function cargarProductosProductor(idProductor) {
    var llamadaAjax = new HAjax();
    llamadaAjax.url = '/producto/ListaProductos';
    llamadaAjax.method = 'POST';
    llamadaAjax.data = {
        idCategoria: -1,
        nombre: '',
        idProductor: idProductor,
        idZona: -1,
        idPuntoVenta: -1
    }
    llamadaAjax.success = function (data) {
        galeria = new Galeria();
        galeria.columnas = 3;
        galeria.contenedor = "tablaProductos";
        galeria.contenedorPaginado = "tablaPaginado";
        galeria.data = data;
        galeria.functionClick = "verProducto";
        galeria.construir();
        $("#tituloListaProductos").text("Mas productos de " + $("#txtNombreProductorDetalle").text());

    }

    llamadaAjax.llamar();
}

function cargarZonas() {
    var llamadaAjax = new HAjax();
    llamadaAjax.url = '/Maestros/Zonas';
    llamadaAjax.method = 'GET';
    llamadaAjax.data = {}
    llamadaAjax.success = function (data) {
        cargarCombo('cmbZona', data)
    }

    llamadaAjax.llamar();

}

function verProducto(id) {
    idProductoActual = id;

    var llamadaAjax = new HAjax();
    llamadaAjax.url = '/producto/obtenerProducto?id=' + id;
    llamadaAjax.method = 'POST';
    llamadaAjax.data = {};
    llamadaAjax.success = function (data) {
        cargarPantallaProducto(idProductoActual,data);
    }

    llamadaAjax.llamar();
}

function cargarPantallaProducto(id,data) {
    $("#rowFormBusqueda").hide();
    $("#detalle").show();
    $("#txtNombreProductoDetalle").text(data.nombre);
    $("#txtPrecioProductoDetalle").text(data.moneda + " " + data.precio + " " + data.tipoUnidad);
    $("#txtNombreProductorDetalle").text(data.nombreProductor);
    $("#txtDescripcionDetalle").text(data.descripcion);
    $("#idProductoDetalle").val(id);

    //cargo los productos del productor
    cargarProductosProductor(data.idProductor);
}

function agregar() {
    //to do ir al servidor y guardar en session
    var itemsCarrito = [];
    if (sessionStorage.getItem("itemsCarrito") != null) {
        var itemsCarrito = JSON.parse(sessionStorage.getItem("itemsCarrito"));
        /*for (elem in jsonCarrito) {
            itemsCarrito.push(obj[elem]); //convierto a array
        }*/
    }

    //le agrego un item nuevo
    var it = {};
    it.id=$("#idProductoDetalle").val();
    it.imagen = $("#imgProductoDetalle").text();
    it.descripcion1=$("#txtNombreProductoDetalle").text();
    it.descripcion2 = $("#txtNombreProductorDetalle").text();
    it.descripcion3 = $("#txtPrecioProductoDetalle").text();
    it.cantidad=$("#txtCantidadProducto").val();
    
    itemsCarrito[itemsCarrito.length] = it;
    sessionStorage.setItem("itemsCarrito", JSON.stringify(itemsCarrito)); //guardo como string json
}