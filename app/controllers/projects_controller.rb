class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @languages = Language.pluck(:name)
    @projects = policy_scope(Project)#.includes(:project_languages)
    if params[:language].present?
      @projects = @projects.joins(project_languages: :language).where(languages: { name: params[:language] })
    end
    if params[:sort].present?
      @projects = @projects.order(start_date: params[:sort])
    end
  end

  def show
    # @project = Project.find(params[:id])
    @chatroom = Chatroom.new
    @request_participation = @project.participations.find_by(user: current_user)
    @features = @project.features
    @participation = Participation.new
  end

  def edit
    # @project = Project.find(params[:id])
    @features = @project.features
    @feature = Feature.new
    @project.features.build
  end

  def update
    # @project = Project.find(params[:id])
    @project.assign_attributes(params_project)
    @project.user = current_user
    @project.save

    redirect_to project_path
  end

  def new
    @user = current_user
    @languages = Language.all
    @project = Project.new
    @project.features.build
    authorize @project
  end

  def create #on créé un nouveau projet / une participation pour le current_user et des project_languages
    @project = Project.new(params_project)
    authorize @project
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
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
    params.require(:project).permit(
      :title, :description,
      :github_repository, :trello_link,
      :start_date, :website_link,
      :tag, :tag_line,
      photos: [],
      features_attributes: [
        :name, :description, :id
      ]
    )
  end

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end
end
