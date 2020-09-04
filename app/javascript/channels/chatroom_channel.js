import consumer from "./consumer";

const initChatroomCable = () => {

  const chatrooms = document.querySelectorAll('#messages');

  if (chatrooms) {
    chatrooms.forEach((chatroom) => {
      const userId = chatroom.dataset.userId;
      const id = chatroom.dataset.chatroomId;

      consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
        received(data) {
          console.log(data);
          chatroom.insertAdjacentHTML('beforeend', data.message);
          const messages = chatroom.querySelectorAll(".message-container");
          const lastMessage = messages[messages.length - 1]
          if (userId == data.author_id) {
            lastMessage.classList.add('is-author');
          } else {
            lastMessage.classList.remove('is-author');
          }
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
