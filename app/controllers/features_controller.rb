class FeaturesController < ApplicationController
  before_action :set_project, only: [:new, :create, :edit, :update]

  def new
    # @project = Project.find(params[:project_id])
    @user = current_user
    @feature = Feature.new
    authorize @feature
  end

  def create
    # @project = Project.find(params[:project_id])
    @user = current_user
    @feature = Feature.new(params_feature)
    @feature.project = @project
    authorize @feature
    if @feature.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    # @project = Project.find(params[:project_id])
    @feature = Feature.new
    authorize @feature
  end

  def update
    # @project = Project.find(params[:project_id])
    @feature = Feature.find(params[:id])
    @feature.update(params_feature)
    authorize @feature
    @feature.save

    redirect_to projects_path(@project)
  end

  def destroy
    @feature = Feature.find(params[:id])
    authorize @feature
    @feature.destroy

    redirect_to projects_path(@project)
  end

  private

  def params_feature
    params.require(:feature).permit(:name, :description)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
end
