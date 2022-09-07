import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    eventId: String,
    userId: String
  }

  connect() {
    console.log("Hello");
  }


  toggle() {
    console.log("Few");
    const url = `/events/${this.eventIdValue}/favorites?user_id=${this.userIdValue}`
    fetch(url, {
      method: "POST",
      headers: {"Accept": "text/plain"}})
      
      if (this.element.classList.contains("far")) {
        this.element.classList.remove("far")
        this.element.classList.add("fas")
      }else {
        this.element.classList.remove("fas")
        this.element.classList.add("far")
      }
      
  }
}
