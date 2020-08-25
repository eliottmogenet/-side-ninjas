class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def update?
      user.admin?
    end

    def destroy?
      user.admin?
    end
  end
end
