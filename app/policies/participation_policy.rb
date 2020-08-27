class ParticipationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  def edit?
    record.admin_users.include?(user)
  end

  def accept?
    record.admin_users.include?(user)
  end

  def refuse?
    record.admin_users.include?(user)
  end
end
