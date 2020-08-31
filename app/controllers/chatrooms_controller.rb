class ChatroomsController < ApplicationController

  def index
    @user = current_user
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
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

    redirect_to chatroom_path(@chatroom)
  end

  private

  def params_project
    params.require(:chatroom).permit(:recipient)
  end
end
