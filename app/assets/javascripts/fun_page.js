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

function addItemToLocalStorage() {
  localStorage.setItem("Junior_Web_Developer", "Dillon Downey");
  displayAllLocalStorageItems();
}

function removeItemFromLocalStorage() {
  localStorage.removeItem("Junior_Web_Developer", "Dillon Downey");
  displayAllLocalStorageItems();
}

function clearLocalStorage() {
  localStorage.clear();
  displayAllLocalStorageItems();
}
