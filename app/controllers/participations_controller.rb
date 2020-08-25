class ParticipationsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @user = current_user
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(params_participation)
    @user = current_user
    @participation.project = Project.find(params[:project_id])

    @participation.user = @user
    if @participation.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
  end

  private

  def params_participation
    params.require(:participation).permit(:motivation, :work_time)
  end
end
