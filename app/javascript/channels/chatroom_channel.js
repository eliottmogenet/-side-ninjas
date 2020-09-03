import consumer from "./consumer";

const initChatroomCable = () => {

  const chatrooms = document.querySelectorAll('#messages');

  if (chatrooms) {
    chatrooms.forEach((chatroom) => {
      const id = chatroom.dataset.chatroomId;

      consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
        received(data) {
          chatroom.insertAdjacentHTML('beforeend', data);
          chatroom.scrollIntoView({behavior: "smooth", block: "end", inline: "nearest"});
          const messages_forms = document.querySelectorAll('.new_message');
          messages_forms.forEach((form) => {
            form.querySelector('input').value = "";
          })
        }
      });
    })
  }
}

export { initChatroomCable };
