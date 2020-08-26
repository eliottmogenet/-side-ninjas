class FeaturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user.participations.where(admin: true).map{ |part| part.project}.include?(record.project)
  end

  def destroy?
    user.participations.where(admin: true).map{ |part| part.project}.include?(record.project)
  end

  def create?
    user.participations.where(admin: true).map{ |part| part.project}.include?(record.project)
  end

  def show?
    true
  end

  def index?
    true
  end
end
