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
    notif = Notification.new(category_name: "conversations", category_id: current_user.id)
    user = []
    @chatroom.chatroom_users.each do |chatroom_user|
      user << chatroom_user.user unless chatroom_user.user.id == current_user.id
    end

    # user = @chatroom.users.find { |user| user != current_user }
    # notif.user = user

    notif.user = user.first
    notif.save!


  end
end
