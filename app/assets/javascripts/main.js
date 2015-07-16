$(document).ready(function(){

  var colorInputField = document.querySelector("#colorChooser")

  colorInputField.addEventListener('input', function(event){
    document.body.style.backgroundColor = this.value;
  }, false); //closes colorInputField event listener

  // canvas javaScript
  (function initiateCanvas() {
    var canvas, ctx;

    canvas = document.querySelector("#myCanvas");
    ctx = canvas.getContext('2d');

    drawPerson();

    function drawPerson() {
      ctx.fillStyle='#FF0000';
      ctx.fillRect(10,10,80,100);
    } // closes drawPerson function
  }());// closes canvas javaScript
  // canvas javaScript
}); // closes document