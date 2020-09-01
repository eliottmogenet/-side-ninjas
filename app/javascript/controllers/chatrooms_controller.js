import { Controller } from "stimulus"
import { initChatroomCable } from "../channels/chatroom_channel"

export default class extends Controller {
  static targets = [ "content"]

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
    const chatroomId = event.currentTarget.dataset.id;
    const chatrooms = document.querySelectorAll('.chatroom-content');
    if (chatrooms) {
      chatrooms.forEach((chatroom) => {
        chatroom.classList.add('d-none');
      })
      const target = document.querySelector(`[data-chatroom-messages="${chatroomId}"]`);
      target.classList.remove('d-none');
    }
    // fetch(`chatrooms/${event.currentTarget.dataset.id}`)
    //   .then(response => response.text())
    //   .then(html => this.contentTarget.innerHTML = html)
    // initChatroomCable();
  }

  post() {

    this.refresh()
  }

}
