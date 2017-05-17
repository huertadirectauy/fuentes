$(window).load(function () {
    $("#btnRegistrar").click(function () {
       
        var llamadaAjax = new HAjax();
        llamadaAjax.url = '/Persona/RegistrarPersona';
        llamadaAjax.method = 'POST';
        llamadaAjax.data = {
                primerNombre: $("#txtNombre1").val(),
                segundoNombre: $("#txtNombre2").val(),
                primerApellido: $("#txtApellido1").val(),
                segundoApellido: $("#txtApellido2").val(),
                tipoDocumento: 1, //ci
                numeroDocumento: $("#txtNumeroDocumento").val(),
                email: $("#txtEmail").val(),
                telefonoFijo: $("#txtTelefono").val(),
                telefonoMovil: $("#txtCelular").val(),
                fechaNacimiento: $("#txtFechaNacimiento").val(),
                usuario: { usuario: $("#txtUsuario").val(), password: $("#txtPassword").val() }
        };
        llamadaAjax.success = function (data) {
            alert(data.mensaje);
        }

        llamadaAjax.llamar();
    });
});