class MessagesController < ApplicationController
  # protect_from_forgery
  # skip_before_action :verify_authenticity_token
  after_action :create_notif, only: :create

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @message
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "chatrooms/chatroom_message", locals: { message: @message })
      )
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def create_notif
    notif = Notification.new(category_name: "conversations", category_id: @chatroom.id)
    notif.user = @chatroom.chatroom_users.find{|user| user.id != current_user.id}.user
    notif.save!
  end
end
