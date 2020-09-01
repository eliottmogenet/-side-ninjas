class DashboardsController < ApplicationController
  #before_action :set_authorization, only: [:index]
  skip_after_action :verify_policy_scoped, only: :index

  def index
    user_participations = current_user.participations
    # @projects = user_participations.map do |participation|
    #   participation.project
    # end
    @participations = current_user.participations
    skip_authorization
  end
end
