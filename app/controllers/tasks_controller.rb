class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @tasks = Task.find(task_params)
    @task.save
    redirected_to task_path(@task)

  end

  private

  def task_params
  params.require(:task).permit(:title, :details, :completed)
  end

end
