function abilitaRitorno(chkItem) {
    if ($(chkItem).is(":checked"))
        $("#ritorno").removeAttr("disabled");
    else
        $("#ritorno").attr("disabled", "true");
}

