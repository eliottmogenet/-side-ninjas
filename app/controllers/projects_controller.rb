class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    # @languages = Language.pluck(:name)
    @languages = Language.all
    @projects = policy_scope(Project)#.includes(:project_languages)
    # raise

    # array of uniques city names ordered by city name where users have created a project
    @all_cities = User.joins(:projects).order(:city).pluck(:city).uniq

    @all_batch_number = User.joins(:projects).order(:batch_number).pluck(:batch_number).uniq


    if params[:search].present? && params[:search][:language].present?
      @projects = @projects.joins(project_languages: :language).where(languages: { id: params[:search][:language] })
    # raise
    end


    # FILTERING
    # @projects_languages = []
      # params[:search][:language].map do |id_language|
      #   @projects_languages << @projects.joins(project_languages: :language).where(languages: { id: id_language })
      # end

      # params[:search][:language].each do |id_language|
      #   # ["51", "52"]
      #   # id_language = 52
      #   @projects.each do |project|
      #     if project.languages.find_by(id: id_language).nil?
      #       @projects.reject { |pro| pro == project }
      #       # raise
      #     end
      #   end
      # end
    # @language_project = @projects_languages.flatten.uniq
    # raise
    # TODO: filter by city
    if params[:search].present? && params[:search][:user].present?
      @projects = @projects.joins(participations: :user).where(participations: { admin: true, users: { city: params[:search][:user] }})
    end

    if params[:search].present? && params[:search][:batch].present?
      @projects = @projects.joins(participations: :user).where(participations: { admin: true, users: { batch_number: params[:search][:batch] }})
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
