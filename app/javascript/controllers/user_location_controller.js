import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-location"
export default class extends Controller {
  connect() {
    navigator.geolocation.getCurrentPosition(this.success, this.error, this.options);
  }

  options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };

  success = (pos) => {
    const crd = pos.coords;

    if (window.localStorage.getItem("user_location_redirect")) return

    if (!window.location.href.includes("?lat=")) {
      window.localStorage.setItem("user_location_redirect","true")
      window.location.replace(window.location.href + `?lat=${crd.latitude}&lng=${crd.longitude}`)
    }

    // console.log('Sua posição atual é:');
    // console.log('Latitude : ' + crd.latitude);
    // console.log('Longitude: ' + crd.longitude);
    // console.log('Mais ou menos ' + crd.accuracy + ' metros.');
  };

  error = (err) => {

    if (window.localStorage.getItem("redirect")) return

    window.location.href = '/profiles/new';
    window.localStorage.setItem("redirect","true")
  };

}
