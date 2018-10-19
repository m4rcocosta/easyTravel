// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs
//= require materialize

function abilitaRitorno(chkItem) {
    if ($(chkItem).is(":checked"))
        $("#dataRitorno").removeAttr("disabled");
    else
        $("#dataRitorno").attr("disabled", "true");
}

$(document).ready(function() {
    $('.dropdown-trigger').dropdown();
    $('.tabs').tabs();
    $('select').formSelect();
    $('.tooltipped').tooltip();
    
    var datess = document.querySelectorAll('.datepicker');
    M.Datepicker.init(datess, {
        autoClose: true,
        format: 'dd-mm-yyyy',
        defaultDate: new Date(),
        setDefaultDate: true,
        firstDay: 1,
        i18n: {
            cancel: "Indietro",
            clear: "Cancella",
            months: ["Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre"],
            monthsShort: ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"],
            weekdays: ["Domenica", "Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato"],
            weekdaysShort: ["Dom", "Lun", "Mar", "Mer", "Gio", "Ven", "Sab"],
            weekdaysAbbrev: ["D", "L", "M", "M", "G", "V", "S"]
        }
    });


});
