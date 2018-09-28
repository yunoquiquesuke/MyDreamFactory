class YetTaskController < ApplicationController
  def create
    @yet_project = YetProject.find(params[:yet_project_id])
    yet_task_params
    @yet_task = @yet_project.yet_tasks.build(name: @new_yet_task["name"], is_done: @new_yet_task["is_done"])
    # ddddddddddddd
    @yet_task.save
    redirect_to yet_dream_path(params[:yet_dream_id])
  end

  def destroy
    @yet_task = YetTask.find(params[:id])
    @yet_task.destroy
    redirect_to yet_dream_path(params[:yet_dream_id])
  end

  private
    def yet_task_params
      @new_yet_task = params.require(:yet_task).permit(:name, :is_done)
    end
end
