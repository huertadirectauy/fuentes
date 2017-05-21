function cargarCombo(cmb,data) {
    var largo = data.length;
    var i = 0;

    if (largo >= 0) {

        for (i = 0; i < largo; i++) {
            $("#" + cmb).append('<option value="' + data[i].clave + '" selected="selected">' + data[i].valor + '</option>');
        }
    }
}