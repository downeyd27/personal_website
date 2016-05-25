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

var displayCoords = document.getElementById("geo-message");

function getLocation(){
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition, errorPosition);
  }
  else {
    displayCoords.innerHTML = "Geolocation API is not supported by your browser.";
  }
}

function showPosition(position) {
  displayCoords.innerHTML = "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude;
  console.log("Latitude  is: " + position.coords.latitude);
  console.log("Longitude is: " + position.coords.longitude);
  console.log("Longitude is: " + position.coords.longitude);
}

function errorPosition(error) {
  var info = "Error during gelocation: ";
  
  switch (error.code) {
    case error.TIMEOUT:
      info += "The request to get user location timed out.";
      break;
    case error.PERMISSION_DENIED:
      info += "User denied the request for Geolcation.";
      break;
    case error.POSITION_UNAVAILABLE:
      info += "Location information is unavailable.";
      break;
    case error.UKNOWN_ERROR:
      info += "An uknown error occured.";
      break;
  }
  console.log(info);
}

$("#remove-location").on("click", function removePosition(){
  displayCoords.innerHTML = "";
});
