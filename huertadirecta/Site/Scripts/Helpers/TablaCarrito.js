var carrito = null;

function Carrito() {
    this.data = [];
    //this.widthClass = "col-md-10";
    this.contenedor = "";
    this.contenedorPaginadoCarrito = "";
    this.columnas = 3;
    this.filas = 1;
    this.paginaActual = 1;
    this.cantidadPaginas = 0;
    this.functionClick = "";
    this.functionDeleteClick = "borrar";
}

Carrito.prototype.construir = function () {
    var htmlTemp = "";
    var textoPaginas = "";
    var cantidadPaginasEntera = 0;
    var cantidadPaginasDecimal = 0;
    
    if (this.data.length > 0) { //si esta vacio el array de datos se inicaliza todo y se oculta

        cantidadPaginasEntera = Math.trunc(this.data.length / (this.columnas * this.filas));
        cantidadPaginasDecimal = (this.data.length / (this.columnas * this.filas)) - cantidadPaginasEntera;

        if (cantidadPaginasDecimal > 0) {
            this.cantidadPaginas = cantidadPaginasEntera + 1
        } else {
            this.cantidadPaginas = cantidadPaginasEntera
        }

        //se agrega paginador
        $("#" + this.contenedorPaginadoCarrito).html("");

        textoPaginas = "1 de " + this.cantidadPaginas;
        htmlTemp = '<div class="row rowWithBottomMargin">';
        htmlTemp = htmlTemp + '<div class="col-md-3"></div>';
        htmlTemp = htmlTemp + '<div class="col-md-3"></div>';
        htmlTemp = htmlTemp + '<div class="col-md-3">';

        htmlTemp = htmlTemp + '<button type="button" id="btnCarritoPagPrev" class="arrowPager" onclick="carrito.paginado(0);" > <span class="glyphicon glyphicon-arrow-left"></span> </button>';
        htmlTemp = htmlTemp + '<label id="textoCarritoPag" class="control-label"> página ' + textoPaginas + '</label>';
        htmlTemp = htmlTemp + '<button type="button" id="btnCarritoPagNext" class="arrowPager" onclick="carrito.paginado(1);" > <span class="glyphicon glyphicon-arrow-right"></span> </button>';

        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '</div>';
        $("#" + this.contenedorPaginadoCarrito).append(htmlTemp);

        $("#btnCarritoPagPrev").hide(); //la primera vez simepre oculto
        if (this.paginaActual == this.cantidadPaginas) { //si al sumarle una pag llegue a la final debo ocultar el botton de next pag
            $("#btnCarritoPagNext").hide();
        } else {
            $("#btnCarritoPagNext").show();
        }

        this.construirTabla();
    } else {
        $("#" + this.contenedorPaginadoCarrito).html("");
        $("#" + this.contenedor).html("");
        this.cantidadPaginas = 0;
        this.paginaActual = 0;
    }
}

Carrito.prototype.paginado = function (direccion) {
    var htmlTemp = "";
    var contadorColumnas = 0;
    var contIni = 0;
    var contFin = 0;
    var textoPaginas = "";
    var cantidadPaginas = 0;

    if (direccion == 1) {
        if (this.paginaActual != this.cantidadPaginas) {
            this.paginaActual = this.paginaActual + 1;
            if (this.paginaActual == this.cantidadPaginas) { //si al sumarle una pag llegue a la final debo ocultar el botton de next pag
                $("#btnCarritoPagNext").hide();
            } else {
                $("#btnCarritoPagNext").show();
            }
        }

        if (this.cantidadPaginas > 1) {
            $("#btnCarritoPagPrev").show();
        }

    } else { // asumo atras
        if (this.paginaActual != 0) {
            this.paginaActual = this.paginaActual - 1;

            if (this.paginaActual == 1) { //si al restarle una pag llegue a al principio debo ocultar el botton de next pag
                $("#btnCarritoPagPrev").hide();
            } else {
                $("#btnCarritoPagPrev").show();
            }

            if (this.cantidadPaginas > 1) {
                $("#btnCarritoPagNext").show();
            }
        }
    }

    $("#textoCarritoPag").text("página " + this.paginaActual + " de " + this.cantidadPaginas);

    this.construirTabla();
}

