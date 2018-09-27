class ProjectController < ApplicationController

  def create
    @dream = Dream.find(params[:dream_id])
    # @dream.projects.create(name: 'hogge', dream_id: 2, project_level: 1, due: 2018-10-07, is_done: 0)
    project_params
    @project = @dream.projects.build(name: @new_project["name"], project_level: @new_project["project_level"], due: @new_project["due"], is_done: @new_project["is_done"])
    # ddddddddddddddd
    # binding.pry
    @project.save
    redirect_to dream_path(@dream)
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    project_params
    if @project.update(@new_project)
      redirect_to dream_path(params[:dream_id])
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to dream_path(params[:dream_id])
  end

  private
    def project_params
      @new_project = params.require(:project).permit(:name, :project_level, :due, :is_done)
    end
end
