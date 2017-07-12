
var idProductoActual = 0;

$(window).load(function () {

    $("#btnComprar").click(function () {
        /*var llamadaAjax = new HAjax();
        llamadaAjax.url = '/pedido/comprar';
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

        llamadaAjax.llamar();*/
    });

    cargarCarrito();

});

function cargarCarrito() {
    
    var itemsCarrito = [];
    if ( sessionStorage.getItem("itemsCarrito") !=null) {
        itemsCarrito = JSON.parse(sessionStorage.getItem("itemsCarrito"))
        //carrito.functionDeleteClick = "verProducto";        
    }

    armarCarrito(itemsCarrito);
}

function borrar(idProductoCarrito) {
    var encontro = false;
    var i = 0;
    var itemsCarrito = JSON.parse(sessionStorage.getItem("itemsCarrito"));
    
    var largo = 0;

    if (itemsCarrito != null)
        largo = itemsCarrito.length;

    while (i < largo && !encontro) {
        if (itemsCarrito[i].id == idProductoCarrito)
            encontro = true;
        else
            i++;
    }

    if (encontro) {
        itemsCarrito.splice(i, 1);
        //if (itemsCarrito.length>1)
        armarCarrito(itemsCarrito); //reconstruyo con un item menos
        sessionStorage.setItem("itemsCarrito", JSON.stringify(itemsCarrito));
    }

}

function armarCarrito(items) {
    carrito = new Carrito();
    
    carrito.columnas = 3;
    carrito.contenedor = "tablaCarrito";
    carrito.contenedorPaginadoCarrito = "tablaCarritoPaginado";
    carrito.data = items;

    carrito.construir();

    if (carrito.data.length!=0){
        $("#productosCarrito").show();
        $("#lblCartCount").text(carrito.data.length);
    }else{
        $("#productosCarrito").hide();
        $("#lblCartCount").text("");
    }

    //calculo total
    var total = 0;
    for (i = 0; i < carrito.data.length; i++) {
        total += parseFloat(carrito.data[i].descripcion3.split(" ")[1]) * carrito.data[i].cantidad;
    }

    if (total > 0) {
        $("#btnComprar").show();
        $("#totalCarrito").text("Total $" + total);
    } else {
        $("#btnComprar").hide();
        $("#totalCarrito").text("No hay productos en el carrito");
    }

}