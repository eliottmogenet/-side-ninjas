import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "content"]

  connect() {
    console.log(this.contentTarget);
  }

  // refresh(event) {
  //   event.preventDefault();
  //   console.log(event.currentTarget.dataset.id);
  //   fetch(`/chatrooms/${event.currentTarget.dataset.id}`, { headers: { accept: "application/json" } })
  //     .then(response => response.json())
  //     .then((data) => {
  //       console.log(data);
  //     });
  // }

  refresh(event) {
  event.preventDefault();
  fetch(`chatrooms/${event.currentTarget.dataset.id}`)
    .then(response => response.text())
    .then(html => this.contentTarget.innerHTML = html)
  }

}