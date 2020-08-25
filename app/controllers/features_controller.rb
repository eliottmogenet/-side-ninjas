class FeaturesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @user = current_user
    @feature = Feature.new
  end

  def create
  @project = Project.find(params[:project_id])
  @user = current_user
  @feature = Feature.new(params_project)

  @project.user = @user
  if @project.save
    redirect_to features_path
  else
    render :new
  end
end
