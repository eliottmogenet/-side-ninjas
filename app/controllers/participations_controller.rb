class ParticipationsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @participation = Participation.new
    authorize @participation
  end

  def create
    @participation = Participation.new(params_participation)
    authorize @participation
    @participation.project = Project.find(params[:project_id])

    @participation.user = current_user
    if @participation.save
      redirect_to projects_path
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

    @participation.accepted = true
    @participation.save
  end


  def refuse
    @participation = Participation.find(params[:id])
    authorize @participation

    @participation.accepted = false
    @participation.save
  end


  private

  def params_participation
    params.require(:participation).permit(:motivation, :work_time)
  end
end
