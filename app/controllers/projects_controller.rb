class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = policy_scope(Project)
    if params[:language].present?
      @projects = @projects.joins(project_languages: :language).where(languages: { name: params[:language] })
    end
    if params[:sort].present?
      @projects = @projects.order(start_date: params[:sort])
    end
  end

  def show
    # @project = Project.find(params[:id])
    @request_participation = @project.participations.find_by(user: current_user)
    @features = @project.features
  end

  def edit
    # @project = Project.find(params[:id])
    @features = @project.features
    @feature = Feature.new
  end

  def update
    # @project = Project.find(params[:id])
    @project.update(params_project)
    @project.user = current_user
    @project.save

    redirect_to project_path
  end

  def new
    @user = current_user
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(params_project)
    authorize @project

    @project.user = current_user
    if @project.save
      Participation.create(project: @project, user: current_user, admin: true, accepted: true)
      redirect_to projects_path
    else
      render :new
    end
  end

  def destroy
    # @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path(@project)
  end

  private

  def params_project
    params.require(:project).permit(:title, :description, :github_repository, :trello_link, :start_date, :website_link, :tag, :tag_line)
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end
end

