class TasksController < ApplicationController
  before_filter :login_required
  
  def indexv
    @taskpage = true
    @tasks = Task.all
  end

  def indexe
    @taskpage = true
    @tasks = Task.all
  end
  
  def indexd
    @taskpage = true
    @tasks = Task.all
  end
  
  def show
    @taskpage = true
    @task = Task.find_by(id: params[:id])
    @user = User.find_by(id: @task.user_id)
  end

  def new
    @taskpage = true
  end

  def create
    @taskpage = true
    @task = Task.new
    @task.name = params[:name]
    @task.description = params[:description]
    @task.date = params[:date]
    @task.location = params[:location]
    @task.user_id = params[:user_id]

    if @task.save
      redirect_to "/tasks/#{ @task.id }"
    else
      render 'new'
    end
  end

  def edit
    @taskpage = true
    @task = Task.find_by(id: params[:id])
  end

  def update
    @taskpage = true
    @task = Task.find_by(id: params[:id])
    @task.name = params[:name]
    @task.description = params[:description]
    @task.date = params[:date]
    @task.location = params[:location]
    @task.user_id = params[:user_id]

    if @task.save
      @taskpage = true
      redirect_to "/tasks/#{ @task.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @taskpage = true
    @task = Task.find_by(id: params[:id])
    @task.destroy


    redirect_to "/tasks/indexv"
  end
end
