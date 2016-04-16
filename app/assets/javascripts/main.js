$(document).ready(function(){

  // var colorInputField = document.querySelector("#colorChooser");
  //
  // colorInputField.addEventListener('input', function(event){
  //   document.body.style.backgroundColor = this.value;
  // }, false); //closes colorInputField event listener

  // canvas javaScript
  (function initiateCanvas() {
    var canvas, ctx;

    canvas = document.querySelector("#myCanvas");
    // Fixes issue with sizing canvas
    canvas.width = 300;
    canvas.height = 300;
    //
    ctx = canvas.getContext('2d');
    drawMonster(115,20);

    function drawMonster(x,y) {
      //Bolts
      ctx.fillStyle='gray';
      ctx.strokeStyle='black'
      // Horizontal Part of Bolt
      ctx.fillRect(x,y+15,-10,10);
      ctx.strokeRect(x,y+15,-10,10);
      ctx.fillRect(x+70,y+15,10,10);
      ctx.strokeRect(x+70,y+15,10,10);
      // Vertical Part of Bolt
      ctx.fillRect(x-20,y+10,10,20);
      ctx.strokeRect(x-20,y+10,10,20);
      ctx.fillRect(x+80,y+10,10,20);
      ctx.strokeRect(x+80,y+10,10,20);
      // Head
      ctx.fillStyle='lightgreen';
      ctx.strokeStyle='black';
      lineWidth = 2;
      ctx.fillRect(x,y,70,70);
      ctx.strokeRect(x,y,70,70);
      // Eyes
      ctx.fillStyle='red';
      ctx.fillRect(x+10,y+15,10,10);
      ctx.fillRect(x+50,y+15,10,10);
      ctx.fillStyle='yellow'
      ctx.fillRect(x+13,y+18,5,5);
      ctx.fillRect(x+53,y+18,5,5);
      // Nose
      ctx.fillStyle='purple';
      ctx.fillRect(x+30,y+30,8,15);
      // Mouth
      ctx.fillStyle='red';
      ctx.fillRect(x+10,y+60,50,5);
      // Neck
      ctx.fillStyle='lightgreen';
      ctx.fillRect(x+25,y+70,20,20);
      ctx.strokeRect(x+25,y+70,20,20);
      // Body
      ctx.fillRect(x-20,y+90,110,125);
      ctx.strokeRect(x-20,y+90,110,125);
      // Left arm
      ctx.fillRect(x-35,y+90,15,60);
      ctx.strokeRect(x-35,y+90,15,60);
      // Right arm
      ctx.fillRect(x+90,y+90,15,60);
      ctx.strokeRect(x+90,y+90,15,60);
      // Legs
      ctx.fillRect(x,y+215,25,40);
      ctx.strokeRect(x,y+215,25,40);
      ctx.fillRect(x+45,y+215,25,40);
      ctx.strokeRect(x+45,y+215,25,40);
    } // closes drawPerson function
  }());// closes canvas javaScript
  // canvas javaScript
}); // closes document
