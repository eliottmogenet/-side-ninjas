class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.admin_users.include?(user)
  end

  def destroy?
    record.admin_users.include?(user)
  end
end

