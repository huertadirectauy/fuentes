

$(window).load(function(){
    $("#btnLogin").click(function(){
        /*$.ajax({
            type: "POST",
            async: true,
            dataType: "json",
            url: url + '/Usuario/Login',
            data: { usuario: $("#txtUsuario").val(), password: $("#txtPassword").val() },
            success: function (data) {
                alert(data.mensaje);
            },
            error: function (err) {
                console.log(err);
            }
        });*/
        var llamadaAjax=new HAjax();
        llamadaAjax.url = '/Usuario/Login';
        llamadaAjax.method = 'POST';
        llamadaAjax.data = { usuario: $("#txtUsuario").val(), password: $("#txtPassword").val() };
        llamadaAjax.success = function (data) {
            alert(data.mensaje);
        }

        llamadaAjax.llamar();
    });
});
