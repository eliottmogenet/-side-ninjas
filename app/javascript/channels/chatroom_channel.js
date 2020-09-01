import consumer from "./consumer";

const initChatroomCable = () => {

  const chatrooms = document.querySelectorAll('#messages');

  if (chatrooms) {
    chatrooms.forEach((chatroom) => {
      const id = chatroom.dataset.chatroomId;

      consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
        received(data) {
          console.log(data);
          chatroom.insertAdjacentHTML('beforeend', data);
          const messages_forms = document.querySelectorAll('.new_message');
          console.log(messages_forms);
          messages_forms.forEach((form) => {
            form.querySelector('input').value = "";
          })
        }
      });
    })
  }
}

export { initChatroomCable };
