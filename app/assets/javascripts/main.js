$(document).ready(function(){

  var colorInputField = document.querySelector("#colorChooser")

  colorInputField.addEventListener('input', function(event){
    document.body.style.backgroundColor = this.value;
  }, false); //closes colorInputField event listener

}); // closes document