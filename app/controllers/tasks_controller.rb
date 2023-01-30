class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  # def show
  #   @task = Task.find(params[:id])
  # end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:name))
    @task.save
    if @task.save
      flash[:notice] = "Article was created successfully."
      redirect_to @task
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params.require(:task).permit(:name))
      flash[:notice] = "Article was updated successfully."
      redirect_to @task
    else
      render 'edit'
    end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to 'tasks#daily_index'
  end
  def daily_index
    @tasks = Task.all
  end

end
