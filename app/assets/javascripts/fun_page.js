// LOCAL STORAGE API JS

var counter = localStorage.getItem("numberOfPageReloads") || 0;
counter++;
localStorage.setItem("numberOfPageReloads", counter);

function getCountValue() {
  document.getElementById("counter").innerHTML = localStorage.numberOfPageReloads;
  console.log(localStorage.numberOfPageReloads);
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

///////////////////////////////////////////////////

// GEO LOCATION API JS

window.onload = function() {
  var startingPosition;
  $("#trip-meter").hide();

  $("#remove-location").on("click", function(){
    $("#trip-meter").hide();
  });

  $("#get-location").on("click", function(){
    $("#trip-meter").show();
  });



  navigator.geolocation.getCurrentPosition(showPosition, showError);

  function showPosition(position) {
    startingPosition = position;
    document.getElementById("starting-latitude").innerHTML = startingPosition.coords.latitude;
    document.getElementById("starting-longitude").innerHTML = startingPosition.coords.longitude;
    document.getElementById("altitude").innerHTML = startingPosition.coords.altitude || "Can't get altitude information.";
  }

  function showError(error) {
    var info = "Error during gelocation: ";

    switch (error.code) {
      case error.TIMEOUT:
      info += "The request to get user location timed out.";
      break;
      case error.PERMISSION_DENIED:
      info += "User denied the request for Geolocation.";
      break;
      case error.POSITION_UNAVAILABLE:
      info += "Location information is unavailable.";
      break;
      case error.UKNOWN_ERROR:
      info += "An uknown error occured.";
      break;
    }
    alert(info);
  }

  // Watch users position and calculate distance between start position and
  // the current position.
  navigator.geolocation.watchPosition(function(position) {
    document.getElementById('current-latitude').innerHTML = position.coords.latitude;
    document.getElementById('current-longitude').innerHTML = position.coords.longitude;
    document.getElementById('distance-travelled').innerHTML =
    calculateDistance(startingPosition.coords.latitude, startingPosition.coords.longitude, position.coords.latitude, position.coords.longitude);
  }, showError,{ enableHighAccuracy:true, maximumAge:300000, timeout:270000 });

  function calculateDistance(lat1, lon1, lat2, lon2) {
    var R = 6371; // km
    var dLat = (lat2 - lat1).toRad();
    var dLon = (lon2 - lon1).toRad();
    var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
            Math.cos(lat1.toRad()) * Math.cos(lat2.toRad()) *
            Math.sin(dLon / 2) * Math.sin(dLon / 2);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    var d = R * c;
    // TODO: convert number into
    return d + " km";
  }
  Number.prototype.toRad = function() {
    return this * Math.PI / 180;
  };


}; // Closes on Window load
/////////////////////////////////////////
function initMap() {
  // Default google maps position
  var centerpos = new google.maps.LatLng(48.579400,7.7519);

  // default options for the google map
  var optionsGmaps = {
    center: centerpos,
    navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    zoom: 15
  };

  // Init map object
  var map = new google.maps.Map(document.getElementById("map"), optionsGmaps);

}
