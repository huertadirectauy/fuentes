// función general ajax

function HAjax() {
    this.BaseUrl= "http://localhost:63667/api";
    this.method="POST";
    this.url="";
    this.datatype = "json";
    this.data = {};
    this.success=null;
    this.error = function (e) {
        alert("Error:" + e.error);
    };
}

HAjax.prototype.llamar=function(){
    $.ajax({
        type: this.method,
        async: true,
        dataType: this.datatype,
        url: this.BaseUrl + this.url,
        data: this.data,
        success: this.success,
        error: this.error
    });
}


