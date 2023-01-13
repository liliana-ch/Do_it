class TasksController < ApplicationController
  def daily_index
  @tasks = Task.all
  end
end
