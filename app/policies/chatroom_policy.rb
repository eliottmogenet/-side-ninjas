class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.chatrooms.all
    end
  end

  def show?
    record.users.include?(user)
  end

  def create?
    true
  end
end
