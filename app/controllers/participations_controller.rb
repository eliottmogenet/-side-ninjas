class ParticipationsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @participation = Participation.new
    authorize @participation
  end

  def create
    @project = Project.find(params[:project_id])
    @participation = Participation.new(params_participation)
    authorize @participation
    @participation.project = Project.find(params[:project_id])

    @participation.user = current_user
    if @participation.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @project = Participation.find(params[:id]).project
    @participation = Participation.find(params[:id])
    authorize @participation
    @participation.destroy

    redirect_to project_path(@project)
  end

  def edit
    @project = Participation.find(params[:id]).project
    @participation = Participation.find(params[:id])
    authorize @participation
  end

  def accept
    @participation = Participation.find(params[:id])
    authorize @participation
    # skip_authorization

    @participation.accepted = true
    @participation.save
    redirect_to project_path(@participation.project)
  end

  def refuse
    @participation = Participation.find(params[:id])
    authorize @participation
    # skip_authorization

    @participation.accepted = false
    @participation.save
    redirect_to project_path(@participation.project)
  end

  private

  def params_participation
    params.require(:participation).permit(:motivation, :work_time)
  end
end
