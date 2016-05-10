$(document).ready(function(){
  $(".navLinkContainer__resumeLink").on ("click", function(){
    var iframe = document.createElement('iframe');
    iframe.setAttribute("src", "https://resume.creddle.io/embed/1rktq4ubpei");
    iframe.width = 850 + "px";
    iframe.height = 1100 + "px";
    $("main").prepend("<div id='iframeContainer'></div>");
    $("#iframeContainer").html(iframe);
  });
});
