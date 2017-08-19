function Galeria() {
    this.data = [];
    //this.widthClass = "col-md-10";
    this.contenedor = "";
    this.contenedorPaginado = "";
    this.columnas = 3;
    this.filas = 1;
    this.paginaActual = 1;
    this.cantidadPaginas = 0;
    this.functionClick = "ver";
}

Galeria.prototype.construir = function () {
    var htmlTemp = "";
    var textoPaginas = "";
    
    var cantidadPaginasEntera = Math.trunc(this.data.length / (this.columnas * this.filas));
    var cantidadPaginasDecimal = (this.data.length / (this.columnas * this.filas)) - cantidadPaginasEntera;

    if (cantidadPaginasDecimal > 0) {
        this.cantidadPaginas = cantidadPaginasEntera + 1
    } else {
        this.cantidadPaginas = cantidadPaginasEntera
    }

    //se agrega paginador
    $("#" + this.contenedorPaginado).html("");

    textoPaginas = "1 de " + this.cantidadPaginas;
    htmlTemp='<div class="row rowWithBottomMargin">';
    htmlTemp=htmlTemp+'<div class="col-md-3"></div>';
    htmlTemp=htmlTemp+'<div class="col-md-3"></div>';
    htmlTemp = htmlTemp + '<div class="col-md-3">';

    htmlTemp = htmlTemp + '<button type="button" id="btnPagPrev" class="arrowPager" onclick="galeria.paginado(0);" > <span class="glyphicon glyphicon-arrow-left"></span> </button>';
    htmlTemp = htmlTemp + '<label id="textoPag" class="control-label"> página ' + textoPaginas + '</label>';
    htmlTemp = htmlTemp + '<button type="button" id="btnPagNext" class="arrowPager" onclick="galeria.paginado(1);" > <span class="glyphicon glyphicon-arrow-right"></span> </button>';
    
    htmlTemp=htmlTemp+'</div>';
    htmlTemp = htmlTemp + '</div>';
    $("#" + this.contenedorPaginado).append(htmlTemp);

    $("#btnPagPrev").hide(); //la primera vez simepre oculto
    if (this.paginaActual == this.cantidadPaginas) { //si al sumarle una pag llegue a la final debo ocultar el botton de next pag
        $("#btnPagNext").hide();
    } else {
        $("#btnPagNext").show();
    }


    this.construirTabla();
   
}

Galeria.prototype.paginado = function (direccion) {
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
                $("#btnPagNext").hide();
            } else {
                $("#btnPagNext").show();
            }            
        }

        if (this.cantidadPaginas > 1) {
            $("#btnPagPrev").show();
        }

    } else { // asumo atras
        if (this.paginaActual != 0) {
            this.paginaActual = this.paginaActual - 1;

            if (this.paginaActual == 1) { //si al restarle una pag llegue a al principio debo ocultar el botton de next pag
                $("#btnPagPrev").hide();
            } else {
                $("#btnPagPrev").show();
            }

            if (this.cantidadPaginas > 1) {
                $("#btnPagNext").show();
            }
        }
    }
    
    $("#textoPag").text("página " + this.paginaActual + " de " + this.cantidadPaginas);

    this.construirTabla();
}

Galeria.prototype.construirTabla = function () {
    var contIni = 0;
    var contFin = 0;
    var htmlTemp = "";
    var contadorColumnas = 0;
    var textoPaginas = "";

    $("#" + this.contenedor).html("");

    if(this.paginaActual==1){
        contIni=0;
    }else{
        contIni=((this.paginaActual-1)*this.filas * this.columnas);
    }    

    if (this.data.length < (this.filas * this.columnas) ) { //si la cantidad de items es menor que la cantidad de items de una pagina itero hasta lo item final
        contFin = this.data.length-1;
    } else {
        contFin = (contIni + (this.filas * this.columnas))-1;
    }    

    for (i = contIni; i <= contFin; i++) {

        if (contadorColumnas == 0) {
            htmlTemp = '<div class="row">';
        }

        htmlTemp = htmlTemp + '<div class="col-md-3">';
        htmlTemp = htmlTemp + '<div class="row">';
        htmlTemp = htmlTemp + '<div class="col-md-10">';
        htmlTemp = htmlTemp + '<a href="#" onclick="' + this.functionClick + "(" + this.data[i].id + ')">'
        htmlTemp = htmlTemp + '<img width="100" class="responsive-image" src="data:image/png;base64,' + this.data[i].imagen + '" />';
        htmlTemp = htmlTemp + '</a>';
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '<div class="row">';
        htmlTemp = htmlTemp + '<div class="col-md-10">';
        htmlTemp = htmlTemp + this.data[i].descripcion1;
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '<div class="row">';
        htmlTemp = htmlTemp + '<div class="col-md-10">';
        htmlTemp = htmlTemp + this.data[i].descripcion2;
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '<div class="row">';
        htmlTemp = htmlTemp + '<div class="col-md-10">';
        htmlTemp = htmlTemp + this.data[i].descripcion3;
        htmlTemp = htmlTemp + '</div>';
        htmlTemp = htmlTemp + '</div>';
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
