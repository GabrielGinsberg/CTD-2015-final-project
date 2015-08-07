class EventsController < ApplicationController
  before_filter :login_required
  def indexv
    @eventpage = true
    @user = User.find_by(id: session['user_id'])
    @events = Event.where(user_id: @user.id)
  end

  def indexe
    @eventpage = true
    @user = User.find_by(id: session['user_id'])
    @events = Event.where(user_id: @user.id)
  end
  
  def indexd
    @eventpage = true
    @user = User.find_by(id: session['user_id'])
    @events = Event.where(user_id: @user.id)
  end

  def show
    @eventpage = true
    @event = Event.find_by(id: params[:id])
  end

  def new
    @eventpage = true
  end

  def create
    @eventpage = true
    @event = Event.new
    @event.name = params[:name]
    @event.description = params[:description]
    @event.date = params[:date]
    @event.location = params[:location]
    @event.user_id = params[:user_id]

    if @event.save
      redirect_to "/events/#{ @event.id }"
    else
      render 'new'
    end
  end

  def edit
    @eventpage = true
    @event = Event.find_by(id: params[:id])
  end

  def update
    @eventpage = true
    @event = Event.find_by(id: params[:id])
    @event.name = params[:name]
    @event.description = params[:description]
    @event.date = params[:date]
    @event.location = params[:location]
    @event.user_id = params[:user_id]

    if @event.save
      redirect_to "/events/#{ @event.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @eventpage = true
    @event = Event.find_by(id: params[:id])
    @event.destroy

    redirect_to "/events/indexv"
  end
end