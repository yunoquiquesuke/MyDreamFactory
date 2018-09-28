class YetProjectController < ApplicationController
  def create
    @yet_dream = YetDream.find(params[:yet_dream_id])
    # @dream.projects.create(name: 'hogge', dream_id: 2, project_level: 1, due: 2018-10-07, is_done: 0)
    yet_project_params
    @yet_project = @yet_dream.yet_projects.build(name: @new_yet_project["name"], due: @new_yet_project["due"], is_done: @new_yet_project["is_done"])
    # ddddddddddddddd
    # binding.pry
    @yet_project.save
    redirect_to yet_dream_path(@yet_dream)
  end

  def edit
    @yet_project = YetProject.find(params[:id])
  end

  def update
    @yet_project = YetProject.find(params[:id])
    yet_project_params
    if @yet_project.update(@new_yet_project)
      redirect_to yet_dream_path(params[:yet_dream_id])
    else
      render 'edit'
    end
  end

  def destroy
    @yet_project = YetProject.find(params[:id])
    @yet_project.destroy
    redirect_to yet_dream_path(params[:yet_dream_id])
  end

  private
    def yet_project_params
      @new_yet_project = params.require(:yet_project).permit(:name, :due, :is_done)
    end
end
