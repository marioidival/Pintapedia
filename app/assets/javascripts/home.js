$(function(){
  $("#dialog").dialog({
   autoOpen: false, 
   height: 'auto',
   width: 'auto',
   title: "Diga sua Giria",
   buttons: {
   Cancelar: function(){
    $(this).dialog("close");
   }
   },
   show: {
    effect: "shake",
    duration : 1000
   },
   hide: {
    effect: "explode",
    duration: 500
   },

  });
  $("#opener").click(function() {
    $("#dialog").dialog("open");
  });


});
