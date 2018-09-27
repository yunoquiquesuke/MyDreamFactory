class TaskController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    task_params
    @task = @project.tasks.build(name: @new_task["name"], is_done: @new_task["is_done"])
    # ddddddddddddd
    @task.save
    redirect_to dream_path(params[:dream_id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to dream_path(params[:dream_id])
  end

  private
    def task_params
      @new_task = params.require(:task).permit(:name, :is_done)
    end
end
