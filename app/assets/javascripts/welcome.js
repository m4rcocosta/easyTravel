$(document).ready(function() {
    var date = new Date();

    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();

    if (month < 10) month = "0" + month;
    if (day < 10) day = "0" + day;

    var today = year + "-" + month + "-" + day;       
    $("#dataAndata").attr("value", today);
    $("#dataRitorno").attr("value", today);
    $("#birth").attr("value", today);

    // Disabilita città selezionata in partenza da arrivo
    $("#cittaPartenza").on("change", function() {
        var arrivi = document.getElementById("cittaArrivo");
        var partenza = document.getElementById("cittaPartenza").value;
        var arrivo;
        if(partenza == arrivi.value) arrivi.value = arrivi[0].value;
        for (var i = 1; i < arrivi.length; i++) {
            arrivo = arrivi[i];
            if(arrivo.value == partenza) arrivo.disabled=true;
            else arrivo.disabled=false;
        }
    });

    //Ricerca voli
    $("#ricerca").on("click", function() {
        var cittapartenza = document.getElementById("cittaPartenza").value;
        if(cittapartenza == "none") {
            M.toast({html: "Devi selezionare la città di partenza!"});
            return false;
        }
        var cittaarrivo = document.getElementById("cittaArrivo").value;
        if(cittaarrivo == "none") {
            M.toast({html: "Devi selezionare la città di arrivo!"});
            return false;
        }
        var dataandata = document.getElementById("dataAndata").value;
        var anno = dataandata.substr(2, 2);
        var mese = dataandata.substr(5, 2);
        var giorno = dataandata.substr(8 ,2);
        dataandata = anno+mese+giorno;
        var dataritorno, rtn;
        if($("#check").is(":checked")) {
            dataritorno = document.getElementById("dataRitorno").value;
            anno = dataritorno.substr(2, 2);
            mese = dataritorno.substr(5, 2);
            giorno = dataritorno.substr(8 ,2);
            dataritorno = anno+mese+giorno+"/";
            rtn = "1";
        }
        else {
            dataritorno = "";
            rtn = "0";
        }
        var link = "https://www.skyscanner.it/trasporti/voli/"+cittapartenza+"/"+cittaarrivo+"/"+dataandata+"/"+dataritorno+"?adults=1&children=0&adultsv2=1&childrenv2=&infants=0&cabinclass=economy&rtn="+rtn+"&preferdirects=true&outboundaltsenabled=false&inboundaltsenabled=false&ref=home#results"
        window.open(link, "_blank");
        window.focus();
    });

});