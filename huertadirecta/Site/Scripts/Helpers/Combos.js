function cargarCombo(cmb,data,optionSelected) {
    var largo = data.length;
    var i = 0;

    if (optionSelected != undefined) {
        $("#" + cmb).append(optionSelected);
        $("#" + cmb).append('<option value="' + data[0].clave + '">' + data[0].valor + '</option>');
    } else {
        $("#" + cmb).append('<option value="' + data[0].clave + '" selected="selected"' + '>' + data[0].valor + '</option>');
    }

    if (largo >= 0) {

        for (i = 1; i < largo; i++) {
            $("#" + cmb).append('<option value="' + data[i].clave + '>' + data[i].valor + '</option>');
        }

    }
}