Carrito.prototype.construirTabla = function () {
    var contIni = 0;
    var contFin = 0;
    var htmlTemp = "";
    var contadorColumnas = 0;
    var textoPaginas = "";

    $("#" + this.contenedor).html("");

    if (this.paginaActual == 1) {
        contIni = 0;
    } else {
        contIni = ((this.paginaActual - 1) * this.filas * this.columnas);
    }

    if (this.data.length < (this.filas * this.columnas)) { //si la cantidad de items es menor que la cantidad de items de una pagina itero hasta lo item final
        contFin = this.data.length-1;
    } else {
        contFin = (contIni + (this.filas * this.columnas)) - 1;
    }

    for (i = contIni; i <= contFin; i++) {

        if (contadorColumnas == 0) {
            htmlTemp = '<div class="row">';
        }

        htmlTemp = htmlTemp + '<div class="col-md-3">';
        htmlTemp = htmlTemp + ' <div class="row">';
        htmlTemp = htmlTemp + '     <div class="col-md-10">';
        htmlTemp = htmlTemp + '         <a href="#" onclick="' + this.functionClick + "(" + this.data[i].id + ')">'
        htmlTemp = htmlTemp + '         <img width="100" class="responsive-image" src="' + this.data[i].imagen + '" />';
        htmlTemp = htmlTemp + '         </a>';
        htmlTemp = htmlTemp + '     </div>';
        htmlTemp = htmlTemp + ' </div>';
        htmlTemp = htmlTemp + ' <div class="row">';
        htmlTemp = htmlTemp + '     <div class="col-md-10">';
        htmlTemp = htmlTemp +           this.data[i].descripcion1;
        htmlTemp = htmlTemp + '     </div>';
        htmlTemp = htmlTemp + ' </div>';
        htmlTemp = htmlTemp + ' <div class="row">';
        htmlTemp = htmlTemp + '     <div class="col-md-10">';
        htmlTemp = htmlTemp +       this.data[i].descripcion2;
        htmlTemp = htmlTemp + '     </div>';
        htmlTemp = htmlTemp + ' </div>';
        htmlTemp = htmlTemp + ' <div class="row">';
        htmlTemp = htmlTemp + '     <div class="col-md-10">';
        htmlTemp = htmlTemp +       this.data[i].descripcion3;
        htmlTemp = htmlTemp + '     </div>';
        htmlTemp = htmlTemp + ' </div>';
        htmlTemp = htmlTemp + ' <div class="row">';
        htmlTemp = htmlTemp + '     <div class="col-md-10">';
        htmlTemp = htmlTemp + '         Cantidad: <input type="number" id="carritoProd' + this.data[i].id + ' " value="' + this.data[i].cantidad + '" />';
        htmlTemp = htmlTemp + '     </div>';
        htmlTemp = htmlTemp + ' </div>';
        htmlTemp = htmlTemp + ' <div class="row">';
        htmlTemp = htmlTemp + '     <div class="col-md-5" style="text-align:right;padding-top:5px">';
        htmlTemp = htmlTemp + '         <input type="button" id="btnCarritoProdBorrar' + this.data[i].id + ' " value="  Quitar" onclick="' + this.functionDeleteClick + "(" + this.data[i].id + ')" />';
        htmlTemp = htmlTemp + '     </div>';
        htmlTemp = htmlTemp + ' </div>';
        htmlTemp = htmlTemp + '</div>';

        if (contadorColumnas == this.columnas - 1 || (i == (this.data.length - 1))) {
            htmlTemp = htmlTemp + '</div><br/>';
            $("#" + this.contenedor).append(htmlTemp);
            contadorColumnas = 0
        } else {
            contadorColumnas++;
        }

    }
}
