// LOCAL STORAGE API JS

var counter = localStorage.getItem("numberOfPageReloads") || 0;
counter++;
localStorage.setItem("numberOfPageReloads", counter);

function getCountValue() {
  document.getElementById("counter").innerHTML = localStorage.numberOfPageReloads;
  console.log(localStorage.numberOfPageReloads);
}

function displayAllLocalStorageItems() {
  // Clear list before displaying
  document.getElementById('list').innerHTML = "";

  for(var i = 0; i < localStorage.length; i++) {
    var key   = localStorage.key(i);
    var value = localStorage[key];
    console.log(key + ": " + value);
    var li =  document.createElement('li');
    li.innerHTML = key + ": " + value;
    document.getElementById('list').insertBefore(li, null);
  }
}

$('#show-local-storage').on("click", function displayAllLocalStorageItems(){
  // Clear list before displaying
  document.getElementById('list').innerHTML = "";

  for(var i = 0; i < localStorage.length; i++) {
    var key   = localStorage.key(i);
    var value = localStorage[key];
    console.log(key + ": " + value);
    var li =  document.createElement('li');
    li.innerHTML = key + ": " + value;
    document.getElementById('list').insertBefore(li, null);
  }
});







$("#add-item-to-local-storage").on("click", function addItemToLocalStorage(){
  localStorage.setItem("Junior_Web_Developer", "Dillon Downey");
  displayAllLocalStorageItems();
});

$("#remove-item-from-local-storage").on("click", function removeItemFromLocalStorage(){
  localStorage.removeItem("Junior_Web_Developer", "Dillon Downey");
  displayAllLocalStorageItems();
});

$('#clear-local-storage').on('click', function clearLocalStorage(){
  localStorage.clear();
  displayAllLocalStorageItems();
});


// GEO LOCATION API JS

// function showPosition(position) {
//   console.log("latitude  is: " + position.coords.latitude);
//   console.log("longitude is: " + position.coords.longitude);
// }
//
// function onError(err) {
//   console.log("Could not get the position");
// }

var displayCoords = document.getElementById("geo-message");
function getLocation(){
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  }
  else {
    displayCoords.innerHTML = "Geolocation API is not supported by your browser.";
  }
}

function showPosition(position) {
  displayCoords.innerHTML = "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude;
  console.log("Latitude  is: " + position.coords.latitude);
  console.log("Longitude is: " + position.coords.longitude);
}

function onError(err) {
    console.log("Could not get the position");
}

$("#remove-location").on("click", function removePosition(){
  displayCoords.innerHTML = "";
});


// function getLocation() {
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(showPosition);
//   }
//   else {
//     displayCoordinates.innerHTML = "Geolocation is not supported by this browser.";
//   }
// }
