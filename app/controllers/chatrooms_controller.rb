class ChatroomsController < ApplicationController
  after_action :delete_notif, only: :index

  def index
    @user = current_user
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    # respond_to do |format|
    #   format.json { render_to_string "chatrooms/show", chatroom: @chatroom }.to_json
    #   format.html
    # end
    render partial: 'show', locals: { chatroom: @chatroom, message: Message.new }, layout: false
  end

  def create
    @chatroom = Chatroom.new
    authorize @chatroom

    @first_chatroom_user = ChatroomUser.new
    @first_chatroom_user.user = current_user
    @first_chatroom_user.chatroom = @chatroom
    @first_chatroom_user.save

    @second_chatroom_user = ChatroomUser.new
    @second_chatroom_user.user = Project.find(params["chatroom"]["project"]).user
    @second_chatroom_user.chatroom = @chatroom
    @second_chatroom_user.save

    # @chatroom.name = Project.find(params["chatroom"]["project"]).user.first_name

    redirect_to user_chatrooms_path(@chatroom)
  end

  private

  def params_project
    params.require(:chatroom).permit(:recipient)
  end

  def delete_notif
    current_user.notifications.where(category_name: "conversations").destroy_all
  end
end
