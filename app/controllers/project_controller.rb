class ProjectController < ApplicationController

  def create
    @dream = Dream.find(params[:dream_id])
    @dream.projects.create(project_params)
    redirect_to dream_path(@dream)
  end

  private
    def project_params
      params.require(:project).permit(:level, :name, :is_done, :due)
    end 
end
